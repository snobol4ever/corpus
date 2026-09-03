                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 65544
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
                        mov              rdi, rsp
                        add              rdi, 624
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_29_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1_lit_integer_α
.Llit_integer_α_29_0:   .quad            11
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_30_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n2_lit_integer_α
.Llit_integer_α_30_0:   .quad            22
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_31_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n3_lit_integer_α
.Llit_integer_α_31_0:   .quad            33
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n4_lit_integer_α
.Llit_integer_α_32_0:   .quad            44
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_33_0:   .quad            55
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_34_0:   .quad            66
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_35_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n7_lit_integer_α
.Llit_integer_α_35_0:   .quad            77
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n8_make_list_α
.Llit_integer_α_36_0:   .quad            88
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_make_list_bx, @function
n8_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_make_list_α:         mov              r11, 9
                        mov              rax, qword ptr [rsp + 496]
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n9_assign_α
                        .size            n8_make_list_bx, .-n8_make_list_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n10_lit_integer_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_40_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n11_lit_integer_α
.Llit_integer_α_40_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n12_to_α
.Llit_integer_α_41_0:   .quad            2000000
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_to_bx, @function
n12_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              r11, 13
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lto_α_43_0:            mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n27_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n13_assign_α
n12_to_β:               mov              r11, 13
                        inc              qword ptr [rsp + 96];                jmp   .Lto_α_43_0
                        .size            n12_to_bx, .-n12_to_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n14_bound_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_bound_bx, @function
n14_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:            mov              r11, 15
                        mov              qword ptr [rsp + 144], rsp;          jmp   n15_var_ref_α
                        .size            n14_bound_bx, .-n14_bound_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 656]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 280], rax;          jmp   n17_lit_integer_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_51_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n18_coerce_numeric_α
.Llit_integer_α_51_0:   .quad            8
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_coerce_numeric_bx, @function
n18_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              r11, 19
                        mov              eax, dword ptr [rsp + 640]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_53_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_53_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_53_0
.Lcoerce_numeric_α_53_1:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 264], rax;          jmp   n19_binop_α
.Lcoerce_numeric_α_53_0:
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_binop_α
                        .size            n18_coerce_numeric_bx, .-n18_coerce_numeric_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n20_lit_integer_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_55_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n21_coerce_numeric_α
.Llit_integer_α_55_0:   .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_coerce_numeric_bx, @function
n21_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              r11, 22
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_57_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_57_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_57_0
.Lcoerce_numeric_α_57_1:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n22_binop_α
.Lcoerce_numeric_α_57_0:
                        lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_binop_α
                        .size            n21_coerce_numeric_bx, .-n21_coerce_numeric_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              eax, dword ptr [rsp + 224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_58_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   .Lbinop_α_58_7
.Lbinop_α_58_2:         and              edx, 1;                              jz    .Lbinop_α_58_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_58_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_58_4
.Lbinop_α_58_3:         movq             xmm0, rsi
.Lbinop_α_58_4:         cmp              cl, 5;                               je    .Lbinop_α_58_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_58_6
.Lbinop_α_58_5:         movq             xmm1, rdi
.Lbinop_α_58_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 208], 5
                        mov              qword ptr [rsp + 216], rax
.Lbinop_α_58_7:                                                               jmp   n23_subscript_α
.Lbinop_α_58_0:         mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n23_subscript_α
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_subscript_bx, @function
n23_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              r11, 24
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n24_deref_α
                        .size            n23_subscript_bx, .-n23_subscript_bx
                        .type            n24_deref_bx, @function
n24_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_unmark_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n25_assign_α
                        .size            n24_deref_bx, .-n24_deref_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n26_unmark_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_unmark_bx, @function
n26_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:           mov              r11, 27
                        mov              rsp, qword ptr [rsp + 144];          jmp   n12_to_β
                        .size            n26_unmark_bx, .-n26_unmark_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 56], rax;           jmp   n28_call_icon_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_call_icon_bx, @function
n28_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_icon_α:        mov              r11, 29
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn67:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn67]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n28_call_icon_β:        mov              r11, 29;                             jmp   main_ω
                        .size            n28_call_icon_bx, .-n28_call_icon_bx
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
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
