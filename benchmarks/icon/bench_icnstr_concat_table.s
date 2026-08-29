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
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 704
                        mov              rdi, rsp
                        add              rdi, 560
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_string_bx, @function
n0_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_29_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1_assign_α
.Llit_string_α_29_0:    .quad            .Llit_string_α_29_0_s
.Llit_string_α_29_0_s:  .string          ""
                        .size            n0_lit_string_bx, .-n0_lit_string_bx
                        .type            n1_assign_bx, @function
n1_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n2_lit_integer_α
                        .size            n1_assign_bx, .-n1_assign_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_31_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n3_call_icon_α
.Llit_integer_α_31_0:   .quad            0
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_call_icon_bx, @function
n3_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_icon_α:         mov              r11, 4
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lcall_icon_rkfn33:     .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn33]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n5_lit_integer_α
                                                                              jmp   n4_assign_α
n3_call_icon_β:         mov              r11, 4;                              jmp   n5_lit_integer_α
                        .size            n3_call_icon_bx, .-n3_call_icon_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n5_lit_integer_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_35_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_35_0:   .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n7_to_α
.Llit_integer_α_36_0:   .quad            40000
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_to_bx, @function
n7_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:                mov              r11, 8
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
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 112], rax
.Lto_α_38_0:            mov              rax, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 152]
                        cmp              rax, rcx;                            jg    n26_var_α
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   n8_assign_α
n7_to_β:                mov              r11, 8
                        inc              qword ptr [rsp + 112];               jmp   .Lto_α_38_0
                        .size            n7_to_bx, .-n7_to_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n9_bound_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_bound_bx, @function
n9_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_bound_α:             mov              r11, 10
                        mov              qword ptr [rsp + 160], rsp;          jmp   n10_var_α
                        .size            n9_bound_bx, .-n9_bound_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n11_lit_string_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n12_binop_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "x"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              r11, 13
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_assign_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n14_var_ref_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_49_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n16_var_α
.Llit_string_α_49_0:    .quad            .Llit_string_α_49_0_s
.Llit_string_α_49_0_s:  .string          "k"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 328], rax;          jmp   n17_lit_integer_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              r11, 18
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n18_coerce_numeric_α
.Llit_integer_α_52_0:   .quad            97
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_coerce_numeric_bx, @function
n18_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              r11, 19
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_54_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_54_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_54_0
.Lcoerce_numeric_α_54_1:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 312], rax;          jmp   n19_binop_α
.Lcoerce_numeric_α_54_0:
                        lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 304]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_binop_α
                        .size            n18_coerce_numeric_bx, .-n18_coerce_numeric_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_unmark_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n20_binop_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_binop_bx, @function
n20_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              r11, 21
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_subscript_α
                        .size            n20_binop_bx, .-n20_binop_bx
                        .type            n21_subscript_bx, @function
n21_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_subscript_α:        mov              r11, 22
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_unmark_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n22_var_α
                        .size            n21_subscript_bx, .-n21_subscript_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 392], rax;          jmp   n23_assign_var_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_assign_var_bx, @function
n23_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_var_α:       mov              r11, 24
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_unmark_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n24_conjunction_α
                        .size            n23_assign_var_bx, .-n23_assign_var_bx
                        .type            n24_conjunction_bx, @function
n24_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 216], rax;          jmp   n25_unmark_α
n24_conjunction_β:      mov              r11, 25;                             jmp   n25_unmark_α
                        .size            n24_conjunction_bx, .-n24_conjunction_bx
                        .type            n25_unmark_bx, @function
n25_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_unmark_α:           mov              r11, 26
                        mov              rsp, qword ptr [rsp + 160];          jmp   n7_to_β
                        .size            n25_unmark_bx, .-n25_unmark_bx
                        .type            n26_var_bx, @function
n26_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 72], rax;           jmp   n27_unop_α
                        .size            n26_var_bx, .-n26_var_bx
                        .type            n27_unop_bx, @function
n27_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_unop_α:             mov              r11, 28
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n28_call_icon_α
                        .size            n27_unop_bx, .-n27_unop_bx
                        .type            n28_call_icon_bx, @function
n28_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_icon_α:        mov              r11, 29
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_icon_rkfn68:     .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_rkfn68]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
