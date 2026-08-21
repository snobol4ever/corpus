                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__palindrome:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              rdi, rsp
                        add              rdi, 576
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
palindrome_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn39:               .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n3_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_assign_α
n1_call_builtin_icon_β:                                                       jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n4_assign_α
.Lx41_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n5_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n6_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_α:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 72], rax;           jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 88], rax;           jmp   n10_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n10_binop_test_α:       mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 112;                            je    .Lx51_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 112;                            je    .Lx51_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 3;                              jne   .Lx51_2
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx51_2
.Lx51_1:                mov              rax, qword ptr [rsp + 584]
                        mov              rcx, qword ptr [rsp + 600]
                        cmp              rax, rcx;                            jge   n34_lit_string_α
                        mov              rcx, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 48], rcx
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 56], rcx;           jmp   n11_disjunction_α
.Lx51_0:                mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8d, 5
                        lea              r9, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx51_1
                        cmp              eax, 1;                              je    n34_lit_string_α
                                                                              jmp   n11_disjunction_α
.Lx51_2:                mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n34_lit_string_α
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 56], rax;           jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:      mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n23_var_ref_α
n11_disjunction_as:     mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Lx53_0
                                                                              jmp   n12_var_α
.Lx53_0:                                                                      jmp   n12_var_α
n11_disjunction_β:      mov              eax, dword ptr [rsp + 288];          jmp   n12_var_α
n11_disjunction_af:     add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288];          jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 248], rax;          jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n14_coerce_numeric_α
.Lx56_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 5;                              je    .Lx58_1
                        cmp              eax, 3;                              jne   .Lx58_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 3;                              jne   .Lx58_0
.Lx58_1:                mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 232], rax;          jmp   n15_binop_α
.Lx58_0:                lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            mov              eax, dword ptr [rsp + 224]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx59_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   .Lx59_7
.Lx59_2:                and              edx, 1;                              jz    .Lx59_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx59_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx59_4
.Lx59_3:                movq             xmm0, rsi
.Lx59_4:                cmp              ecx, 5;                              je    .Lx59_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx59_6
.Lx59_5:                movq             xmm1, rdi
.Lx59_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 208], 5
                        mov              qword ptr [rsp + 216], rax
.Lx59_7:                                                                      jmp   n16_assign_α
.Lx59_0:                mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n17_var_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 168], rax;          jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n19_coerce_numeric_α
.Lx63_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:   mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 5;                              je    .Lx65_1
                        cmp              eax, 3;                              jne   .Lx65_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              eax, 3;                              jne   .Lx65_0
.Lx65_1:                mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 152], rax;          jmp   n20_binop_α
.Lx65_0:                lea              rdi, [rsp + 592]
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 144]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              eax, dword ptr [rsp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx66_2
                        mov              rax, qword ptr [rsp + 152]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax;          jmp   .Lx66_7
.Lx66_2:                and              edx, 1;                              jz    .Lx66_0
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx66_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx66_4
.Lx66_3:                movq             xmm0, rsi
.Lx66_4:                cmp              ecx, 5;                              je    .Lx66_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx66_6
.Lx66_5:                movq             xmm1, rdi
.Lx66_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 128], 5
                        mov              qword ptr [rsp + 136], rax
.Lx66_7:                                                                      jmp   n21_assign_α
.Lx66_0:                mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n8_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n22_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_conjunction_α:      mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 104], rax;          jmp   n8_var_α
n22_conjunction_β:                                                            jmp   n8_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n24_var_α
n23_var_ref_β:                                                                jmp   n11_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 360], rax;          jmp   n25_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n11_disjunction_af
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n26_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:            mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n11_disjunction_af
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 424], rax;          jmp   n29_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n29_subscript_α:        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n11_disjunction_af
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n30_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_deref_α:            mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n11_disjunction_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n31_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n31_binop_test_α:       mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n11_disjunction_af
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n33_return_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n33_return_α:           mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   palindrome_γ
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 32], 2              # result
                        mov              dword ptr [rsp + 36], 3
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n35_return_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n35_return_α:           mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   palindrome_γ
#-----------------------------------------------------------------------------------------------------------------------
palindrome_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
palindrome_β:
                                                                              jmp   palindrome_ω
#-----------------------------------------------------------------------------------------------------------------------
palindrome_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 648]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
palindrome_ω:
                        mov              rcx, qword ptr [rsp + 656]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
palindrome_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx86_2]
                        lea              rdx, [rip + .Lx86_3];                jmp   FN__palindrome
.Lx86_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx86_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_call_proc_staged_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "racecar"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_string
                        call             palindrome_dcα;                      jmp   .Lx98_2
.Lx98_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx98_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx98_29:               mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx98_240
                        add              rsp, 16;                             jmp   n90_lit_string_α
.Lx98_240:                                                                    jmp   n89_call_builtin_icon_α
n88_call_proc_staged_β:                                                       jmp   n90_lit_string_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd100:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd100]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx99_240
                        add              rsp, 16;                             jmp   n90_lit_string_α
.Lx99_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_call_proc_staged_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_string
                        call             palindrome_dcα;                      jmp   .Lx103_2
.Lx103_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx103_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx103_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx103_240
                        add              rsp, 16;                             jmp   n93_lit_string_α
.Lx103_240:                                                                   jmp   n92_call_builtin_icon_α
n91_call_proc_staged_β:                                                       jmp   n93_lit_string_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd105:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx104_240
                        add              rsp, 16;                             jmp   n93_lit_string_α
.Lx104_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_call_proc_staged_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 16]                      # lit_string
                        call             palindrome_dcα;                      jmp   .Lx108_2
.Lx108_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx108_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx108_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx108_240
                        add              rsp, 16
                        add              rsp, 112;                            jmp   main_ω
.Lx108_240:                                                                   jmp   n95_call_builtin_icon_α
n94_call_proc_staged_β:                                                       jmp   main_ω
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "palindrome"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd110:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd110]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx109_240
                        add              rsp, 16
                        add              rsp, 128;                            jmp   main_ω
.Lx109_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 144;                            jmp   main_γ
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
.Lstartup_pname0:       .string          "palindrome"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__palindrome
                        .quad            palindrome_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            608
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
