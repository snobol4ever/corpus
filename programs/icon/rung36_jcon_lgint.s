                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__compiler:
                        sub              rsp, 992
                        mov              qword ptr [rsp + 968], rcx
                        mov              qword ptr [rsp + 976], rdx
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
compiler_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1_assign_α
.Lx37_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n3_assign_α
.Lx39_0:                .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n4_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n5_assign_α
.Lx41_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 9
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n7_var_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "    a =  "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 776], rax;          jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn47:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n9_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_call_builtin_icon_β:                                                       jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 8
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n10_var_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "    b = "
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 680], rax;          jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn52:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n12_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                                                                              jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 9
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n13_var_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "    c =  "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 584], rax;          jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn57:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n15_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_lit_string_α
n14_call_builtin_icon_β:
                                                                              jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 8
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n16_var_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "a + b = "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 472], rax;          jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 488], rax;          jmp   n18_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 5;                              je    .Lx64_1
                        cmp              eax, 3;                              jne   .Lx64_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 3;                              jne   .Lx64_0
.Lx64_1:                mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 456], rax;          jmp   n19_coerce_numeric_α
.Lx64_0:                lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:   mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 5;                              je    .Lx66_1
                        cmp              eax, 3;                              jne   .Lx66_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 3;                              jne   .Lx66_0
.Lx66_1:                mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 440], rax;          jmp   n20_binop_α
.Lx66_0:                lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              eax, dword ptr [rsp + 448]
                        mov              ecx, dword ptr [rsp + 432]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx67_2
                        mov              rax, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 440]
                        add              rax, rdx
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax;          jmp   .Lx67_7
.Lx67_2:                and              edx, 1;                              jz    .Lx67_0
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdi, qword ptr [rsp + 440]
                        cmp              eax, 5;                              je    .Lx67_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx67_4
.Lx67_3:                movq             xmm0, rsi
.Lx67_4:                cmp              ecx, 5;                              je    .Lx67_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx67_6
.Lx67_5:                movq             xmm1, rdi
.Lx67_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 416], 5
                        mov              qword ptr [rsp + 424], rax
.Lx67_7:                                                                      jmp   n21_call_builtin_icon_α
.Lx67_0:                mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n22_lit_string_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn69:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n22_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                                                                              jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 10
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n23_var_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "b + c =   "
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 312], rax;          jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 328], rax;          jmp   n25_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 5;                              je    .Lx76_1
                        cmp              eax, 3;                              jne   .Lx76_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 3;                              jne   .Lx76_0
.Lx76_1:                mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 296], rax;          jmp   n26_coerce_numeric_α
.Lx76_0:                lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 5;                              je    .Lx78_1
                        cmp              eax, 3;                              jne   .Lx78_0
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 3;                              jne   .Lx78_0
.Lx78_1:                mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 280], rax;          jmp   n27_binop_α
.Lx78_0:                lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              eax, dword ptr [rsp + 288]
                        mov              ecx, dword ptr [rsp + 272]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx79_2
                        mov              rax, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 280]
                        add              rax, rdx
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax;          jmp   .Lx79_7
.Lx79_2:                and              edx, 1;                              jz    .Lx79_0
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdi, qword ptr [rsp + 280]
                        cmp              eax, 5;                              je    .Lx79_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx79_4
.Lx79_3:                movq             xmm0, rsi
.Lx79_4:                cmp              ecx, 5;                              je    .Lx79_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx79_6
.Lx79_5:                movq             xmm1, rdi
.Lx79_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 256], 5
                        mov              qword ptr [rsp + 264], rax
.Lx79_7:                                                                      jmp   n28_call_builtin_icon_α
.Lx79_0:                mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n29_lit_string_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn81:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n29_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_string_α
n28_call_builtin_icon_β:
                                                                              jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 9
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n30_var_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "c + a =  "
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 152], rax;          jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 168], rax;          jmp   n32_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 5;                              je    .Lx88_1
                        cmp              eax, 3;                              jne   .Lx88_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 3;                              jne   .Lx88_0
.Lx88_1:                mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 136], rax;          jmp   n33_coerce_numeric_α
.Lx88_0:                lea              rdi, [rsp + 848]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 128]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n33_coerce_numeric_α:   mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 5;                              je    .Lx90_1
                        cmp              eax, 3;                              jne   .Lx90_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 3;                              jne   .Lx90_0
.Lx90_1:                mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 120], rax;          jmp   n34_binop_α
.Lx90_0:                lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 112]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              eax, dword ptr [rsp + 128]
                        mov              ecx, dword ptr [rsp + 112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx91_2
                        mov              rax, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 120]
                        add              rax, rdx
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   .Lx91_7
.Lx91_2:                and              edx, 1;                              jz    .Lx91_0
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdi, qword ptr [rsp + 120]
                        cmp              eax, 5;                              je    .Lx91_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx91_4
.Lx91_3:                movq             xmm0, rsi
.Lx91_4:                cmp              ecx, 5;                              je    .Lx91_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx91_6
.Lx91_5:                movq             xmm1, rdi
.Lx91_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 96], 5
                        mov              qword ptr [rsp + 104], rax
.Lx91_7:                                                                      jmp   n35_call_builtin_icon_α
.Lx91_0:                mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n36_return_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn93:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n36_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_return_α
n35_call_builtin_icon_β:
                                                                              jmp   n36_return_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   compiler_γ
#-----------------------------------------------------------------------------------------------------------------------
compiler_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
compiler_β:
                                                                              jmp   compiler_ω
#-----------------------------------------------------------------------------------------------------------------------
compiler_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 968]
                        add              rsp, 992;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
compiler_ω:
                        mov              rcx, qword ptr [rsp + 976]
                        add              rsp, 992;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
compiler_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx95_2]
                        lea              rdx, [rip + .Lx95_3];                jmp   FN__compiler
.Lx95_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx95_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__boundaries:
                        sub              rsp, 1136
                        mov              qword ptr [rsp + 1112], rcx
                        mov              qword ptr [rsp + 1120], rdx
                        mov              rdi, rsp
                        add              rdi, 1024
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
boundaries_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 9
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n97_lit_integer_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "minint = "
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n98_assign_α
.Lx138_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n100_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_lit_string_α
n99_call_builtin_icon_β:
                                                                              jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 9
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n101_lit_integer_α
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "maxint = "
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n102_lit_integer_α
.Lx143_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n103_binop_α
.Lx144_0:               .quad            64
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 880]
                        mov              rcx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n105_binop_α
.Lx146_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:           mov              eax, dword ptr [rsp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx147_2
                        mov              rax, qword ptr [rsp + 856]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   .Lx147_7
.Lx147_2:               and              edx, 1;                              jz    .Lx147_0
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx147_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx147_4
.Lx147_3:               movq             xmm0, rsi
.Lx147_4:               cmp              ecx, 5;                              je    .Lx147_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx147_6
.Lx147_5:               movq             xmm1, rdi
.Lx147_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 832], 5
                        mov              qword ptr [rsp + 840], rax
.Lx147_7:                                                                     jmp   n106_assign_α
.Lx147_0:               mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n107_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn150:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n108_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_lit_string_α
n107_call_builtin_icon_β:
                                                                              jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 10
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n109_var_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "-minint = "
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 728], rax;          jmp   n110_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n110_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 5;                              je    .Lx155_1
                        cmp              eax, 3;                              jne   .Lx155_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 3;                              jne   .Lx155_0
.Lx155_1:               mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 712], rax;          jmp   n111_unop_α
.Lx155_0:               lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n111_unop_α:            mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn158:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n113_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_lit_string_α
n112_call_builtin_icon_β:
                                                                              jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 11
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n114_var_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "abs(min) = "
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 600], rax;          jmp   n115_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn163:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n117_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_call_builtin_icon_α
n115_call_builtin_icon_β:
                                                                              jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n117_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_lit_string_α
n116_call_builtin_icon_β:
                                                                              jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 14
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n118_var_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "minint * -1 = "
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 440], rax;          jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n120_coerce_numeric_α
.Lx169_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n120_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 5;                              je    .Lx171_1
                        cmp              eax, 3;                              jne   .Lx171_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 3;                              jne   .Lx171_0
.Lx171_1:               mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 424], rax;          jmp   n121_binop_α
.Lx171_0:               lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_α:           mov              eax, dword ptr [rsp + 416]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx172_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, -1
                        imul             rax, rdx
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   .Lx172_7
.Lx172_2:               and              edx, 1;                              jz    .Lx172_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, -1
                        cmp              eax, 5;                              je    .Lx172_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx172_4
.Lx172_3:               movq             xmm0, rsi
.Lx172_4:               cmp              ecx, 5;                              je    .Lx172_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx172_6
.Lx172_5:               movq             xmm1, rdi
.Lx172_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 400], 5
                        mov              qword ptr [rsp + 408], rax
.Lx172_7:                                                                     jmp   n122_call_builtin_icon_α
.Lx172_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n123_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                                                                              jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 14
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n124_var_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "minint / -1 = "
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 296], rax;          jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n126_coerce_numeric_α
.Lx178_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n126_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 5;                              je    .Lx180_1
                        cmp              eax, 3;                              jne   .Lx180_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 3;                              jne   .Lx180_0
.Lx180_1:               mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 280], rax;          jmp   n127_binop_α
.Lx180_0:               lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n129_lit_string_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn183:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n129_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n129_lit_string_α
n128_call_builtin_icon_β:
                                                                              jmp   n129_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 11
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n130_lit_integer_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "(2^32)^2 = "
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n131_lit_integer_α
.Lx185_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n132_binop_α
.Lx186_0:               .quad            32
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n136_return_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n134_binop_α
.Lx188_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:           mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n136_return_α
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 32]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n136_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_return_α
n135_call_builtin_icon_β:
                                                                              jmp   n136_return_α
#-----------------------------------------------------------------------------------------------------------------------
n136_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   boundaries_γ
#-----------------------------------------------------------------------------------------------------------------------
boundaries_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
boundaries_β:
                                                                              jmp   boundaries_ω
#-----------------------------------------------------------------------------------------------------------------------
boundaries_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1112]
                        add              rsp, 1136;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
boundaries_ω:
                        mov              rcx, qword ptr [rsp + 1120]
                        add              rsp, 1136;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
boundaries_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx193_2]
                        lea              rdx, [rip + .Lx193_3];               jmp   FN__boundaries
.Lx193_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx193_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__fact:
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rcx
                        mov              qword ptr [rsp + 400], rdx
                        mov              rdi, rsp
                        add              rdi, 320
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
fact_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n195_assign_α
.Lx209_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:          mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 232], rax;          jmp   n197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n198_var_α
.Lx213_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n199_to_α
#-----------------------------------------------------------------------------------------------------------------------
n199_to_α:              mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], 3
                        mov              qword ptr [rsp + 280], rax
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 256], rax
.Lx217_0:               mov              rax, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 296]
                        cmp              rax, rcx;                            jg    n204_var_α
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   n200_coerce_numeric_α
n199_to_β:              inc              qword ptr [rsp + 256];               jmp   .Lx217_0
#-----------------------------------------------------------------------------------------------------------------------
n200_coerce_numeric_α:  mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 5;                              je    .Lx219_1
                        cmp              eax, 3;                              jne   .Lx219_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx219_0
.Lx219_1:               mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 216], rax;          jmp   n201_coerce_numeric_α
.Lx219_0:               lea              rdi, [rsp + 320]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n201_coerce_numeric_α:  mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 5;                              je    .Lx221_1
                        cmp              eax, 3;                              jne   .Lx221_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3;                              jne   .Lx221_0
.Lx221_1:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax;          jmp   n202_binop_α
.Lx221_0:               lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           mov              eax, dword ptr [rsp + 208]
                        mov              ecx, dword ptr [rsp + 192]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx222_2
                        mov              rax, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 200]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx222_7
.Lx222_2:               and              edx, 1;                              jz    .Lx222_0
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdi, qword ptr [rsp + 200]
                        cmp              eax, 5;                              je    .Lx222_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx222_4
.Lx222_3:               movq             xmm0, rsi
.Lx222_4:               cmp              ecx, 5;                              je    .Lx222_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx222_6
.Lx222_5:               movq             xmm1, rdi
.Lx222_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx222_7:                                                                     jmp   n203_assign_α
.Lx222_0:               mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n204_var_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n203_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n199_to_β
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n206_var_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "! = "
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 152], rax;          jmp   n207_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 48]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n208_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_return_α
n207_call_builtin_icon_β:
                                                                              jmp   n208_return_α
#-----------------------------------------------------------------------------------------------------------------------
n208_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   fact_γ
#-----------------------------------------------------------------------------------------------------------------------
fact_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fact_β:
                                                                              jmp   fact_ω
#-----------------------------------------------------------------------------------------------------------------------
fact_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 392]
                        add              rsp, 416;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fact_ω:
                        mov              rcx, qword ptr [rsp + 400]
                        add              rsp, 416;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fact_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx232_2]
                        lea              rdx, [rip + .Lx232_3];               jmp   FN__fact
.Lx232_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx232_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__fib:
                        sub              rsp, 704
                        mov              qword ptr [rsp + 680], rcx
                        mov              qword ptr [rsp + 688], rdx
                        mov              rdi, rsp
                        add              rdi, 512
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
fib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n234_assign_α
.Lx260_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n234_assign_α:          mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n235_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n236_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n237_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n238_var_α
.Lx264_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n239_to_α
#-----------------------------------------------------------------------------------------------------------------------
n239_to_α:              mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 224], rax
.Lx268_0:               mov              rax, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 264]
                        cmp              rax, rcx;                            jg    n254_lit_string_α
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   n240_assign_α
n239_to_β:              inc              qword ptr [rsp + 224];               jmp   .Lx268_0
#-----------------------------------------------------------------------------------------------------------------------
n240_assign_α:          mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n241_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n241_bound_α:           mov              qword ptr [rsp + 272], rsp;          jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 440], rax;          jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 456], rax;          jmp   n244_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 5;                              je    .Lx277_1
                        cmp              eax, 3;                              jne   .Lx277_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 3;                              jne   .Lx277_0
.Lx277_1:               mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n245_coerce_numeric_α
.Lx277_0:               lea              rdi, [rsp + 560]
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n245_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:  mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 5;                              je    .Lx279_1
                        cmp              eax, 3;                              jne   .Lx279_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 3;                              jne   .Lx279_0
.Lx279_1:               mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 408], rax;          jmp   n246_binop_α
.Lx279_0:               lea              rdi, [rsp + 544]
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n246_binop_α:           mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx280_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 408]
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx280_7
.Lx280_2:               and              edx, 1;                              jz    .Lx280_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 408]
                        cmp              eax, 5;                              je    .Lx280_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx280_4
.Lx280_3:               movq             xmm0, rsi
.Lx280_4:               cmp              ecx, 5;                              je    .Lx280_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx280_6
.Lx280_5:               movq             xmm1, rdi
.Lx280_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx280_7:                                                                     jmp   n247_assign_α
.Lx280_0:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n248_var_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n247_assign_α:          mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 376], rax;          jmp   n249_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_α:          mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n250_var_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 360], rax;          jmp   n251_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n252_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n252_conjunction_α:     mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n253_unmark_α
n252_conjunction_β:                                                           jmp   n253_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n253_unmark_α:          mov              rsp, qword ptr [rsp + 272];          jmp   n239_to_β
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n255_var_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "F("
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 4
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n257_var_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 184], rax;          jmp   n258_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn298:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n259_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_return_α
n258_call_builtin_icon_β:
                                                                              jmp   n259_return_α
#-----------------------------------------------------------------------------------------------------------------------
n259_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   fib_γ
#-----------------------------------------------------------------------------------------------------------------------
fib_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fib_β:
                                                                              jmp   fib_ω
#-----------------------------------------------------------------------------------------------------------------------
fib_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 680]
                        add              rsp, 704;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fib_ω:
                        mov              rcx, qword ptr [rsp + 688]
                        add              rsp, 704;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fib_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx300_2]
                        lea              rdx, [rip + .Lx300_3];               jmp   FN__fib
.Lx300_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx300_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__power:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
power_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n302_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n303_var_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax;          jmp   n304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n305_var_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n307_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n307_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx323_1
                        cmp              eax, 3;                              jne   .Lx323_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx323_0
.Lx323_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n308_coerce_numeric_α
.Lx323_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n308_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:  mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx325_1
                        cmp              eax, 3;                              jne   .Lx325_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx325_0
.Lx325_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 248], rax;          jmp   n309_binop_α
.Lx325_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n309_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n311_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n310_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn328:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n311_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_return_α
n310_call_builtin_icon_β:
                                                                              jmp   n311_return_α
#-----------------------------------------------------------------------------------------------------------------------
n311_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   power_γ
#-----------------------------------------------------------------------------------------------------------------------
power_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
power_β:
                                                                              jmp   power_ω
#-----------------------------------------------------------------------------------------------------------------------
power_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 360]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
power_ω:
                        mov              rcx, qword ptr [rsp + 368]
                        add              rsp, 384;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
power_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx330_2]
                        lea              rdx, [rip + .Lx330_3];               jmp   FN__power
.Lx330_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx330_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__impower:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
impower_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n332_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n333_var_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 200], rax;          jmp   n334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 3
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n335_var_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 344], rax;          jmp   n337_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n337_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx354_1
                        cmp              eax, 3;                              jne   .Lx354_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx354_0
.Lx354_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n338_coerce_numeric_α
.Lx354_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 304]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n338_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n338_coerce_numeric_α:  mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx356_1
                        cmp              eax, 3;                              jne   .Lx356_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx356_0
.Lx356_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n339_binop_α
.Lx356_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 288]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n339_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n339_binop_α:           mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n342_return_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n340_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn359:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n342_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n341_call_builtin_icon_α
n340_call_builtin_icon_β:
                                                                              jmp   n342_return_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn361:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn361]
                        lea              rsi, [rsp + 64]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n342_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n342_return_α
n341_call_builtin_icon_β:
                                                                              jmp   n342_return_α
#-----------------------------------------------------------------------------------------------------------------------
n342_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   impower_γ
#-----------------------------------------------------------------------------------------------------------------------
impower_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
impower_β:
                                                                              jmp   impower_ω
#-----------------------------------------------------------------------------------------------------------------------
impower_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
impower_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
impower_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx363_2]
                        lea              rdx, [rip + .Lx363_3];               jmp   FN__impower
.Lx363_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx363_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__minpower:
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rcx
                        mov              qword ptr [rsp + 816], rdx
                        mov              rdi, rsp
                        add              rdi, 736
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
minpower_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:     mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n365_lit_integer_α
.Lx392_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n366_binop_α
.Lx393_0:               .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:           mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n376_var_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 648], rax;          jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n369_lit_integer_α
.Lx397_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n370_to_α
.Lx398_0:               .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n370_to_α:              mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 688], rax
.Lx400_0:               mov              rax, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jg    n376_var_α
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   n371_assign_α
n370_to_β:              inc              qword ptr [rsp + 688];               jmp   .Lx400_0
#-----------------------------------------------------------------------------------------------------------------------
n371_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n372_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n372_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx403_1
                        cmp              eax, 3;                              jne   .Lx403_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 3;                              jne   .Lx403_0
.Lx403_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 632], rax;          jmp   n373_coerce_numeric_α
.Lx403_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n373_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n373_coerce_numeric_α:  mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 5;                              je    .Lx405_1
                        cmp              eax, 3;                              jne   .Lx405_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx405_0
.Lx405_1:               mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax;          jmp   n374_binop_α
.Lx405_0:               lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 608]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n374_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n374_binop_α:           mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n376_var_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n375_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n375_binop_test_α:      mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 112;                            je    .Lx407_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 112;                            je    .Lx407_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 3;                              jne   .Lx407_2
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx407_2
.Lx407_1:               mov              rax, qword ptr [rsp + 552]
                        mov              rcx, qword ptr [rsp + 600]
                        cmp              rax, rcx;                            jg    n370_to_β
                        mov              rcx, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rcx
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rcx;          jmp   n376_var_α
.Lx407_0:               mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8d, 6
                        lea              r9, [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx407_1
                        cmp              eax, 1;                              je    n370_to_β
                                                                              jmp   n376_var_α
.Lx407_2:               mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n370_to_β
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax;          jmp   n376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n378_call_builtin_icon_α
.Lx410_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n378_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn412:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    minpower_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_lit_string_α
n378_call_builtin_icon_β:
                                                                              jmp   minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 2
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n380_var_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          " ^"
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 328], rax;          jmp   n381_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n382_call_builtin_icon_α
.Lx416_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn418:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn418]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    minpower_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n383_lit_string_α
n382_call_builtin_icon_β:
                                                                              jmp   minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 2
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n384_var_α
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          " ="
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n385_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 504], rax;          jmp   n386_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n386_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx425_1
                        cmp              eax, 3;                              jne   .Lx425_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 3;                              jne   .Lx425_0
.Lx425_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n387_coerce_numeric_α
.Lx425_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 464]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n387_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n387_coerce_numeric_α:  mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 5;                              je    .Lx427_1
                        cmp              eax, 3;                              jne   .Lx427_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx427_0
.Lx427_1:               mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 456], rax;          jmp   n388_binop_α
.Lx427_0:               lea              rdi, [rsp + 736]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n388_binop_α:           mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    minpower_ω
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n390_call_builtin_icon_α
.Lx429_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn431:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    minpower_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_call_builtin_icon_α
n390_call_builtin_icon_β:
                                                                              jmp   minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn433:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rsp + 48]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    minpower_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   minpower_γ
n391_call_builtin_icon_β:
                                                                              jmp   minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
minpower_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
minpower_β:
                                                                              jmp   minpower_ω
#-----------------------------------------------------------------------------------------------------------------------
minpower_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 808]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
minpower_ω:
                        mov              rcx, qword ptr [rsp + 816]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
minpower_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx434_2]
                        lea              rdx, [rip + .Lx434_3];               jmp   FN__minpower
.Lx434_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx434_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__bigexp:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              rdi, rsp
                        add              rdi, 832
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
bigexp_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n436_keyword_assign_α
.Lx470_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n436_keyword_assign_α:  mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n437_lit_string_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 11
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n438_var_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "       v = "
#-----------------------------------------------------------------------------------------------------------------------
n438_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n439_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn476:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rsp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n440_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_disjunction_α
n439_call_builtin_icon_β:
                                                                              jmp   n440_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n440_disjunction_α:     mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n464_lit_integer_α
n440_disjunction_as:    mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx478_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n441_assign_α
.Lx478_0:               cmp              eax, 1;                              jne   .Lx478_1
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax;           jmp   n441_assign_α
.Lx478_1:                                                                     jmp   n441_assign_α
n440_disjunction_β:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n466_to_β
                                                                              jmp   n460_to_β
n440_disjunction_af:    add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n458_lit_integer_α
                                                                              jmp   n467_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n441_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n442_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n442_bound_α:           mov              qword ptr [rsp + 288], rsp;          jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 488], rax;          jmp   n444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n445_call_builtin_icon_α
.Lx484_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn486:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn486]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n457_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_lit_string_α
n445_call_builtin_icon_β:
                                                                              jmp   n457_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 7
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n447_disjunction_α
.Lx487_0:               .quad            .Lx487_0_s
.Lx487_0_s:             .string          " ^ v = "
#-----------------------------------------------------------------------------------------------------------------------
n447_disjunction_α:     mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              dword ptr [rsp + 544], 0;            jmp   n452_var_α
n447_disjunction_as:    mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              jne   .Lx489_0
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax;          jmp   n448_call_builtin_icon_α
.Lx489_0:               cmp              eax, 1;                              jne   .Lx489_1
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 536], rax;          jmp   n448_call_builtin_icon_α
.Lx489_1:                                                                     jmp   n448_call_builtin_icon_α
n447_disjunction_β:     mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              je    n447_disjunction_af
                                                                              jmp   n447_disjunction_af
n447_disjunction_af:    add              dword ptr [rsp + 544], 1
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 1;                              je    n449_lit_string_α
                                                                              jmp   n457_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n448_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn491:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn491]
                        lea              rsi, [rsp + 352]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n447_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_unmark_α
n448_call_builtin_icon_β:
                                                                              jmp   n447_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:      mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 6
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n450_keyword_icon_α
n449_lit_string_β:                                                            jmp   n447_disjunction_af
.Lx492_0:               .quad            .Lx492_0_s
.Lx492_0_s:             .string          "error "
#-----------------------------------------------------------------------------------------------------------------------
n450_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n447_disjunction_af
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n451_binop_α
n450_keyword_icon_β:                                                          jmp   n447_disjunction_af
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_disjunction_as
n451_binop_β:                                                                 jmp   n447_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n452_var_α:             mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 616], rax;          jmp   n453_var_α
n452_var_β:                                                                   jmp   n447_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 632], rax;          jmp   n454_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n454_coerce_numeric_α:  mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 5;                              je    .Lx500_1
                        cmp              eax, 3;                              jne   .Lx500_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx500_0
.Lx500_1:               mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 600], rax;          jmp   n455_coerce_numeric_α
.Lx500_0:               lea              rdi, [rsp + 832]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 592]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n455_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx502_1
                        cmp              eax, 3;                              jne   .Lx502_0
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 3;                              jne   .Lx502_0
.Lx502_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n456_binop_α
.Lx502_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 832]
                        lea              rdx, [rsp + 576]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n456_binop_α:           mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n447_disjunction_af
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_disjunction_as
n456_binop_β:                                                                 jmp   n447_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n457_unmark_α:          mov              rsp, qword ptr [rsp + 288];          jmp   n440_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n459_lit_integer_α
n458_lit_integer_β:                                                           jmp   n440_disjunction_af
.Lx506_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:     mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n460_to_α
.Lx507_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n460_to_α:              mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 224], rax
.Lx509_0:               mov              rax, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 264]
                        cmp              rax, rcx;                            jg    n440_disjunction_af
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax;          jmp   n461_lit_real_α
n460_to_β:              inc              qword ptr [rsp + 224];               jmp   .Lx509_0
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_real_α:        mov              qword ptr [rsp + 272], 5             # result
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n462_coerce_numeric_α
.Lx510_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n462_coerce_numeric_α:  mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5;                              je    .Lx512_1
                        cmp              eax, 3;                              jne   .Lx512_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx512_0
.Lx512_1:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n463_binop_α
.Lx512_0:               lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n463_binop_α:           mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n440_disjunction_af
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_disjunction_as
n463_binop_β:                                                                 jmp   n440_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_integer_α:     mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n465_lit_integer_α
n464_lit_integer_β:                                                           jmp   n440_disjunction_af
.Lx514_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_integer_α:     mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n466_to_α
.Lx515_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n466_to_α:              mov              rdi, qword ptr [rsp + 144]
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
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 128], rax
.Lx517_0:               mov              rax, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jg    n440_disjunction_af
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   n440_disjunction_as
n466_to_β:              inc              qword ptr [rsp + 128];               jmp   .Lx517_0
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:     mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n468_keyword_assign_α
.Lx518_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n468_keyword_assign_α:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n469_return_α
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n469_return_α
#-----------------------------------------------------------------------------------------------------------------------
n469_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   bigexp_γ
#-----------------------------------------------------------------------------------------------------------------------
bigexp_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
bigexp_β:
                                                                              jmp   bigexp_ω
#-----------------------------------------------------------------------------------------------------------------------
bigexp_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 904]
                        add              rsp, 928;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bigexp_ω:
                        mov              rcx, qword ptr [rsp + 912]
                        add              rsp, 928;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bigexp_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx521_2]
                        lea              rdx, [rip + .Lx521_3];               jmp   FN__bigexp
.Lx521_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx521_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__mersenne:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
mersenne_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n523_var_α
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "M("
#-----------------------------------------------------------------------------------------------------------------------
n523_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n524_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 4
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n525_lit_integer_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n526_var_α
.Lx538_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n526_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n527_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n527_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx542_1
                        cmp              eax, 3;                              jne   .Lx542_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx542_0
.Lx542_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n528_binop_α
.Lx542_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n528_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n528_binop_α:           mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n533_return_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n529_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n530_coerce_numeric_α
.Lx544_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n530_coerce_numeric_α:  mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 5;                              je    .Lx546_1
                        cmp              eax, 3;                              jne   .Lx546_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 3;                              jne   .Lx546_0
.Lx546_1:               mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax;          jmp   n531_binop_α
.Lx546_0:               lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n531_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n531_binop_α:           mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx547_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx547_7
.Lx547_2:               and              edx, 1;                              jz    .Lx547_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx547_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx547_4
.Lx547_3:               movq             xmm0, rsi
.Lx547_4:               cmp              ecx, 5;                              je    .Lx547_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx547_6
.Lx547_5:               movq             xmm1, rdi
.Lx547_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx547_7:                                                                     jmp   n532_call_builtin_icon_α
.Lx547_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n533_return_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n532_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn549:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn549]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n533_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n533_return_α
n532_call_builtin_icon_β:
                                                                              jmp   n533_return_α
#-----------------------------------------------------------------------------------------------------------------------
n533_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   mersenne_γ
#-----------------------------------------------------------------------------------------------------------------------
mersenne_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mersenne_β:
                                                                              jmp   mersenne_ω
#-----------------------------------------------------------------------------------------------------------------------
mersenne_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 328]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mersenne_ω:
                        mov              rcx, qword ptr [rsp + 336]
                        add              rsp, 352;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mersenne_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx551_2]
                        lea              rdx, [rip + .Lx551_3];               jmp   FN__mersenne
.Lx551_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx551_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__perfect:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
perfect_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n552_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 2
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n553_var_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          "P("
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 4
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n555_lit_integer_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_integer_α:     mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n556_var_α
.Lx578_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n556_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n557_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n557_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx582_1
                        cmp              eax, 3;                              jne   .Lx582_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx582_0
.Lx582_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n558_binop_α
.Lx582_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n558_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n558_binop_α:           mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n573_return_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n559_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n559_lit_integer_α:     mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n560_coerce_numeric_α
.Lx584_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n560_coerce_numeric_α:  mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 5;                              je    .Lx586_1
                        cmp              eax, 3;                              jne   .Lx586_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3;                              jne   .Lx586_0
.Lx586_1:               mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n561_binop_α
.Lx586_0:               lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n561_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n561_binop_α:           mov              eax, dword ptr [rsp + 240]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx587_2
                        mov              rax, qword ptr [rsp + 248]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax;          jmp   .Lx587_7
.Lx587_2:               and              edx, 1;                              jz    .Lx587_0
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx587_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx587_4
.Lx587_3:               movq             xmm0, rsi
.Lx587_4:               cmp              ecx, 5;                              je    .Lx587_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx587_6
.Lx587_5:               movq             xmm1, rdi
.Lx587_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 224], 5
                        mov              qword ptr [rsp + 232], rax
.Lx587_7:                                                                     jmp   n562_lit_integer_α
.Lx587_0:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n573_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n562_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_integer_α:     mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n563_var_α
.Lx588_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n563_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n564_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n565_coerce_numeric_α
.Lx591_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n565_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx593_1
                        cmp              eax, 3;                              jne   .Lx593_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx593_0
.Lx593_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n566_binop_α
.Lx593_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n566_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n566_binop_α:           mov              eax, dword ptr [rsp + 400]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx594_2
                        mov              rax, qword ptr [rsp + 408]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx594_7
.Lx594_2:               and              edx, 1;                              jz    .Lx594_0
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx594_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx594_4
.Lx594_3:               movq             xmm0, rsi
.Lx594_4:               cmp              ecx, 5;                              je    .Lx594_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx594_6
.Lx594_5:               movq             xmm1, rdi
.Lx594_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx594_7:                                                                     jmp   n567_coerce_numeric_α
.Lx594_0:               mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n573_return_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n567_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n567_coerce_numeric_α:  mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 5;                              je    .Lx596_1
                        cmp              eax, 3;                              jne   .Lx596_0
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 3;                              jne   .Lx596_0
.Lx596_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax;          jmp   n568_binop_α
.Lx596_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n568_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n568_binop_α:           mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n573_return_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n569_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n569_coerce_numeric_α:  mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5;                              je    .Lx599_1
                        cmp              eax, 3;                              jne   .Lx599_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 3;                              jne   .Lx599_0
.Lx599_1:               mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n570_coerce_numeric_α
.Lx599_0:               lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n570_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n570_coerce_numeric_α:  mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 5;                              je    .Lx601_1
                        cmp              eax, 3;                              jne   .Lx601_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx601_0
.Lx601_1:               mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 200], rax;          jmp   n571_binop_α
.Lx601_0:               lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n571_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:           mov              eax, dword ptr [rsp + 208]
                        mov              ecx, dword ptr [rsp + 192]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx602_2
                        mov              rax, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 200]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx602_7
.Lx602_2:               and              edx, 1;                              jz    .Lx602_0
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdi, qword ptr [rsp + 200]
                        cmp              eax, 5;                              je    .Lx602_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx602_4
.Lx602_3:               movq             xmm0, rsi
.Lx602_4:               cmp              ecx, 5;                              je    .Lx602_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx602_6
.Lx602_5:               movq             xmm1, rdi
.Lx602_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx602_7:                                                                     jmp   n572_call_builtin_icon_α
.Lx602_0:               mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n573_return_α
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n572_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn604:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n573_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n573_return_α
n572_call_builtin_icon_β:
                                                                              jmp   n573_return_α
#-----------------------------------------------------------------------------------------------------------------------
n573_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   perfect_γ
#-----------------------------------------------------------------------------------------------------------------------
perfect_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
perfect_β:
                                                                              jmp   perfect_ω
#-----------------------------------------------------------------------------------------------------------------------
perfect_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perfect_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perfect_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx606_2]
                        lea              rdx, [rip + .Lx606_3];               jmp   FN__perfect
.Lx606_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx606_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__tmul:
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 1688], rcx
                        mov              qword ptr [rsp + 1696], rdx
                        mov              rdi, rsp
                        add              rdi, 1472
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
tmul_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_integer_α:     mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n608_assign_α
.Lx680_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n608_assign_α:          mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n609_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n610_assign_α
.Lx682_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n610_assign_α:          mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 248], rax;          jmp   n612_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_real_α:        mov              qword ptr [rsp + 256], 5             # result
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n613_binop_test_α
.Lx686_0:               .quad            4981134201117475473
#-----------------------------------------------------------------------------------------------------------------------
n613_binop_test_α:      mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n673_var_α
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n614_var_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_α:             mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n615_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_integer_α:     mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n616_coerce_numeric_α
.Lx690_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n616_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 5;                              je    .Lx692_1
                        cmp              eax, 3;                              jne   .Lx692_0
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 3;                              jne   .Lx692_0
.Lx692_1:               mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n617_binop_α
.Lx692_0:               lea              rdi, [rsp + 1472]
                        lea              rsi, [rsp + 1424]
                        lea              rdx, [rsp + 1392]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n617_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n617_binop_α:           mov              eax, dword ptr [rsp + 1392]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx693_2
                        mov              rax, qword ptr [rsp + 1400]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1376], 3
                        mov              qword ptr [rsp + 1384], rax;         jmp   .Lx693_7
.Lx693_2:               and              edx, 1;                              jz    .Lx693_0
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx693_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx693_4
.Lx693_3:               movq             xmm0, rsi
.Lx693_4:               cmp              ecx, 5;                              je    .Lx693_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx693_6
.Lx693_5:               movq             xmm1, rdi
.Lx693_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1376], 5
                        mov              qword ptr [rsp + 1384], rax
.Lx693_7:                                                                     jmp   n618_assign_α
.Lx693_0:               mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              rcx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n619_var_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n618_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n618_assign_α:          mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n619_var_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n620_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n620_assign_α:          mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n621_var_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n622_var_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n623_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n623_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 5;                              je    .Lx703_1
                        cmp              eax, 3;                              jne   .Lx703_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx703_0
.Lx703_1:               mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n624_coerce_numeric_α
.Lx703_0:               lea              rdi, [rsp + 1488]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1312]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n624_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n624_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx705_1
                        cmp              eax, 3;                              jne   .Lx705_0
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 3;                              jne   .Lx705_0
.Lx705_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n625_binop_α
.Lx705_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1296]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n625_binop_α:           mov              eax, dword ptr [rsp + 1312]
                        mov              ecx, dword ptr [rsp + 1296]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx706_2
                        mov              rax, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1304]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1280], 3
                        mov              qword ptr [rsp + 1288], rax;         jmp   .Lx706_7
.Lx706_2:               and              edx, 1;                              jz    .Lx706_0
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdi, qword ptr [rsp + 1304]
                        cmp              eax, 5;                              je    .Lx706_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx706_4
.Lx706_3:               movq             xmm0, rsi
.Lx706_4:               cmp              ecx, 5;                              je    .Lx706_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx706_6
.Lx706_5:               movq             xmm1, rdi
.Lx706_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1280], 5
                        mov              qword ptr [rsp + 1288], rax
.Lx706_7:                                                                     jmp   n626_assign_α
.Lx706_0:               mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n627_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n626_assign_α:          mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n627_var_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n628_var_α
#-----------------------------------------------------------------------------------------------------------------------
n628_var_α:             mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n629_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n629_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 5;                              je    .Lx713_1
                        cmp              eax, 3;                              jne   .Lx713_0
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 3;                              jne   .Lx713_0
.Lx713_1:               mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n630_coerce_numeric_α
.Lx713_0:               lea              rdi, [rsp + 1488]
                        lea              rsi, [rsp + 1552]
                        lea              rdx, [rsp + 1232]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n630_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n630_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 5;                              je    .Lx715_1
                        cmp              eax, 3;                              jne   .Lx715_0
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 3;                              jne   .Lx715_0
.Lx715_1:               mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n631_binop_α
.Lx715_0:               lea              rdi, [rsp + 1552]
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1216]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n631_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n631_binop_α:           mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n633_var_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n632_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n632_assign_α:          mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n633_var_α
#-----------------------------------------------------------------------------------------------------------------------
n633_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n634_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n634_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn721:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n641_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_var_α
n634_call_builtin_icon_β:
                                                                              jmp   n641_var_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n636_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn725:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn725]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n641_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n637_coerce_numeric_α
n636_call_builtin_icon_β:
                                                                              jmp   n641_var_α
#-----------------------------------------------------------------------------------------------------------------------
n637_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 5;                              je    .Lx727_1
                        cmp              eax, 3;                              jne   .Lx727_0
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 3;                              jne   .Lx727_0
.Lx727_1:               mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n638_coerce_numeric_α
.Lx727_0:               lea              rdi, [rsp + 1072]
                        lea              rsi, [rsp + 1136]
                        lea              rdx, [rsp + 1056]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n638_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 5;                              je    .Lx729_1
                        cmp              eax, 3;                              jne   .Lx729_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 3;                              jne   .Lx729_0
.Lx729_1:               mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n639_binop_α
.Lx729_0:               lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1072]
                        lea              rdx, [rsp + 1040]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n639_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n639_binop_α:           mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n641_var_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n640_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n640_assign_α:          mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n641_var_α
#-----------------------------------------------------------------------------------------------------------------------
n641_var_α:             mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 984], rax;          jmp   n642_var_α
#-----------------------------------------------------------------------------------------------------------------------
n642_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n643_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n643_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 5;                              je    .Lx737_1
                        cmp              eax, 3;                              jne   .Lx737_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx737_0
.Lx737_1:               mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 968], rax;          jmp   n644_coerce_numeric_α
.Lx737_0:               lea              rdi, [rsp + 1520]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 960]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n644_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n644_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx739_1
                        cmp              eax, 3;                              jne   .Lx739_0
                        mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 3;                              jne   .Lx739_0
.Lx739_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 952], rax;          jmp   n645_binop_α
.Lx739_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1520]
                        lea              rdx, [rsp + 944]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n645_binop_α:           mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n651_disjunction_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n646_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n646_lit_integer_α:     mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n647_coerce_numeric_α
.Lx741_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n647_coerce_numeric_α:  mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 5;                              je    .Lx743_1
                        cmp              eax, 3;                              jne   .Lx743_0
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              eax, 3;                              jne   .Lx743_0
.Lx743_1:               mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 920], rax;          jmp   n648_binop_α
.Lx743_0:               lea              rdi, [rsp + 928]
                        lea              rsi, [rsp + 1008]
                        lea              rdx, [rsp + 912]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n648_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n648_binop_α:           mov              eax, dword ptr [rsp + 912]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx744_2
                        mov              rax, qword ptr [rsp + 920]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 896], 3
                        mov              qword ptr [rsp + 904], rax;          jmp   .Lx744_7
.Lx744_2:               and              edx, 1;                              jz    .Lx744_0
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx744_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx744_4
.Lx744_3:               movq             xmm0, rsi
.Lx744_4:               cmp              ecx, 5;                              je    .Lx744_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx744_6
.Lx744_5:               movq             xmm1, rdi
.Lx744_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 896], 5
                        mov              qword ptr [rsp + 904], rax
.Lx744_7:                                                                     jmp   n649_call_builtin_icon_α
.Lx744_0:               mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n651_disjunction_α
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n649_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n649_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn746:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn746]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n651_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n650_assign_α
n649_call_builtin_icon_β:
                                                                              jmp   n651_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n650_assign_α:          mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n651_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n651_disjunction_α:     mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n653_var_α
n651_disjunction_as:    mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx749_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax;          jmp   n652_conjunction_α
.Lx749_0:                                                                     jmp   n652_conjunction_α
n651_disjunction_β:     mov              eax, dword ptr [rsp + 304];          jmp   n611_var_α
n651_disjunction_af:    add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304];          jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n652_conjunction_α:     mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 280], rax;          jmp   n611_var_α
n652_conjunction_β:                                                           jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:             mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 808], rax;          jmp   n654_var_α
n653_var_β:                                                                   jmp   n660_var_α
#-----------------------------------------------------------------------------------------------------------------------
n654_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 824], rax;          jmp   n655_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n655_binop_test_α:      mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 112;                            je    .Lx755_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx755_0
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 3;                              jne   .Lx755_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx755_2
.Lx755_1:               mov              rax, qword ptr [rsp + 1512]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jne   n660_var_α
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rcx;          jmp   n656_var_α
.Lx755_0:               mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        lea              r9, [rsp + 784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx755_1
                        cmp              eax, 1;                              je    n660_var_α
                                                                              jmp   n656_var_α
.Lx755_2:               mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n660_var_α
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n656_var_α
#-----------------------------------------------------------------------------------------------------------------------
n656_var_α:             mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 760], rax;          jmp   n657_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_real_α:        mov              qword ptr [rsp + 768], 5             # result
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n658_binop_test_α
.Lx758_0:               .quad            4397347889687374747
#-----------------------------------------------------------------------------------------------------------------------
n658_binop_test_α:      mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n660_var_α
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax;          jmp   n659_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n659_conjunction_α:     mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax;          jmp   n651_disjunction_af
n659_conjunction_β:                                                           jmp   n660_var_α
#-----------------------------------------------------------------------------------------------------------------------
n660_var_α:             mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0;            jmp   n661_var_α
n660_var_β:                                                                   jmp   n651_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n661_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 536], rax;          jmp   n662_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 3
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n663_var_α
.Lx764_0:               .quad            .Lx764_0_s
.Lx764_0_s:             .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n663_var_α:             mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 568], rax;          jmp   n664_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 3
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n665_var_α
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n665_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 600], rax;          jmp   n666_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 3
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n667_var_α
.Lx770_0:               .quad            .Lx770_0_s
.Lx770_0_s:             .string          "\td="
#-----------------------------------------------------------------------------------------------------------------------
n667_var_α:             mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 632], rax;          jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 3
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n669_var_α
.Lx773_0:               .quad            .Lx773_0_s
.Lx773_0_s:             .string          "\te="
#-----------------------------------------------------------------------------------------------------------------------
n669_var_α:             mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 664], rax;          jmp   n670_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n670_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 5
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n671_var_α
.Lx776_0:               .quad            .Lx776_0_s
.Lx776_0_s:             .string          "\terr="
#-----------------------------------------------------------------------------------------------------------------------
n671_var_α:             mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 696], rax;          jmp   n672_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n672_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn780:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn780]
                        lea              rsi, [rsp + 336]
                        mov              edx, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n611_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_disjunction_as
n672_call_builtin_icon_β:
                                                                              jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 3
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n675_var_α
.Lx783_0:               .quad            .Lx783_0_s
.Lx783_0_s:             .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:             mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 184], rax;          jmp   n676_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 3
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n677_var_α
.Lx786_0:               .quad            .Lx786_0_s
.Lx786_0_s:             .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n677_var_α:             mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 216], rax;          jmp   n678_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n678_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn790:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]
                        lea              rsi, [rsp + 48]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    n679_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n679_return_α
n678_call_builtin_icon_β:
                                                                              jmp   n679_return_α
#-----------------------------------------------------------------------------------------------------------------------
n679_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tmul_γ
#-----------------------------------------------------------------------------------------------------------------------
tmul_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tmul_β:
                                                                              jmp   tmul_ω
#-----------------------------------------------------------------------------------------------------------------------
tmul_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1688]
                        add              rsp, 1712;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tmul_ω:
                        mov              rcx, qword ptr [rsp + 1696]
                        add              rsp, 1712;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tmul_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx792_2]
                        lea              rdx, [rip + .Lx792_3];               jmp   FN__tmul
.Lx792_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx792_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__conv:
                        sub              rsp, 1584
                        mov              qword ptr [rsp + 1560], rcx
                        mov              qword ptr [rsp + 1568], rdx
                        mov              rdi, rsp
                        add              rdi, 1360
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
conv_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n793_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n794_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn853:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn853]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n796_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n795_assign_α
n794_call_builtin_icon_β:
                                                                              jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n795_assign_α:          mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n796_var_α
#-----------------------------------------------------------------------------------------------------------------------
n796_var_α:             mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n797_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn858:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn858]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n799_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n798_assign_α
n797_call_builtin_icon_β:
                                                                              jmp   n799_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n798_assign_α:          mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n799_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n799_disjunction_α:     mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              dword ptr [rsp + 928], 0;            jmp   n839_var_α
n799_disjunction_as:    mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 0;                              jne   .Lx861_0
                                                                              jmp   n800_var_α
.Lx861_0:                                                                     jmp   n800_var_α
n799_disjunction_β:     mov              eax, dword ptr [rsp + 928];          jmp   n800_var_α
n799_disjunction_af:    add              dword ptr [rsp + 928], 1
                        mov              eax, dword ptr [rsp + 928];          jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n800_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 904], rax;          jmp   n801_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n801_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn865:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn865]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n803_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n802_assign_α
n801_call_builtin_icon_β:
                                                                              jmp   n803_var_α
#-----------------------------------------------------------------------------------------------------------------------
n802_assign_α:          mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n803_var_α
#-----------------------------------------------------------------------------------------------------------------------
n803_var_α:             mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 840], rax;          jmp   n804_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n804_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn870:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn870]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104;                            je    n806_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n805_assign_α
n804_call_builtin_icon_β:
                                                                              jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n805_assign_α:          mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n807_var_α
#-----------------------------------------------------------------------------------------------------------------------
n807_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 776], rax;          jmp   n808_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n808_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx877_1
                        cmp              eax, 3;                              jne   .Lx877_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 3;                              jne   .Lx877_0
.Lx877_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 744], rax;          jmp   n809_coerce_numeric_α
.Lx877_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 736]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n809_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n809_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 5;                              je    .Lx879_1
                        cmp              eax, 3;                              jne   .Lx879_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx879_0
.Lx879_1:               mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 728], rax;          jmp   n810_binop_α
.Lx879_0:               lea              rdi, [rsp + 1376]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 720]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n810_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n810_binop_α:           mov              eax, dword ptr [rsp + 736]
                        mov              ecx, dword ptr [rsp + 720]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx880_2
                        mov              rax, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 728]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax;          jmp   .Lx880_7
.Lx880_2:               and              edx, 1;                              jz    .Lx880_0
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdi, qword ptr [rsp + 728]
                        cmp              eax, 5;                              je    .Lx880_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx880_4
.Lx880_3:               movq             xmm0, rsi
.Lx880_4:               cmp              ecx, 5;                              je    .Lx880_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx880_6
.Lx880_5:               movq             xmm1, rdi
.Lx880_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 704], 5
                        mov              qword ptr [rsp + 712], rax
.Lx880_7:                                                                     jmp   n811_assign_α
.Lx880_0:               mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n812_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n811_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n811_assign_α:          mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n812_var_α
#-----------------------------------------------------------------------------------------------------------------------
n812_var_α:             mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 680], rax;          jmp   n813_var_α
#-----------------------------------------------------------------------------------------------------------------------
n813_var_α:             mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 696], rax;          jmp   n814_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n814_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 5;                              je    .Lx887_1
                        cmp              eax, 3;                              jne   .Lx887_0
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 3;                              jne   .Lx887_0
.Lx887_1:               mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 664], rax;          jmp   n815_coerce_numeric_α
.Lx887_0:               lea              rdi, [rsp + 1392]
                        lea              rsi, [rsp + 1360]
                        lea              rdx, [rsp + 656]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n815_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n815_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 5;                              je    .Lx889_1
                        cmp              eax, 3;                              jne   .Lx889_0
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 3;                              jne   .Lx889_0
.Lx889_1:               mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 648], rax;          jmp   n816_binop_α
.Lx889_0:               lea              rdi, [rsp + 1360]
                        lea              rsi, [rsp + 1392]
                        lea              rdx, [rsp + 640]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n816_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n816_binop_α:           mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n818_disjunction_α
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n817_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n817_assign_α:          mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n818_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n818_disjunction_α:     mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n822_var_α
n818_disjunction_as:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx893_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   n837_return_α
.Lx893_0:               cmp              eax, 1;                              jne   .Lx893_1
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 40], rax;           jmp   n837_return_α
.Lx893_1:                                                                     jmp   n837_return_α
n818_disjunction_β:     mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n837_return_α
                                                                              jmp   n837_return_α
n818_disjunction_af:    add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n819_lit_string_α
                                                                              jmp   n837_return_α
#-----------------------------------------------------------------------------------------------------------------------
n819_lit_string_α:      mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 9
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n820_var_α
n819_lit_string_β:                                                            jmp   n837_return_α
.Lx894_0:               .quad            .Lx894_0_s
.Lx894_0_s:             .string          "conv ok: "
#-----------------------------------------------------------------------------------------------------------------------
n820_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n821_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n821_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn898:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn898]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n837_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n818_disjunction_as
n821_call_builtin_icon_β:
                                                                              jmp   n837_return_α
#-----------------------------------------------------------------------------------------------------------------------
n822_var_α:             mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 488], rax;          jmp   n823_call_builtin_icon_α
n822_var_β:                                                                   jmp   n818_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n823_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn902:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn902]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n818_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n824_lit_real_α
n823_call_builtin_icon_β:
                                                                              jmp   n818_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n824_lit_real_α:        mov              qword ptr [rsp + 496], 5             # result
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n825_binop_test_α
.Lx903_0:               .quad            4397347889687374747
#-----------------------------------------------------------------------------------------------------------------------
n825_binop_test_α:      mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n818_disjunction_af
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 424], rax;          jmp   n826_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 17
                        mov              rax, qword ptr [rip + .Lx905_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n827_var_α
.Lx905_0:               .quad            .Lx905_0_s
.Lx905_0_s:             .string          "real conv err: n="
#-----------------------------------------------------------------------------------------------------------------------
n827_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n828_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 4
                        mov              rax, qword ptr [rip + .Lx908_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n829_var_α
.Lx908_0:               .quad            .Lx908_0_s
.Lx908_0_s:             .string          " rn="
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:             mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 312], rax;          jmp   n830_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 4
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n831_var_α
.Lx911_0:               .quad            .Lx911_0_s
.Lx911_0_s:             .string          " in="
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 344], rax;          jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 3
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n833_var_α
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          " d="
#-----------------------------------------------------------------------------------------------------------------------
n833_var_α:             mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 376], rax;          jmp   n834_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 3
                        mov              rax, qword ptr [rip + .Lx917_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n835_var_α
.Lx917_0:               .quad            .Lx917_0_s
.Lx917_0_s:             .string          " r="
#-----------------------------------------------------------------------------------------------------------------------
n835_var_α:             mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 408], rax;          jmp   n836_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n836_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn921:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn921]
                        lea              rsi, [rsp + 80]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n837_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n818_disjunction_as
n836_call_builtin_icon_β:
                                                                              jmp   n837_return_α
#-----------------------------------------------------------------------------------------------------------------------
n837_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   conv_γ
#-----------------------------------------------------------------------------------------------------------------------
n838_conjunction_α:                                                           jmp   n799_disjunction_as
n838_conjunction_β:                                                           jmp   n800_var_α
#-----------------------------------------------------------------------------------------------------------------------
n839_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n840_var_α
n839_var_β:                                                                   jmp   n799_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n840_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n841_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n841_binop_test_α:      mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 112;                            je    .Lx928_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx928_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 3;                              jne   .Lx928_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx928_2
.Lx928_1:               mov              rax, qword ptr [rsp + 1384]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    n799_disjunction_af
                        mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1184], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1192], rcx;         jmp   n842_lit_string_α
.Lx928_0:               mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 10
                        lea              r9, [rsp + 1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx928_1
                        cmp              eax, 1;                              je    n799_disjunction_af
                                                                              jmp   n842_lit_string_α
.Lx928_2:               mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n799_disjunction_af
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n842_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_string_α:      mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 16
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n843_var_α
.Lx929_0:               .quad            .Lx929_0_s
.Lx929_0_s:             .string          "str conv err: n="
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n844_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 4
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n845_var_α
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          " sn="
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:             mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n846_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n847_var_α
.Lx935_0:               .quad            .Lx935_0_s
.Lx935_0_s:             .string          " in="
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:             mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n848_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn939:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn939]
                        lea              rsi, [rsp + 976]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n849_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n849_return_α
n848_call_builtin_icon_β:
                                                                              jmp   n849_return_α
#-----------------------------------------------------------------------------------------------------------------------
n849_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   conv_γ
#-----------------------------------------------------------------------------------------------------------------------
conv_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
conv_β:
                                                                              jmp   conv_ω
#-----------------------------------------------------------------------------------------------------------------------
conv_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1560]
                        add              rsp, 1584;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
conv_ω:
                        mov              rcx, qword ptr [rsp + 1568]
                        add              rsp, 1584;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
conv_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx941_2]
                        lea              rdx, [rip + .Lx941_3];               jmp   FN__conv
.Lx941_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx941_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__unops:
                        sub              rsp, 832
                        mov              qword ptr [rsp + 808], rcx
                        mov              qword ptr [rsp + 816], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
unops_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n943_var_α
.Lx970_0:               .quad            .Lx970_0_s
.Lx970_0_s:             .string          "u:  "
#-----------------------------------------------------------------------------------------------------------------------
n943_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 2
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n945_var_α
.Lx973_0:               .quad            .Lx973_0_s
.Lx973_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n946_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n946_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx977_1
                        cmp              eax, 3;                              jne   .Lx977_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx977_0
.Lx977_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 568], rax;          jmp   n947_unop_α
.Lx977_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 560]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n947_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n947_unop_α:            mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n948_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 2
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n949_var_α
.Lx979_0:               .quad            .Lx979_0_s
.Lx979_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 664], rax;          jmp   n950_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn983:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn983]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n955_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n951_var_α
n950_call_builtin_icon_β:
                                                                              jmp   n955_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 744], rax;          jmp   n952_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_integer_α:     mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n953_call_proc_staged_α
.Lx986_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n953_call_proc_staged_α:
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 752]
                        call             compares_dcα;                        jmp   .Lx988_2
.Lx988_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx988_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
.Lx988_29:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    n955_disjunction_α
                                                                              jmp   n954_call_builtin_icon_α
n953_call_proc_staged_β:
                                                                              jmp   n955_disjunction_α
.Lx988_0:               .quad            .Lx988_0_s
.Lx988_0_s:             .string          "compares"
#-----------------------------------------------------------------------------------------------------------------------
n954_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn990:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn990]
                        lea              rsi, [rsp + 368]
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n955_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n955_disjunction_α
n954_call_builtin_icon_β:
                                                                              jmp   n955_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n955_disjunction_α:     mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n956_var_α
n955_disjunction_as:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx992_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   n962_return_α
.Lx992_0:                                                                     jmp   n962_return_α
n955_disjunction_β:     mov              eax, dword ptr [rsp + 48];           jmp   n962_return_α
n955_disjunction_af:    add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48];           jmp   n962_return_α
#-----------------------------------------------------------------------------------------------------------------------
n956_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n957_call_builtin_icon_α
n956_var_β:                                                                   jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n957_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn996:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn996]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n955_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n958_disjunction_α
n957_call_builtin_icon_β:
                                                                              jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n958_disjunction_α:     mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n966_var_α
n958_disjunction_as:    mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx998_0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n959_binop_test_α
.Lx998_0:               cmp              eax, 1;                              jne   .Lx998_1
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n959_binop_test_α
.Lx998_1:                                                                     jmp   n959_binop_test_α
n958_disjunction_β:     mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              je    n955_disjunction_af
                                                                              jmp   n955_disjunction_af
n958_disjunction_af:    add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 1;                              je    n963_var_α
                                                                              jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n959_binop_test_α:      mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 112;                            je    .Lx999_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 112;                            je    .Lx999_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 3;                              jne   .Lx999_2
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 3;                              jne   .Lx999_2
.Lx999_1:               mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 216]
                        cmp              rax, rcx;                            je    n958_disjunction_β
                        mov              rcx, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rcx
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rcx;          jmp   n960_lit_string_α
.Lx999_0:               mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              r8d, 10
                        lea              r9, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx999_1
                        cmp              eax, 1;                              je    n958_disjunction_β
                                                                              jmp   n960_lit_string_α
.Lx999_2:               mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n958_disjunction_β
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax;          jmp   n960_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n960_lit_string_α:      mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 13
                        mov              rax, qword ptr [rip + .Lx1000_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n961_call_builtin_icon_α
.Lx1000_0:              .quad            .Lx1000_0_s
.Lx1000_0_s:            .string          "  abs failure"
#-----------------------------------------------------------------------------------------------------------------------
n961_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1002:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1002]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n962_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n955_disjunction_as
n961_call_builtin_icon_β:
                                                                              jmp   n962_return_α
#-----------------------------------------------------------------------------------------------------------------------
n962_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   unops_γ
#-----------------------------------------------------------------------------------------------------------------------
n963_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n964_coerce_numeric_α
n963_var_β:                                                                   jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n964_coerce_numeric_α:  mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1007_1
                        cmp              eax, 3;                              jne   .Lx1007_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1007_0
.Lx1007_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 328], rax;          jmp   n965_unop_α
.Lx1007_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 320]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n965_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n965_unop_α:            mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n958_disjunction_as
n965_unop_β:                                                                  jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n967_lit_integer_α
n966_var_β:                                                                   jmp   n958_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n967_lit_integer_α:     mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx1011_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n968_binop_test_α
.Lx1011_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n968_binop_test_α:      mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1012_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 112;                            je    .Lx1012_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1012_2
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx1012_2
.Lx1012_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 296]
                        cmp              rax, rcx;                            jle   n958_disjunction_af
                        mov              rcx, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rcx
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rcx;          jmp   n969_var_α
.Lx1012_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 7
                        lea              r9, [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1012_1
                        cmp              eax, 1;                              je    n958_disjunction_af
                                                                              jmp   n969_var_α
.Lx1012_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n958_disjunction_af
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax;          jmp   n969_var_α
#-----------------------------------------------------------------------------------------------------------------------
n969_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n958_disjunction_as
n969_var_β:                                                                   jmp   n955_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
unops_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
unops_β:
                                                                              jmp   unops_ω
#-----------------------------------------------------------------------------------------------------------------------
unops_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 808]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
unops_ω:
                        mov              rcx, qword ptr [rsp + 816]
                        add              rsp, 832;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
unops_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1015_2]
                        lea              rdx, [rip + .Lx1015_3];              jmp   FN__unops
.Lx1015_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1015_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__binops:
                        sub              rsp, 1568
                        mov              qword ptr [rsp + 1544], rcx
                        mov              qword ptr [rsp + 1552], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
binops_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_string_α:     mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 4
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n1017_var_α
.Lx1070_0:              .quad            .Lx1070_0_s
.Lx1070_0_s:            .string          "b:  "
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n1018_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_string_α:     mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 2
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n1019_var_α
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n1020_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n1021_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n1022_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_call_proc_staged_α:
                        lea              rsi, [rsp + 1456]
                        lea              rdx, [rsp + 1472]
                        call             compares_dcα;                        jmp   .Lx1081_2
.Lx1081_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1081_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
.Lx1081_29:             mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104;                            je    n1024_lit_string_α
                                                                              jmp   n1023_call_builtin_icon_α
n1022_call_proc_staged_β:
                                                                              jmp   n1024_lit_string_α
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "compares"
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn1083:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1083]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104;                            je    n1024_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1024_lit_string_α
n1023_call_builtin_icon_β:
                                                                              jmp   n1024_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_lit_string_α:     mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 9
                        mov              rax, qword ptr [rip + .Lx1084_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1025_var_α
.Lx1084_0:              .quad            .Lx1084_0_s
.Lx1084_0_s:            .string          "    +-   "
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n1026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1027_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1027_coerce_numeric_α: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1090_1
                        cmp              eax, 3;                              jne   .Lx1090_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1090_0
.Lx1090_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1028_coerce_numeric_α
.Lx1090_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1072]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1028_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1028_coerce_numeric_α: mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx1092_1
                        cmp              eax, 3;                              jne   .Lx1092_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1092_0
.Lx1092_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1029_binop_α
.Lx1092_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1056]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1029_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_binop_α:          mov              eax, dword ptr [rsp + 1072]
                        mov              ecx, dword ptr [rsp + 1056]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1093_2
                        mov              rax, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1064]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   .Lx1093_7
.Lx1093_2:              and              edx, 1;                              jz    .Lx1093_0
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdi, qword ptr [rsp + 1064]
                        cmp              eax, 5;                              je    .Lx1093_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1093_4
.Lx1093_3:              movq             xmm0, rsi
.Lx1093_4:              cmp              ecx, 5;                              je    .Lx1093_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1093_6
.Lx1093_5:              movq             xmm1, rdi
.Lx1093_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1040], 5
                        mov              qword ptr [rsp + 1048], rax
.Lx1093_7:                                                                    jmp   n1030_lit_string_α
.Lx1093_0:              mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1037_lit_string_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1030_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1030_lit_string_α:     mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 2
                        mov              rax, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n1031_var_α
.Lx1094_0:              .quad            .Lx1094_0_s
.Lx1094_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n1032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n1033_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_coerce_numeric_α: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1100_1
                        cmp              eax, 3;                              jne   .Lx1100_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1100_0
.Lx1100_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n1034_coerce_numeric_α
.Lx1100_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 1168]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1034_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_coerce_numeric_α: mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx1102_1
                        cmp              eax, 3;                              jne   .Lx1102_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1102_0
.Lx1102_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n1035_binop_α
.Lx1102_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1035_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1035_binop_α:          mov              eax, dword ptr [rsp + 1168]
                        mov              ecx, dword ptr [rsp + 1152]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1103_2
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1160]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Lx1103_7
.Lx1103_2:              and              edx, 1;                              jz    .Lx1103_0
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdi, qword ptr [rsp + 1160]
                        cmp              eax, 5;                              je    .Lx1103_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1103_4
.Lx1103_3:              movq             xmm0, rsi
.Lx1103_4:              cmp              ecx, 5;                              je    .Lx1103_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1103_6
.Lx1103_5:              movq             xmm1, rdi
.Lx1103_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Lx1103_7:                                                                    jmp   n1036_call_builtin_icon_α
.Lx1103_0:              mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n1037_lit_string_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1036_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn1105:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1105]
                        lea              rsi, [rsp + 944]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n1037_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1037_lit_string_α
n1036_call_builtin_icon_β:
                                                                              jmp   n1037_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_lit_string_α:     mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 9
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1038_var_α
.Lx1106_0:              .quad            .Lx1106_0_s
.Lx1106_0_s:            .string          "    */%  "
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1040_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1040_coerce_numeric_α: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1112_1
                        cmp              eax, 3;                              jne   .Lx1112_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1112_0
.Lx1112_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1041_coerce_numeric_α
.Lx1112_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1041_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_coerce_numeric_α: mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx1114_1
                        cmp              eax, 3;                              jne   .Lx1114_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1114_0
.Lx1114_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 680], rax;          jmp   n1042_binop_α
.Lx1114_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 672]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1042_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_binop_α:          mov              eax, dword ptr [rsp + 688]
                        mov              ecx, dword ptr [rsp + 672]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1115_2
                        mov              rax, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 680]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 656], 3
                        mov              qword ptr [rsp + 664], rax;          jmp   .Lx1115_7
.Lx1115_2:              and              edx, 1;                              jz    .Lx1115_0
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdi, qword ptr [rsp + 680]
                        cmp              eax, 5;                              je    .Lx1115_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1115_4
.Lx1115_3:              movq             xmm0, rsi
.Lx1115_4:              cmp              ecx, 5;                              je    .Lx1115_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1115_6
.Lx1115_5:              movq             xmm1, rdi
.Lx1115_6:              mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 656], 5
                        mov              qword ptr [rsp + 664], rax
.Lx1115_7:                                                                    jmp   n1043_lit_string_α
.Lx1115_0:              mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n1056_lit_string_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1043_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1043_lit_string_α:     mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 2
                        mov              rax, qword ptr [rip + .Lx1116_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1044_var_α
.Lx1116_0:              .quad            .Lx1116_0_s
.Lx1116_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1044_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1046_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1046_coerce_numeric_α: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1122_1
                        cmp              eax, 3;                              jne   .Lx1122_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1122_0
.Lx1122_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n1047_coerce_numeric_α
.Lx1122_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 784]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1047_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_coerce_numeric_α: mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx1124_1
                        cmp              eax, 3;                              jne   .Lx1124_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1124_0
.Lx1124_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1048_binop_α
.Lx1124_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1048_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1048_binop_α:          mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n1056_lit_string_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1049_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_lit_string_α:     mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx1126_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1050_var_α
.Lx1126_0:              .quad            .Lx1126_0_s
.Lx1126_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1050_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 920], rax;          jmp   n1052_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1052_coerce_numeric_α: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5;                              je    .Lx1132_1
                        cmp              eax, 3;                              jne   .Lx1132_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1132_0
.Lx1132_1:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n1053_coerce_numeric_α
.Lx1132_0:              lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 880]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1053_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1053_coerce_numeric_α: mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 5;                              je    .Lx1134_1
                        cmp              eax, 3;                              jne   .Lx1134_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1134_0
.Lx1134_1:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1054_binop_α
.Lx1134_0:              lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 864]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1054_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_binop_α:          mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              eax, 104;                            je    n1056_lit_string_α
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1055_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1055_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn1137:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rsp + 528]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n1056_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1056_lit_string_α
n1055_call_builtin_icon_β:
                                                                              jmp   n1056_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1056_lit_string_α:     mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 9
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1057_var_α
.Lx1138_0:              .quad            .Lx1138_0_s
.Lx1138_0_s:            .string          "    &|!  "
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1058_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1059_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1059_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn1144:             .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1144]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n1069_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1060_lit_string_α
n1059_call_builtin_icon_β:
                                                                              jmp   n1069_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_string_α:     mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1061_var_α
.Lx1145_0:              .quad            .Lx1145_0_s
.Lx1145_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1061_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1062_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1063_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn1151:             .string          "ior"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1151]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n1069_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1064_lit_string_α
n1063_call_builtin_icon_β:
                                                                              jmp   n1069_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1064_lit_string_α:     mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 2
                        mov              rax, qword ptr [rip + .Lx1152_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n1065_var_α
.Lx1152_0:              .quad            .Lx1152_0_s
.Lx1152_0_s:            .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n1065_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1066_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1066_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1067_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1067_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn1158:             .string          "ixor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1158]
                        lea              rsi, [rsp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n1069_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1068_call_builtin_icon_α
n1067_call_builtin_icon_β:
                                                                              jmp   n1069_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1068_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn1160:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1160]
                        lea              rsi, [rsp + 64]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n1069_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1069_return_α
n1068_call_builtin_icon_β:
                                                                              jmp   n1069_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1069_return_α:         mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   binops_γ
#-----------------------------------------------------------------------------------------------------------------------
binops_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
binops_β:
                                                                              jmp   binops_ω
#-----------------------------------------------------------------------------------------------------------------------
binops_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1544]
                        add              rsp, 1568;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
binops_ω:
                        mov              rcx, qword ptr [rsp + 1552]
                        add              rsp, 1568;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
binops_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1162_2]
                        lea              rdx, [rip + .Lx1162_3];              jmp   FN__binops
.Lx1162_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1162_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__compares:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              rdi, rsp
                        add              rdi, 1152
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
compares_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_string_α:     mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1164_assign_α
.Lx1227_0:              .quad            .Lx1227_0_s
.Lx1227_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n1164_assign_α:         mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n1165_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1165_disjunction_α:    mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n1166_var_α
n1165_disjunction_as:   mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx1230_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax;          jmp   n1175_disjunction_α
.Lx1230_0:                                                                    jmp   n1175_disjunction_α
n1165_disjunction_β:    mov              eax, dword ptr [rsp + 960];          jmp   n1175_disjunction_α
n1165_disjunction_af:   add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960];          jmp   n1175_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1166_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1167_var_α
n1166_var_β:                                                                  jmp   n1165_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1167_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n1168_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1168_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1235_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1235_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1235_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1235_2
.Lx1235_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jge   n1165_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1056], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1064], rcx;         jmp   n1169_var_α
.Lx1235_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        lea              r9, [rsp + 1056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1235_1
                        cmp              eax, 1;                              je    n1165_disjunction_af
                                                                              jmp   n1169_var_α
.Lx1235_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1165_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1169_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1169_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1170_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1170_binop_test_α:     mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1165_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1171_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1171_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n1172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_lit_string_α:     mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 2
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1173_binop_α
.Lx1241_0:              .quad            .Lx1241_0_s
.Lx1241_0_s:            .string          " <"
#-----------------------------------------------------------------------------------------------------------------------
n1173_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1174_assign_α:         mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n1165_disjunction_as
n1174_assign_β:                                                               jmp   n1175_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_disjunction_α:    mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n1176_var_α
n1175_disjunction_as:   mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx1245_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1185_disjunction_α
.Lx1245_0:                                                                    jmp   n1185_disjunction_α
n1175_disjunction_β:    mov              eax, dword ptr [rsp + 784];          jmp   n1185_disjunction_α
n1175_disjunction_af:   add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784];          jmp   n1185_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1176_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1177_var_α
n1176_var_β:                                                                  jmp   n1175_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1177_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 920], rax;          jmp   n1178_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1250_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1250_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1250_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1250_2
.Lx1250_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jg    n1175_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 880], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 888], rcx;          jmp   n1179_var_α
.Lx1250_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 6
                        lea              r9, [rsp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1250_1
                        cmp              eax, 1;                              je    n1175_disjunction_af
                                                                              jmp   n1179_var_α
.Lx1250_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1175_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 888], rax;          jmp   n1179_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1179_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n1180_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_binop_test_α:     mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1175_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1181_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1181_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1182_lit_string_α:     mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lx1256_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n1183_binop_α
.Lx1256_0:              .quad            .Lx1256_0_s
.Lx1256_0_s:            .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n1183_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1184_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1184_assign_α:         mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n1175_disjunction_as
n1184_assign_β:                                                               jmp   n1185_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_disjunction_α:    mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n1186_var_α
n1185_disjunction_as:   mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx1260_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1195_disjunction_α
.Lx1260_0:                                                                    jmp   n1195_disjunction_α
n1185_disjunction_β:    mov              eax, dword ptr [rsp + 608];          jmp   n1195_disjunction_α
n1185_disjunction_af:   add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608];          jmp   n1195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1186_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1187_var_α
n1186_var_β:                                                                  jmp   n1185_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1188_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1188_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1265_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1265_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1265_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1265_2
.Lx1265_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jne   n1185_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 704], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 712], rcx;          jmp   n1189_var_α
.Lx1265_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 9
                        lea              r9, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1265_1
                        cmp              eax, 1;                              je    n1185_disjunction_af
                                                                              jmp   n1189_var_α
.Lx1265_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1185_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1189_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1190_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_binop_test_α:     mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1185_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 664], rax;          jmp   n1192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1192_lit_string_α:     mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 2
                        mov              rax, qword ptr [rip + .Lx1271_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n1193_binop_α
.Lx1271_0:              .quad            .Lx1271_0_s
.Lx1271_0_s:            .string          " ="
#-----------------------------------------------------------------------------------------------------------------------
n1193_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1194_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1194_assign_α:         mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n1185_disjunction_as
n1194_assign_β:                                                               jmp   n1195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1195_disjunction_α:    mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n1196_var_α
n1195_disjunction_as:   mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx1275_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n1205_disjunction_α
.Lx1275_0:                                                                    jmp   n1205_disjunction_α
n1195_disjunction_β:    mov              eax, dword ptr [rsp + 432];          jmp   n1205_disjunction_α
n1195_disjunction_af:   add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432];          jmp   n1205_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1197_var_α
n1196_var_β:                                                                  jmp   n1195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1197_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1198_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1198_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1280_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1280_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1280_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1280_2
.Lx1280_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            je    n1195_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 528], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 536], rcx;          jmp   n1199_var_α
.Lx1280_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 10
                        lea              r9, [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1280_1
                        cmp              eax, 1;                              je    n1195_disjunction_af
                                                                              jmp   n1199_var_α
.Lx1280_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1195_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1199_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 584], rax;          jmp   n1200_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_binop_test_α:     mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1195_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1201_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1202_lit_string_α:     mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 3
                        mov              rax, qword ptr [rip + .Lx1286_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1203_binop_α
.Lx1286_0:              .quad            .Lx1286_0_s
.Lx1286_0_s:            .string          " ~="
#-----------------------------------------------------------------------------------------------------------------------
n1203_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1204_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1204_assign_α:         mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n1195_disjunction_as
n1204_assign_β:                                                               jmp   n1205_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1205_disjunction_α:    mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n1206_var_α
n1205_disjunction_as:   mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx1290_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1215_disjunction_α
.Lx1290_0:                                                                    jmp   n1215_disjunction_α
n1205_disjunction_β:    mov              eax, dword ptr [rsp + 256];          jmp   n1215_disjunction_α
n1205_disjunction_af:   add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256];          jmp   n1215_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1206_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1207_var_α
n1206_var_β:                                                                  jmp   n1205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1207_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1208_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1208_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1295_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1295_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1295_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1295_2
.Lx1295_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jle   n1205_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 352], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 360], rcx;          jmp   n1209_var_α
.Lx1295_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 7
                        lea              r9, [rsp + 352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1295_1
                        cmp              eax, 1;                              je    n1205_disjunction_af
                                                                              jmp   n1209_var_α
.Lx1295_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1205_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1209_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n1210_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1210_binop_test_α:     mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1205_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1211_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1211_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1212_lit_string_α:     mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 2
                        mov              rax, qword ptr [rip + .Lx1301_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n1213_binop_α
.Lx1301_0:              .quad            .Lx1301_0_s
.Lx1301_0_s:            .string          " >"
#-----------------------------------------------------------------------------------------------------------------------
n1213_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1214_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1214_assign_α:         mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n1205_disjunction_as
n1214_assign_β:                                                               jmp   n1215_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1215_disjunction_α:    mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n1216_var_α
n1215_disjunction_as:   mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx1305_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n1225_var_α
.Lx1305_0:                                                                    jmp   n1225_var_α
n1215_disjunction_β:    mov              eax, dword ptr [rsp + 80];           jmp   n1225_var_α
n1215_disjunction_af:   add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80];           jmp   n1225_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1216_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1217_var_α
n1216_var_β:                                                                  jmp   n1215_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1217_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1218_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1218_binop_test_α:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 112;                            je    .Lx1310_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx1310_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx1310_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx1310_2
.Lx1310_1:              mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jl    n1215_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rcx;          jmp   n1219_var_α
.Lx1310_0:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 8
                        lea              r9, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1310_1
                        cmp              eax, 1;                              je    n1215_disjunction_af
                                                                              jmp   n1219_var_α
.Lx1310_2:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1215_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1219_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1219_var_α:            mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1220_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1220_binop_test_α:     mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1215_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1221_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1221_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1222_lit_string_α:     mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 3
                        mov              rax, qword ptr [rip + .Lx1316_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1223_binop_α
.Lx1316_0:              .quad            .Lx1316_0_s
.Lx1316_0_s:            .string          " >="
#-----------------------------------------------------------------------------------------------------------------------
n1223_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1224_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1224_assign_α:         mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1215_disjunction_as
n1224_assign_β:                                                               jmp   n1225_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1225_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1226_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1226_return_α:         mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   compares_γ
#-----------------------------------------------------------------------------------------------------------------------
compares_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
compares_β:
                                                                              jmp   compares_ω
#-----------------------------------------------------------------------------------------------------------------------
compares_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
compares_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
compares_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx1322_2]
                        lea              rdx, [rip + .Lx1322_3];              jmp   FN__compares
.Lx1322_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1322_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__radix:
                        sub              rsp, 1344
                        mov              qword ptr [rsp + 1320], rcx
                        mov              qword ptr [rsp + 1328], rdx
                        mov              rdi, rsp
                        add              rdi, 1136
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
radix_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1323_lit_integer_α:    mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx1375_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1324_lit_integer_α
.Lx1375_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1324_lit_integer_α:    mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx1376_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n1325_binop_α
.Lx1376_0:              .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n1325_binop_α:          mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1327_lit_charset_α
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1326_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1326_assign_α:         mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n1327_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n1327_lit_charset_α:    mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], -1
                        mov              rax, qword ptr [rip + .Lx1379_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1328_lit_charset_α
.Lx1379_0:              .quad            .Lx1379_0_s
.Lx1379_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n1328_lit_charset_α:    mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx1380_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n1329_binop_α
.Lx1380_0:              .quad            .Lx1380_0_s
.Lx1380_0_s:            .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1329_binop_α:          mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1330_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1330_assign_α:         mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n1331_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1331_lit_integer_α:    mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx1383_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n1332_lit_integer_α
.Lx1383_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1332_lit_integer_α:    mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx1384_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1333_to_α
.Lx1384_0:              .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n1333_to_α:             mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 448], rax
.Lx1386_0:              mov              rax, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 488]
                        cmp              rax, rcx;                            jg    n1359_lit_string_α
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   n1334_assign_α
n1333_to_β:             inc              qword ptr [rsp + 448];               jmp   .Lx1386_0
#-----------------------------------------------------------------------------------------------------------------------
n1334_assign_α:         mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n1335_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1335_bound_α:          mov              qword ptr [rsp + 496], rsp;          jmp   n1336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1336_var_α:            mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 712], rax;          jmp   n1337_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1337_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1338_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1338_lit_string_α:     mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx1394_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n1339_binop_α
.Lx1394_0:              .quad            .Lx1394_0_s
.Lx1394_0_s:            .string          "R"
#-----------------------------------------------------------------------------------------------------------------------
n1339_binop_α:          mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1340_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1341_var_α:            mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 936], rax;          jmp   n1342_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1342_subscript_α:      mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 928]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1353_var_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n1343_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1343_deref_α:          mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1353_var_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n1344_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1344_lit_integer_α:    mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx1402_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n1345_lit_integer_α
.Lx1402_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1345_lit_integer_α:    mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx1403_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1346_to_α
.Lx1403_0:              .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n1346_to_α:             mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1008], 3
                        mov              qword ptr [rsp + 1016], rax
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1024], 3
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 992], rax
.Lx1405_0:              mov              rax, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1032]
                        cmp              rax, rcx;                            jg    n1353_var_α
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   n1347_call_builtin_icon_α
n1346_to_β:             inc              qword ptr [rsp + 992];               jmp   .Lx1405_0
#-----------------------------------------------------------------------------------------------------------------------
n1347_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn1407:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1407]
                        lea              rsi, [rsp + 864]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n1346_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1348_binop_α
n1347_call_builtin_icon_β:
                                                                              jmp   n1346_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1348_binop_α:          mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1349_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1349_assign_α:         mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n1350_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1350_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn1411:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1411]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104;                            je    n1346_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1351_binop_test_α
n1350_call_builtin_icon_β:
                                                                              jmp   n1346_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1351_binop_test_α:     mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 112;                            je    .Lx1412_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 112;                            je    .Lx1412_0
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 3;                              jne   .Lx1412_2
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx1412_2
.Lx1412_1:              mov              rax, qword ptr [rsp + 1192]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jge   n1346_to_β
                        mov              rcx, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rcx
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rcx;          jmp   n1352_assign_α
.Lx1412_0:              mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 5
                        lea              r9, [rsp + 688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1412_1
                        cmp              eax, 1;                              je    n1346_to_β
                                                                              jmp   n1352_assign_α
.Lx1412_2:              mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1346_to_β
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n1352_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1352_assign_α:         mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n1353_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1353_var_α:            mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1354_lit_string_α:     mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx1416_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n1355_var_α
.Lx1416_0:              .quad            .Lx1416_0_s
.Lx1416_0_s:            .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n1355_var_α:            mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 680], rax;          jmp   n1356_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1356_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn1420:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1420]
                        lea              rsi, [rsp + 576]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n1358_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1357_conjunction_α
n1356_call_builtin_icon_β:
                                                                              jmp   n1358_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1357_conjunction_α:    mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax;          jmp   n1358_unmark_α
n1357_conjunction_β:                                                          jmp   n1358_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1358_unmark_α:         mov              rsp, qword ptr [rsp + 496];          jmp   n1333_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1359_lit_string_α:     mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 3
                        mov              rax, qword ptr [rip + .Lx1424_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1360_lit_string_α
.Lx1424_0:              .quad            .Lx1424_0_s
.Lx1424_0_s:            .string          "36r"
#-----------------------------------------------------------------------------------------------------------------------
n1360_lit_string_α:     mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx1425_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n1361_lit_integer_α
.Lx1425_0:              .quad            .Lx1425_0_s
.Lx1425_0_s:            .string          "Z"
#-----------------------------------------------------------------------------------------------------------------------
n1361_lit_integer_α:    mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx1426_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n1362_lit_integer_α
.Lx1426_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1362_lit_integer_α:    mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx1427_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n1363_to_α
.Lx1427_0:              .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n1363_to_α:             mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 160], rax
.Lx1429_0:              mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jg    n1374_return_α
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n1364_call_builtin_icon_α
n1363_to_β:             inc              qword ptr [rsp + 160];               jmp   .Lx1429_0
#-----------------------------------------------------------------------------------------------------------------------
n1364_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn1431:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1431]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n1363_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1365_binop_α
n1364_call_builtin_icon_β:
                                                                              jmp   n1363_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1365_binop_α:          mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1366_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1366_assign_α:         mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n1367_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1367_bound_α:          mov              qword ptr [rsp + 208], rsp;          jmp   n1368_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1368_var_α:            mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1369_lit_string_α:     mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 3
                        mov              rax, qword ptr [rip + .Lx1438_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1370_var_α
.Lx1438_0:              .quad            .Lx1438_0_s
.Lx1438_0_s:            .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n1370_var_α:            mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 424], rax;          jmp   n1371_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1371_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn1442:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1442]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n1373_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1372_call_builtin_icon_α
n1371_call_builtin_icon_β:
                                                                              jmp   n1373_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1372_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn1444:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1444]
                        lea              rsi, [rsp + 272]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n1373_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1373_unmark_α
n1372_call_builtin_icon_β:
                                                                              jmp   n1373_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1373_unmark_α:         mov              rsp, qword ptr [rsp + 208];          jmp   n1363_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1374_return_α:         mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   radix_γ
#-----------------------------------------------------------------------------------------------------------------------
radix_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
radix_β:
                                                                              jmp   radix_ω
#-----------------------------------------------------------------------------------------------------------------------
radix_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1320]
                        add              rsp, 1344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
radix_ω:
                        mov              rcx, qword ptr [rsp + 1328]
                        add              rsp, 1344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
radix_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1448_2]
                        lea              rdx, [rip + .Lx1448_3];              jmp   FN__radix
.Lx1448_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1448_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__over:
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rcx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              rdi, rsp
                        add              rdi, 1328
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
over_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1449_disjunction_α:    mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              dword ptr [rsp + 1168], 0;           jmp   n1513_keyword_icon_gen_α
n1449_disjunction_as:   mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              jne   .Lx1519_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n1451_lit_integer_α
.Lx1519_0:                                                                    jmp   n1451_lit_integer_α
n1449_disjunction_β:    mov              eax, dword ptr [rsp + 1168];         jmp   n1451_lit_integer_α
n1449_disjunction_af:   add              dword ptr [rsp + 1168], 1
                        mov              eax, dword ptr [rsp + 1168];         jmp   n1451_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1450_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn1521:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1521]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n1451_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1449_disjunction_as
n1450_call_builtin_icon_β:
                                                                              jmp   n1451_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1451_lit_integer_α:    mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx1522_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1452_assign_α
.Lx1522_0:              .quad            110000
#-----------------------------------------------------------------------------------------------------------------------
n1452_assign_α:         mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1453_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1453_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n1454_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1454_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn1527:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1527]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n1455_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1455_var_α
n1454_call_builtin_icon_β:
                                                                              jmp   n1455_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1455_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n1456_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1456_lit_integer_α:    mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx1530_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1457_lit_integer_α
.Lx1530_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1457_lit_integer_α:    mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx1531_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n1458_binop_α
.Lx1531_0:              .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1458_binop_α:          mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1462_var_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1459_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1459_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1534_1
                        cmp              eax, 3;                              jne   .Lx1534_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 3;                              jne   .Lx1534_0
.Lx1534_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n1460_binop_α
.Lx1534_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 992]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1460_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1460_binop_α:          mov              eax, dword ptr [rsp + 992]
                        mov              ecx, dword ptr [rsp + 1024]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1535_2
                        mov              rax, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1032]
                        add              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lx1535_7
.Lx1535_2:              and              edx, 1;                              jz    .Lx1535_0
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdi, qword ptr [rsp + 1032]
                        cmp              eax, 5;                              je    .Lx1535_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1535_4
.Lx1535_3:              movq             xmm0, rsi
.Lx1535_4:              cmp              ecx, 5;                              je    .Lx1535_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1535_6
.Lx1535_5:              movq             xmm1, rdi
.Lx1535_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lx1535_7:                                                                    jmp   n1461_assign_α
.Lx1535_0:              mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1462_var_α
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1461_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1461_assign_α:         mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1462_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1463_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1463_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn1540:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1540]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n1464_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1464_var_α
n1463_call_builtin_icon_β:
                                                                              jmp   n1464_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1464_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 888], rax;          jmp   n1465_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1465_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1466_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1466_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1546_1
                        cmp              eax, 3;                              jne   .Lx1546_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 3;                              jne   .Lx1546_0
.Lx1546_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1467_coerce_numeric_α
.Lx1546_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 864]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1467_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1467_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1548_1
                        cmp              eax, 3;                              jne   .Lx1548_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 3;                              jne   .Lx1548_0
.Lx1548_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 856], rax;          jmp   n1468_binop_α
.Lx1548_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 848]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1468_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1468_binop_α:          mov              eax, dword ptr [rsp + 864]
                        mov              ecx, dword ptr [rsp + 848]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1549_2
                        mov              rax, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 856]
                        add              rax, rdx
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   .Lx1549_7
.Lx1549_2:              and              edx, 1;                              jz    .Lx1549_0
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdi, qword ptr [rsp + 856]
                        cmp              eax, 5;                              je    .Lx1549_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1549_4
.Lx1549_3:              movq             xmm0, rsi
.Lx1549_4:              cmp              ecx, 5;                              je    .Lx1549_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1549_6
.Lx1549_5:              movq             xmm1, rdi
.Lx1549_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 832], 5
                        mov              qword ptr [rsp + 840], rax
.Lx1549_7:                                                                    jmp   n1469_assign_α
.Lx1549_0:              mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1470_var_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1469_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1469_assign_α:         mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1470_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1470_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1471_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1471_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn1554:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1554]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n1472_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1472_lit_integer_α
n1471_call_builtin_icon_β:
                                                                              jmp   n1472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1472_lit_integer_α:    mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx1555_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1473_assign_α
.Lx1555_0:              .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
n1473_assign_α:         mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1474_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1474_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 744], rax;          jmp   n1475_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1475_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn1560:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1560]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n1476_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1476_var_α
n1475_call_builtin_icon_β:
                                                                              jmp   n1476_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1476_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1477_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1477_lit_integer_α:    mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx1563_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n1478_lit_integer_α
.Lx1563_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1478_lit_integer_α:    mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx1564_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n1479_binop_α
.Lx1564_0:              .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1479_binop_α:          mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1483_var_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1480_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1480_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1567_1
                        cmp              eax, 3;                              jne   .Lx1567_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 3;                              jne   .Lx1567_0
.Lx1567_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 616], rax;          jmp   n1481_binop_α
.Lx1567_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 608]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1481_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1481_binop_α:          mov              eax, dword ptr [rsp + 608]
                        mov              ecx, dword ptr [rsp + 640]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1568_2
                        mov              rax, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 648]
                        add              rax, rdx
                        mov              qword ptr [rsp + 592], 3
                        mov              qword ptr [rsp + 600], rax;          jmp   .Lx1568_7
.Lx1568_2:              and              edx, 1;                              jz    .Lx1568_0
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdi, qword ptr [rsp + 648]
                        cmp              eax, 5;                              je    .Lx1568_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1568_4
.Lx1568_3:              movq             xmm0, rsi
.Lx1568_4:              cmp              ecx, 5;                              je    .Lx1568_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1568_6
.Lx1568_5:              movq             xmm1, rdi
.Lx1568_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 592], 5
                        mov              qword ptr [rsp + 600], rax
.Lx1568_7:                                                                    jmp   n1482_assign_α
.Lx1568_0:              mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1483_var_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1482_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1482_assign_α:         mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1483_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 584], rax;          jmp   n1484_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1484_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn1573:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1573]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n1485_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1485_var_α
n1484_call_builtin_icon_β:
                                                                              jmp   n1485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1485_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1486_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1486_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1487_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1487_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1579_1
                        cmp              eax, 3;                              jne   .Lx1579_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 3;                              jne   .Lx1579_0
.Lx1579_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 488], rax;          jmp   n1488_coerce_numeric_α
.Lx1579_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1488_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1488_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1581_1
                        cmp              eax, 3;                              jne   .Lx1581_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 3;                              jne   .Lx1581_0
.Lx1581_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 472], rax;          jmp   n1489_binop_α
.Lx1581_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 464]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1489_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_binop_α:          mov              eax, dword ptr [rsp + 480]
                        mov              ecx, dword ptr [rsp + 464]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1582_2
                        mov              rax, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 472]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax;          jmp   .Lx1582_7
.Lx1582_2:              and              edx, 1;                              jz    .Lx1582_0
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdi, qword ptr [rsp + 472]
                        cmp              eax, 5;                              je    .Lx1582_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1582_4
.Lx1582_3:              movq             xmm0, rsi
.Lx1582_4:              cmp              ecx, 5;                              je    .Lx1582_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1582_6
.Lx1582_5:              movq             xmm1, rdi
.Lx1582_6:              mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 448], 5
                        mov              qword ptr [rsp + 456], rax
.Lx1582_7:                                                                    jmp   n1490_assign_α
.Lx1582_0:              mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            je    n1491_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1490_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1490_assign_α:         mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1491_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1491_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1492_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1492_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn1587:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1587]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n1493_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1493_lit_integer_α
n1492_call_builtin_icon_β:
                                                                              jmp   n1493_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_lit_integer_α:    mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx1588_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n1494_assign_α
.Lx1588_0:              .quad            18446744073709441616
#-----------------------------------------------------------------------------------------------------------------------
n1494_assign_α:         mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1495_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1495_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1496_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn1593:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1593]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n1497_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1497_var_α
n1496_call_builtin_icon_β:
                                                                              jmp   n1497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1497_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 280], rax;          jmp   n1498_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1498_lit_integer_α:    mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx1596_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n1499_coerce_numeric_α
.Lx1596_0:              .quad            18446744072635809792
#-----------------------------------------------------------------------------------------------------------------------
n1499_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1598_1
                        cmp              eax, 3;                              jne   .Lx1598_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx1598_0
.Lx1598_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1500_binop_α
.Lx1598_0:              lea              rdi, [rsp + 1328]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1500_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1500_binop_α:          mov              eax, dword ptr [rsp + 256]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1599_2
                        mov              rax, qword ptr [rsp + 264]
                        mov              rdx, -1073741824
                        add              rax, rdx
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   .Lx1599_7
.Lx1599_2:              and              edx, 1;                              jz    .Lx1599_0
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdi, -1073741824
                        cmp              eax, 5;                              je    .Lx1599_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1599_4
.Lx1599_3:              movq             xmm0, rsi
.Lx1599_4:              cmp              ecx, 5;                              je    .Lx1599_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1599_6
.Lx1599_5:              movq             xmm1, rdi
.Lx1599_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 240], 5
                        mov              qword ptr [rsp + 248], rax
.Lx1599_7:                                                                    jmp   n1501_assign_α
.Lx1599_0:              mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1502_var_α
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1501_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1501_assign_α:         mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1502_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1502_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 232], rax;          jmp   n1503_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1503_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn1604:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1604]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n1504_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1504_var_α
n1503_call_builtin_icon_β:
                                                                              jmp   n1504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1504_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1505_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1505_lit_integer_α:    mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx1607_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1506_lit_integer_α
.Lx1607_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1506_lit_integer_α:    mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx1608_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n1507_binop_α
.Lx1608_0:              .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1507_binop_α:          mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1511_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1508_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n1508_coerce_numeric_α: mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 5;                              je    .Lx1611_1
                        cmp              eax, 3;                              jne   .Lx1611_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 3;                              jne   .Lx1611_0
.Lx1611_1:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1509_binop_α
.Lx1611_0:              lea              rdi, [rsp + 1328]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 96]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1509_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1509_binop_α:          mov              eax, dword ptr [rsp + 96]
                        mov              ecx, dword ptr [rsp + 128]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx1612_2
                        mov              rax, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 136]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   .Lx1612_7
.Lx1612_2:              and              edx, 1;                              jz    .Lx1612_0
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdi, qword ptr [rsp + 136]
                        cmp              eax, 5;                              je    .Lx1612_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1612_4
.Lx1612_3:              movq             xmm0, rsi
.Lx1612_4:              cmp              ecx, 5;                              je    .Lx1612_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1612_6
.Lx1612_5:              movq             xmm1, rdi
.Lx1612_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 80], 5
                        mov              qword ptr [rsp + 88], rax
.Lx1612_7:                                                                    jmp   n1510_assign_α
.Lx1612_0:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n1511_var_α
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1510_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1510_assign_α:         mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n1511_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1511_var_α:            mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 56], rax;           jmp   n1512_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1512_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn1617:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1617]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    over_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   over_γ
n1512_call_builtin_icon_β:
                                                                              jmp   over_ω
#-----------------------------------------------------------------------------------------------------------------------
n1513_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 1296], 0
.Lx1618_1:              mov              rdi, qword ptr [rip + .Lx1618_0]
                        mov              rsi, qword ptr [rsp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1516_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              rax, qword ptr [rsp + 1296]
                        add              rax, 1
                        mov              qword ptr [rsp + 1296], rax;         jmp   n1514_lit_string_α
n1513_keyword_icon_gen_β:
                                                                              jmp   .Lx1618_1
.Lx1618_0:              .quad            .Lx1618_0_s
.Lx1618_0_s:            .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n1514_lit_string_α:     mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 14
                        mov              rax, qword ptr [rip + .Lx1619_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n1515_binop_test_α
.Lx1619_0:              .quad            .Lx1619_0_s
.Lx1619_0_s:            .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n1515_binop_test_α:     mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1513_keyword_icon_gen_β
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1516_var_α:            mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0;           jmp   n1517_lit_string_α
n1516_var_β:                                                                  jmp   n1449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1517_lit_string_α:     mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 28
                        mov              rax, qword ptr [rip + .Lx1622_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n1450_call_builtin_icon_α
.Lx1622_0:              .quad            .Lx1622_0_s
.Lx1622_0_s:            .string          "large integers not supported"
#-----------------------------------------------------------------------------------------------------------------------
over_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
over_β:
                                                                              jmp   over_ω
#-----------------------------------------------------------------------------------------------------------------------
over_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1384]
                        add              rsp, 1408;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
over_ω:
                        mov              rcx, qword ptr [rsp + 1392]
                        add              rsp, 1408;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
over_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx1623_2]
                        lea              rdx, [rip + .Lx1623_3];              jmp   FN__over
.Lx1623_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx1623_3:              pop              r11
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
                        sub              rsp, 4400
                        mov              qword ptr [rsp + 4376], rcx
                        mov              qword ptr [rsp + 4384], rdx
                        mov              rdi, rsp
                        add              rdi, 4256
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1624_lit_integer_α:    mov              qword ptr [rsp + 3856], 3            # result
                        mov              rax, qword ptr [rip + .Lx1789_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n1625_lit_integer_α
.Lx1789_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1625_lit_integer_α:    mov              qword ptr [rsp + 3872], 3            # result
                        mov              rax, qword ptr [rip + .Lx1790_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n1626_lit_integer_α
.Lx1790_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1626_lit_integer_α:    mov              qword ptr [rsp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Lx1791_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n1627_lit_integer_α
.Lx1791_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1627_lit_integer_α:    mov              qword ptr [rsp + 3904], 3            # result
                        mov              rax, qword ptr [rip + .Lx1792_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n1628_lit_integer_α
.Lx1792_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1628_lit_integer_α:    mov              qword ptr [rsp + 3920], 3            # result
                        mov              rax, qword ptr [rip + .Lx1793_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n1629_lit_integer_α
.Lx1793_0:              .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1629_lit_integer_α:    mov              qword ptr [rsp + 3936], 3            # result
                        mov              rax, qword ptr [rip + .Lx1794_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n1630_lit_integer_α
.Lx1794_0:              .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n1630_lit_integer_α:    mov              qword ptr [rsp + 3952], 3            # result
                        mov              rax, qword ptr [rip + .Lx1795_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n1631_lit_integer_α
.Lx1795_0:              .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1631_lit_integer_α:    mov              qword ptr [rsp + 3968], 3            # result
                        mov              rax, qword ptr [rip + .Lx1796_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n1632_lit_integer_α
.Lx1796_0:              .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1632_lit_integer_α:    mov              qword ptr [rsp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Lx1797_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n1633_lit_integer_α
.Lx1797_0:              .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1633_lit_integer_α:    mov              qword ptr [rsp + 4000], 3            # result
                        mov              rax, qword ptr [rip + .Lx1798_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n1634_lit_integer_α
.Lx1798_0:              .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n1634_lit_integer_α:    mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx1799_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n1635_lit_integer_α
.Lx1799_0:              .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n1635_lit_integer_α:    mov              qword ptr [rsp + 4032], 3            # result
                        mov              rax, qword ptr [rip + .Lx1800_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n1636_lit_integer_α
.Lx1800_0:              .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n1636_lit_integer_α:    mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx1801_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n1637_lit_integer_α
.Lx1801_0:              .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1637_lit_integer_α:    mov              qword ptr [rsp + 4064], 3            # result
                        mov              rax, qword ptr [rip + .Lx1802_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n1638_lit_integer_α
.Lx1802_0:              .quad            43
#-----------------------------------------------------------------------------------------------------------------------
n1638_lit_integer_α:    mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx1803_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n1639_lit_integer_α
.Lx1803_0:              .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n1639_lit_integer_α:    mov              qword ptr [rsp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Lx1804_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n1640_lit_integer_α
.Lx1804_0:              .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n1640_lit_integer_α:    mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lx1805_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n1641_lit_integer_α
.Lx1805_0:              .quad            59
#-----------------------------------------------------------------------------------------------------------------------
n1641_lit_integer_α:    mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n1642_lit_integer_α
.Lx1806_0:              .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1642_lit_integer_α:    mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx1807_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n1643_lit_integer_α
.Lx1807_0:              .quad            67
#-----------------------------------------------------------------------------------------------------------------------
n1643_lit_integer_α:    mov              qword ptr [rsp + 4160], 3            # result
                        mov              rax, qword ptr [rip + .Lx1808_0]
                        mov              qword ptr [rsp + 4168], rax;         jmp   n1644_lit_integer_α
.Lx1808_0:              .quad            71
#-----------------------------------------------------------------------------------------------------------------------
n1644_lit_integer_α:    mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lx1809_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n1645_lit_integer_α
.Lx1809_0:              .quad            73
#-----------------------------------------------------------------------------------------------------------------------
n1645_lit_integer_α:    mov              qword ptr [rsp + 4192], 3            # result
                        mov              rax, qword ptr [rip + .Lx1810_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n1646_lit_integer_α
.Lx1810_0:              .quad            79
#-----------------------------------------------------------------------------------------------------------------------
n1646_lit_integer_α:    mov              qword ptr [rsp + 4208], 3            # result
                        mov              rax, qword ptr [rip + .Lx1811_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n1647_lit_integer_α
.Lx1811_0:              .quad            83
#-----------------------------------------------------------------------------------------------------------------------
n1647_lit_integer_α:    mov              qword ptr [rsp + 4224], 3            # result
                        mov              rax, qword ptr [rip + .Lx1812_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n1648_lit_integer_α
.Lx1812_0:              .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1648_lit_integer_α:    mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx1813_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n1649_make_list_α
.Lx1813_0:              .quad            97
#-----------------------------------------------------------------------------------------------------------------------
n1649_make_list_α:      mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3608], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3656], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 3672], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 3688], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3704], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 3784], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 3848], rax
                        lea              rdi, [rsp + 3456]
                        mov              esi, 25
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx;         jmp   n1650_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1650_assign_α:         mov              rax, qword ptr [rsp + 3440]
                        mov              rdx, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx;         jmp   n1651_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1651_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1818:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1818]
                        lea              rsi, [rsp + 3424]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx
                        cmp              eax, 104;                            je    n1652_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1652_call_proc_staged_α
n1651_call_builtin_icon_β:
                                                                              jmp   n1652_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1652_call_proc_staged_α:
                        call             compiler_dcα;                        jmp   .Lx1820_2
.Lx1820_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1820_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3376]
                        mov              rdx, qword ptr [rsp + 3384]
.Lx1820_29:             mov              qword ptr [rsp + 3376], rax
                        mov              qword ptr [rsp + 3384], rdx
                        cmp              eax, 104;                            je    n1653_call_builtin_icon_α
                                                                              jmp   n1653_call_builtin_icon_α
n1652_call_proc_staged_β:
                                                                              jmp   n1653_call_builtin_icon_α
.Lx1820_0:              .quad            .Lx1820_0_s
.Lx1820_0_s:            .string          "compiler"
#-----------------------------------------------------------------------------------------------------------------------
n1653_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1822:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1822]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              eax, 104;                            je    n1654_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1654_call_proc_staged_α
n1653_call_builtin_icon_β:
                                                                              jmp   n1654_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1654_call_proc_staged_α:
                        call             boundaries_dcα;                      jmp   .Lx1824_2
.Lx1824_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1824_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3312]
                        mov              rdx, qword ptr [rsp + 3320]
.Lx1824_29:             mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx
                        cmp              eax, 104;                            je    n1655_call_builtin_icon_α
                                                                              jmp   n1655_call_builtin_icon_α
n1654_call_proc_staged_β:
                                                                              jmp   n1655_call_builtin_icon_α
.Lx1824_0:              .quad            .Lx1824_0_s
.Lx1824_0_s:            .string          "boundaries"
#-----------------------------------------------------------------------------------------------------------------------
n1655_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1826:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1826]
                        lea              rsi, [rsp + 3296]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3280], rax
                        mov              qword ptr [rsp + 3288], rdx
                        cmp              eax, 104;                            je    n1656_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1656_lit_integer_α
n1655_call_builtin_icon_β:
                                                                              jmp   n1656_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1656_lit_integer_α:    mov              qword ptr [rsp + 3232], 3            # result
                        mov              rax, qword ptr [rip + .Lx1827_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n1657_lit_integer_α
.Lx1827_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1657_lit_integer_α:    mov              qword ptr [rsp + 3248], 3            # result
                        mov              rax, qword ptr [rip + .Lx1828_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n1658_lit_integer_α
.Lx1828_0:              .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n1658_lit_integer_α:    mov              qword ptr [rsp + 3264], 3            # result
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n1659_to_by_α
.Lx1829_0:              .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1659_to_by_α:          mov              rdi, qword ptr [rsp + 3232]
                        mov              rsi, qword ptr [rsp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3232], 3
                        mov              qword ptr [rsp + 3240], rax
                        mov              rdi, qword ptr [rsp + 3248]
                        mov              rsi, qword ptr [rsp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3248], 3
                        mov              qword ptr [rsp + 3256], rax
                        mov              rdi, qword ptr [rsp + 3264]
                        mov              rsi, qword ptr [rsp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3264], 3
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3216], rax
.Lx1831_0:              mov              rax, qword ptr [rsp + 3216]
                        mov              rcx, qword ptr [rsp + 3256]
                        mov              rdx, qword ptr [rsp + 3272]
                        cmp              rdx, 0;                              jl    .Lx1831_1
                        cmp              rax, rcx;                            jg    n1661_call_builtin_icon_α
                                                                              jmp   .Lx1831_2
.Lx1831_1:              cmp              rax, rcx;                            jl    n1661_call_builtin_icon_α
.Lx1831_2:              mov              qword ptr [rsp + 3200], 3
                        mov              qword ptr [rsp + 3208], rax;         jmp   n1660_call_proc_staged_α
n1659_to_by_β:          mov              rdx, qword ptr [rsp + 3272]
                        mov              rax, qword ptr [rsp + 3216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 3216], rax;         jmp   .Lx1831_0
#-----------------------------------------------------------------------------------------------------------------------
n1660_call_proc_staged_α:
                        lea              rsi, [rsp + 3200]
                        call             fact_dcα;                            jmp   .Lx1833_2
.Lx1833_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1833_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
.Lx1833_29:             mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104;                            je    n1659_to_by_β
                                                                              jmp   n1659_to_by_β
n1660_call_proc_staged_β:
                                                                              jmp   n1659_to_by_β
.Lx1833_0:              .quad            .Lx1833_0_s
.Lx1833_0_s:            .string          "fact"
#-----------------------------------------------------------------------------------------------------------------------
n1661_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1835:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1835]
                        lea              rsi, [rsp + 3136]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              eax, 104;                            je    n1662_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1662_lit_integer_α
n1661_call_builtin_icon_β:
                                                                              jmp   n1662_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1662_lit_integer_α:    mov              qword ptr [rsp + 3072], 3            # result
                        mov              rax, qword ptr [rip + .Lx1836_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n1663_lit_integer_α
.Lx1836_0:              .quad            35
#-----------------------------------------------------------------------------------------------------------------------
n1663_lit_integer_α:    mov              qword ptr [rsp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Lx1837_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n1664_lit_integer_α
.Lx1837_0:              .quad            341
#-----------------------------------------------------------------------------------------------------------------------
n1664_lit_integer_α:    mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Lx1838_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n1665_to_by_α
.Lx1838_0:              .quad            34
#-----------------------------------------------------------------------------------------------------------------------
n1665_to_by_α:          mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3072], 3
                        mov              qword ptr [rsp + 3080], rax
                        mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3088], 3
                        mov              qword ptr [rsp + 3096], rax
                        mov              rdi, qword ptr [rsp + 3104]
                        mov              rsi, qword ptr [rsp + 3112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3104], 3
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3056], rax
.Lx1840_0:              mov              rax, qword ptr [rsp + 3056]
                        mov              rcx, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 3112]
                        cmp              rdx, 0;                              jl    .Lx1840_1
                        cmp              rax, rcx;                            jg    n1667_call_builtin_icon_α
                                                                              jmp   .Lx1840_2
.Lx1840_1:              cmp              rax, rcx;                            jl    n1667_call_builtin_icon_α
.Lx1840_2:              mov              qword ptr [rsp + 3040], 3
                        mov              qword ptr [rsp + 3048], rax;         jmp   n1666_call_proc_staged_α
n1665_to_by_β:          mov              rdx, qword ptr [rsp + 3112]
                        mov              rax, qword ptr [rsp + 3056]
                        add              rax, rdx
                        mov              qword ptr [rsp + 3056], rax;         jmp   .Lx1840_0
#-----------------------------------------------------------------------------------------------------------------------
n1666_call_proc_staged_α:
                        lea              rsi, [rsp + 3040]
                        call             fib_dcα;                             jmp   .Lx1842_2
.Lx1842_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1842_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2992]
                        mov              rdx, qword ptr [rsp + 3000]
.Lx1842_29:             mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n1665_to_by_β
                                                                              jmp   n1665_to_by_β
n1666_call_proc_staged_β:
                                                                              jmp   n1665_to_by_β
.Lx1842_0:              .quad            .Lx1842_0_s
.Lx1842_0_s:            .string          "fib"
#-----------------------------------------------------------------------------------------------------------------------
n1667_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1844:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1844]
                        lea              rsi, [rsp + 2976]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              eax, 104;                            je    n1668_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1668_disjunction_α
n1667_call_builtin_icon_β:
                                                                              jmp   n1668_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1668_disjunction_α:    mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              dword ptr [rsp + 2880], 0;           jmp   n1673_lit_integer_α
n1668_disjunction_as:   mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              jne   .Lx1846_0
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1669_call_proc_staged_α
.Lx1846_0:              cmp              eax, 1;                              jne   .Lx1846_1
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1669_call_proc_staged_α
.Lx1846_1:              cmp              eax, 2;                              jne   .Lx1846_2
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1669_call_proc_staged_α
.Lx1846_2:              cmp              eax, 3;                              jne   .Lx1846_3
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1669_call_proc_staged_α
.Lx1846_3:                                                                    jmp   n1669_call_proc_staged_α
n1668_disjunction_β:    mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              je    n1668_disjunction_af
                        cmp              eax, 1;                              je    n1668_disjunction_af
                        cmp              eax, 2;                              je    n1668_disjunction_af
                                                                              jmp   n1668_disjunction_af
n1668_disjunction_af:   add              dword ptr [rsp + 2880], 1
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 1;                              je    n1672_lit_integer_α
                        cmp              eax, 2;                              je    n1671_lit_integer_α
                        cmp              eax, 3;                              je    n1670_lit_integer_α
                                                                              jmp   n1674_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1669_call_proc_staged_α:
                        lea              rsi, [rsp + 2864]
                        call             mersenne_dcα;                        jmp   .Lx1848_2
.Lx1848_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1848_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx1848_29:             mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104;                            je    n1668_disjunction_β
                                                                              jmp   n1668_disjunction_β
n1669_call_proc_staged_β:
                                                                              jmp   n1668_disjunction_β
.Lx1848_0:              .quad            .Lx1848_0_s
.Lx1848_0_s:            .string          "mersenne"
#-----------------------------------------------------------------------------------------------------------------------
n1670_lit_integer_α:    mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx1849_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n1668_disjunction_as
n1670_lit_integer_β:                                                          jmp   n1668_disjunction_af
.Lx1849_0:              .quad            127
#-----------------------------------------------------------------------------------------------------------------------
n1671_lit_integer_α:    mov              qword ptr [rsp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Lx1850_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n1668_disjunction_as
n1671_lit_integer_β:                                                          jmp   n1668_disjunction_af
.Lx1850_0:              .quad            107
#-----------------------------------------------------------------------------------------------------------------------
n1672_lit_integer_α:    mov              qword ptr [rsp + 2912], 3            # result
                        mov              rax, qword ptr [rip + .Lx1851_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n1668_disjunction_as
n1672_lit_integer_β:                                                          jmp   n1668_disjunction_af
.Lx1851_0:              .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1673_lit_integer_α:    mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx1852_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n1668_disjunction_as
n1673_lit_integer_β:                                                          jmp   n1668_disjunction_af
.Lx1852_0:              .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1674_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1854:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1854]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 104;                            je    n1675_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1675_disjunction_α
n1674_call_builtin_icon_β:
                                                                              jmp   n1675_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1675_disjunction_α:    mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              dword ptr [rsp + 2704], 0;           jmp   n1680_lit_integer_α
n1675_disjunction_as:   mov              eax, dword ptr [rsp + 2704]
                        cmp              eax, 0;                              jne   .Lx1856_0
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n1676_call_proc_staged_α
.Lx1856_0:              cmp              eax, 1;                              jne   .Lx1856_1
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n1676_call_proc_staged_α
.Lx1856_1:              cmp              eax, 2;                              jne   .Lx1856_2
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n1676_call_proc_staged_α
.Lx1856_2:              cmp              eax, 3;                              jne   .Lx1856_3
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n1676_call_proc_staged_α
.Lx1856_3:                                                                    jmp   n1676_call_proc_staged_α
n1675_disjunction_β:    mov              eax, dword ptr [rsp + 2704]
                        cmp              eax, 0;                              je    n1675_disjunction_af
                        cmp              eax, 1;                              je    n1675_disjunction_af
                        cmp              eax, 2;                              je    n1675_disjunction_af
                                                                              jmp   n1675_disjunction_af
n1675_disjunction_af:   add              dword ptr [rsp + 2704], 1
                        mov              eax, dword ptr [rsp + 2704]
                        cmp              eax, 1;                              je    n1679_lit_integer_α
                        cmp              eax, 2;                              je    n1678_lit_integer_α
                        cmp              eax, 3;                              je    n1677_lit_integer_α
                                                                              jmp   n1681_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1676_call_proc_staged_α:
                        lea              rsi, [rsp + 2688]
                        call             perfect_dcα;                         jmp   .Lx1858_2
.Lx1858_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1858_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2640]
                        mov              rdx, qword ptr [rsp + 2648]
.Lx1858_29:             mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              eax, 104;                            je    n1675_disjunction_β
                                                                              jmp   n1675_disjunction_β
n1676_call_proc_staged_β:
                                                                              jmp   n1675_disjunction_β
.Lx1858_0:              .quad            .Lx1858_0_s
.Lx1858_0_s:            .string          "perfect"
#-----------------------------------------------------------------------------------------------------------------------
n1677_lit_integer_α:    mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lx1859_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n1675_disjunction_as
n1677_lit_integer_β:                                                          jmp   n1675_disjunction_af
.Lx1859_0:              .quad            107
#-----------------------------------------------------------------------------------------------------------------------
n1678_lit_integer_α:    mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx1860_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n1675_disjunction_as
n1678_lit_integer_β:                                                          jmp   n1675_disjunction_af
.Lx1860_0:              .quad            89
#-----------------------------------------------------------------------------------------------------------------------
n1679_lit_integer_α:    mov              qword ptr [rsp + 2736], 3            # result
                        mov              rax, qword ptr [rip + .Lx1861_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n1675_disjunction_as
n1679_lit_integer_β:                                                          jmp   n1675_disjunction_af
.Lx1861_0:              .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n1680_lit_integer_α:    mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx1862_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n1675_disjunction_as
n1680_lit_integer_β:                                                          jmp   n1675_disjunction_af
.Lx1862_0:              .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n1681_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1864:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1864]
                        lea              rsi, [rsp + 2624]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              eax, 104;                            je    n1682_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1682_lit_integer_α
n1681_call_builtin_icon_β:
                                                                              jmp   n1682_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1682_lit_integer_α:    mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx1865_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n1683_lit_integer_α
.Lx1865_0:              .quad            11213
#-----------------------------------------------------------------------------------------------------------------------
n1683_lit_integer_α:    mov              qword ptr [rsp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Lx1866_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n1684_lit_integer_α
.Lx1866_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1684_lit_integer_α:    mov              qword ptr [rsp + 2592], 3            # result
                        mov              rax, qword ptr [rip + .Lx1867_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n1685_to_α
.Lx1867_0:              .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n1685_to_α:             mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], 3
                        mov              qword ptr [rsp + 2584], rax
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2592], 3
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2560], rax
.Lx1869_0:              mov              rax, qword ptr [rsp + 2560]
                        mov              rcx, qword ptr [rsp + 2600]
                        cmp              rax, rcx;                            jg    n1687_call_builtin_icon_α
                        mov              qword ptr [rsp + 2544], 3
                        mov              qword ptr [rsp + 2552], rax;         jmp   n1686_call_proc_staged_α
n1685_to_β:             inc              qword ptr [rsp + 2560];              jmp   .Lx1869_0
#-----------------------------------------------------------------------------------------------------------------------
n1686_call_proc_staged_α:
                        lea              rsi, [rsp + 2528]
                        lea              rdx, [rsp + 2544]
                        call             power_dcα;                           jmp   .Lx1871_2
.Lx1871_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1871_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
.Lx1871_29:             mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              eax, 104;                            je    n1685_to_β
                                                                              jmp   n1685_to_β
n1686_call_proc_staged_β:
                                                                              jmp   n1685_to_β
.Lx1871_0:              .quad            .Lx1871_0_s
.Lx1871_0_s:            .string          "power"
#-----------------------------------------------------------------------------------------------------------------------
n1687_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1873:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1873]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104;                            je    n1688_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1688_lit_integer_α
n1687_call_builtin_icon_β:
                                                                              jmp   n1688_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1688_lit_integer_α:    mov              qword ptr [rsp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Lx1874_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n1689_lit_integer_α
.Lx1874_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1689_lit_integer_α:    mov              qword ptr [rsp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Lx1875_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n1690_lit_integer_α
.Lx1875_0:              .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n1690_lit_integer_α:    mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx1876_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n1691_to_α
.Lx1876_0:              .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n1691_to_α:             mov              rdi, qword ptr [rsp + 2400]
                        mov              rsi, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], 3
                        mov              qword ptr [rsp + 2408], rax
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], 3
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2384], rax
.Lx1878_0:              mov              rax, qword ptr [rsp + 2384]
                        mov              rcx, qword ptr [rsp + 2424]
                        cmp              rax, rcx;                            jg    n1693_call_builtin_icon_α
                        mov              qword ptr [rsp + 2368], 3
                        mov              qword ptr [rsp + 2376], rax;         jmp   n1692_call_proc_staged_α
n1691_to_β:             inc              qword ptr [rsp + 2384];              jmp   .Lx1878_0
#-----------------------------------------------------------------------------------------------------------------------
n1692_call_proc_staged_α:
                        lea              rsi, [rsp + 2352]
                        lea              rdx, [rsp + 2368]
                        call             impower_dcα;                         jmp   .Lx1880_2
.Lx1880_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1880_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
.Lx1880_29:             mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104;                            je    n1691_to_β
                                                                              jmp   n1691_to_β
n1692_call_proc_staged_β:
                                                                              jmp   n1691_to_β
.Lx1880_0:              .quad            .Lx1880_0_s
.Lx1880_0_s:            .string          "impower"
#-----------------------------------------------------------------------------------------------------------------------
n1693_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1882:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1882]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              eax, 104;                            je    n1694_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1694_var_α
n1693_call_builtin_icon_β:
                                                                              jmp   n1694_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1694_var_α:            mov              rax, qword ptr [rsp + 4288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 4296]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n1695_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1695_iterate_α:        mov              qword ptr [rsp + 2224], 0
.Lx1886_0:              mov              rdi, qword ptr [rsp + 2240]
                        mov              rsi, qword ptr [rsp + 2248]
                        mov              rdx, qword ptr [rsp + 2224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              rax, 104;                            je    n1697_call_builtin_icon_α
                                                                              jmp   n1696_call_proc_staged_α
n1695_iterate_β:        inc              qword ptr [rsp + 2224];              jmp   .Lx1886_0
#-----------------------------------------------------------------------------------------------------------------------
n1696_call_proc_staged_α:
                        lea              rsi, [rsp + 2208]
                        call             minpower_dcα;                        jmp   .Lx1888_2
.Lx1888_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1888_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
.Lx1888_29:             mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104;                            je    n1695_iterate_β
                                                                              jmp   n1695_iterate_β
n1696_call_proc_staged_β:
                                                                              jmp   n1695_iterate_β
.Lx1888_0:              .quad            .Lx1888_0_s
.Lx1888_0_s:            .string          "minpower"
#-----------------------------------------------------------------------------------------------------------------------
n1697_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1890:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1890]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104;                            je    n1698_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1698_disjunction_α
n1697_call_builtin_icon_β:
                                                                              jmp   n1698_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1698_disjunction_α:    mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n1711_lit_integer_α
n1698_disjunction_as:   mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lx1892_0
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_0:              cmp              eax, 1;                              jne   .Lx1892_1
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_1:              cmp              eax, 2;                              jne   .Lx1892_2
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_2:              cmp              eax, 3;                              jne   .Lx1892_3
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_3:              cmp              eax, 4;                              jne   .Lx1892_4
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_4:              cmp              eax, 5;                              jne   .Lx1892_5
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n1699_call_proc_staged_α
.Lx1892_5:                                                                    jmp   n1699_call_proc_staged_α
n1698_disjunction_β:    mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              je    n1698_disjunction_af
                        cmp              eax, 1;                              je    n1698_disjunction_af
                        cmp              eax, 2;                              je    n1698_disjunction_af
                        cmp              eax, 3;                              je    n1698_disjunction_af
                        cmp              eax, 4;                              je    n1698_disjunction_af
                                                                              jmp   n1698_disjunction_af
n1698_disjunction_af:   add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 1;                              je    n1710_lit_integer_α
                        cmp              eax, 2;                              je    n1709_lit_integer_α
                        cmp              eax, 3;                              je    n1706_lit_integer_α
                        cmp              eax, 4;                              je    n1703_lit_integer_α
                        cmp              eax, 5;                              je    n1700_lit_integer_α
                                                                              jmp   n1712_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1699_call_proc_staged_α:
                        lea              rsi, [rsp + 1904]
                        call             bigexp_dcα;                          jmp   .Lx1894_2
.Lx1894_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1894_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
.Lx1894_29:             mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104;                            je    n1698_disjunction_β
                                                                              jmp   n1698_disjunction_β
n1699_call_proc_staged_β:
                                                                              jmp   n1698_disjunction_β
.Lx1894_0:              .quad            .Lx1894_0_s
.Lx1894_0_s:            .string          "bigexp"
#-----------------------------------------------------------------------------------------------------------------------
n1700_lit_integer_α:    mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx1895_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n1701_lit_integer_α
n1700_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1895_0:              .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1701_lit_integer_α:    mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx1896_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n1702_binop_α
.Lx1896_0:              .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1702_binop_α:          mov              rdi, qword ptr [rsp + 2096]
                        mov              rsi, qword ptr [rsp + 2104]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1698_disjunction_af
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1698_disjunction_as
n1702_binop_β:                                                                jmp   n1698_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1703_lit_integer_α:    mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx1898_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n1704_lit_integer_α
n1703_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1898_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1704_lit_integer_α:    mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx1899_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n1705_binop_α
.Lx1899_0:              .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n1705_binop_α:          mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2064]
                        mov              rcx, qword ptr [rsp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1698_disjunction_af
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1698_disjunction_as
n1705_binop_β:                                                                jmp   n1698_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1706_lit_integer_α:    mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Lx1901_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n1707_lit_integer_α
n1706_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1901_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1707_lit_integer_α:    mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx1902_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n1708_binop_α
.Lx1902_0:              .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n1708_binop_α:          mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1698_disjunction_af
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1698_disjunction_as
n1708_binop_β:                                                                jmp   n1698_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1709_lit_integer_α:    mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx1904_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n1698_disjunction_as
n1709_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1904_0:              .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1710_lit_integer_α:    mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx1905_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n1698_disjunction_as
n1710_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1905_0:              .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n1711_lit_integer_α:    mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx1906_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n1698_disjunction_as
n1711_lit_integer_β:                                                          jmp   n1698_disjunction_af
.Lx1906_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1712_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1908:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1908]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 104;                            je    n1713_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1713_disjunction_α
n1712_call_builtin_icon_β:
                                                                              jmp   n1713_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1713_disjunction_α:    mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              dword ptr [rsp + 1648], 0;           jmp   n1724_lit_integer_α
n1713_disjunction_as:   mov              eax, dword ptr [rsp + 1648]
                        cmp              eax, 0;                              jne   .Lx1910_0
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_0:              cmp              eax, 1;                              jne   .Lx1910_1
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_1:              cmp              eax, 2;                              jne   .Lx1910_2
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_2:              cmp              eax, 3;                              jne   .Lx1910_3
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_3:              cmp              eax, 4;                              jne   .Lx1910_4
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_4:              cmp              eax, 5;                              jne   .Lx1910_5
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_5:              cmp              eax, 6;                              jne   .Lx1910_6
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_6:              cmp              eax, 7;                              jne   .Lx1910_7
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_7:              cmp              eax, 8;                              jne   .Lx1910_8
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_8:              cmp              eax, 9;                              jne   .Lx1910_9
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n1714_call_proc_staged_α
.Lx1910_9:                                                                    jmp   n1714_call_proc_staged_α
n1713_disjunction_β:    mov              eax, dword ptr [rsp + 1648]
                        cmp              eax, 0;                              je    n1713_disjunction_af
                        cmp              eax, 1;                              je    n1713_disjunction_af
                        cmp              eax, 2;                              je    n1713_disjunction_af
                        cmp              eax, 3;                              je    n1713_disjunction_af
                        cmp              eax, 4;                              je    n1713_disjunction_af
                        cmp              eax, 5;                              je    n1713_disjunction_af
                        cmp              eax, 6;                              je    n1713_disjunction_af
                        cmp              eax, 7;                              je    n1713_disjunction_af
                        cmp              eax, 8;                              je    n1713_disjunction_af
                                                                              jmp   n1713_disjunction_af
n1713_disjunction_af:   add              dword ptr [rsp + 1648], 1
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              eax, 1;                              je    n1723_lit_integer_α
                        cmp              eax, 2;                              je    n1722_lit_integer_α
                        cmp              eax, 3;                              je    n1721_lit_integer_α
                        cmp              eax, 4;                              je    n1720_lit_integer_α
                        cmp              eax, 5;                              je    n1719_lit_integer_α
                        cmp              eax, 6;                              je    n1718_lit_integer_α
                        cmp              eax, 7;                              je    n1717_lit_integer_α
                        cmp              eax, 8;                              je    n1716_lit_integer_α
                        cmp              eax, 9;                              je    n1715_lit_integer_α
                                                                              jmp   n1725_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1714_call_proc_staged_α:
                        lea              rsi, [rsp + 1632]
                        call             tmul_dcα;                            jmp   .Lx1912_2
.Lx1912_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1912_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
.Lx1912_29:             mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104;                            je    n1713_disjunction_β
                                                                              jmp   n1713_disjunction_β
n1714_call_proc_staged_β:
                                                                              jmp   n1713_disjunction_β
.Lx1912_0:              .quad            .Lx1912_0_s
.Lx1912_0_s:            .string          "tmul"
#-----------------------------------------------------------------------------------------------------------------------
n1715_lit_integer_α:    mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx1913_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n1713_disjunction_as
n1715_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1913_0:              .quad            18446744073709551573
#-----------------------------------------------------------------------------------------------------------------------
n1716_lit_integer_α:    mov              qword ptr [rsp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Lx1914_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n1713_disjunction_as
n1716_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1914_0:              .quad            18446744073709551605
#-----------------------------------------------------------------------------------------------------------------------
n1717_lit_integer_α:    mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx1915_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n1713_disjunction_as
n1717_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1915_0:              .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n1718_lit_integer_α:    mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lx1916_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n1713_disjunction_as
n1718_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1916_0:              .quad            51
#-----------------------------------------------------------------------------------------------------------------------
n1719_lit_integer_α:    mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lx1917_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n1713_disjunction_as
n1719_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1917_0:              .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1720_lit_integer_α:    mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx1918_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n1713_disjunction_as
n1720_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1918_0:              .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1721_lit_integer_α:    mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx1919_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n1713_disjunction_as
n1721_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1919_0:              .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1722_lit_integer_α:    mov              qword ptr [rsp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Lx1920_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n1713_disjunction_as
n1722_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1920_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1723_lit_integer_α:    mov              qword ptr [rsp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Lx1921_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n1713_disjunction_as
n1723_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1921_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1724_lit_integer_α:    mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx1922_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n1713_disjunction_as
n1724_lit_integer_β:                                                          jmp   n1713_disjunction_af
.Lx1922_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1725_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1924:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1924]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104;                            je    n1726_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1726_lit_integer_α
n1725_call_builtin_icon_β:
                                                                              jmp   n1726_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1726_lit_integer_α:    mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx1925_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n1727_lit_integer_α
.Lx1925_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1727_lit_integer_α:    mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lx1926_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n1728_lit_integer_α
.Lx1926_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1728_lit_integer_α:    mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx1927_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n1729_to_α
.Lx1927_0:              .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1729_to_α:             mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1520], 3
                        mov              qword ptr [rsp + 1528], rax
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], 3
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1504], rax
.Lx1929_0:              mov              rax, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1544]
                        cmp              rax, rcx;                            jg    n1733_call_builtin_icon_α
                        mov              qword ptr [rsp + 1488], 3
                        mov              qword ptr [rsp + 1496], rax;         jmp   n1730_coerce_numeric_α
n1729_to_β:             inc              qword ptr [rsp + 1504];              jmp   .Lx1929_0
#-----------------------------------------------------------------------------------------------------------------------
n1730_coerce_numeric_α: mov              eax, dword ptr [rsp + 1488]
                        cmp              eax, 5;                              je    .Lx1931_1
                        cmp              eax, 3;                              jne   .Lx1931_0
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              eax, 3;                              jne   .Lx1931_0
.Lx1931_1:              mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n1731_binop_α
.Lx1931_0:              lea              rdi, [rsp + 1488]
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1456]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1731_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1731_binop_α:          mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1733_call_builtin_icon_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1732_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1732_call_proc_staged_α:
                        lea              rsi, [rsp + 1440]
                        call             tmul_dcα;                            jmp   .Lx1934_2
.Lx1934_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1934_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
.Lx1934_29:             mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104;                            je    n1729_to_β
                                                                              jmp   n1729_to_β
n1732_call_proc_staged_β:
                                                                              jmp   n1729_to_β
.Lx1934_0:              .quad            .Lx1934_0_s
.Lx1934_0_s:            .string          "tmul"
#-----------------------------------------------------------------------------------------------------------------------
n1733_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1936:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1936]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    n1734_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1734_disjunction_α
n1733_call_builtin_icon_β:
                                                                              jmp   n1734_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1734_disjunction_α:    mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              dword ptr [rsp + 1120], 0;           jmp   n1742_lit_integer_α
n1734_disjunction_as:   mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              jne   .Lx1938_0
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1735_call_proc_staged_α
.Lx1938_0:              cmp              eax, 1;                              jne   .Lx1938_1
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n1735_call_proc_staged_α
.Lx1938_1:                                                                    jmp   n1735_call_proc_staged_α
n1734_disjunction_β:    mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              je    n1745_to_β
                                                                              jmp   n1739_to_β
n1734_disjunction_af:   add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 1;                              je    n1736_lit_integer_α
                                                                              jmp   n1748_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1735_call_proc_staged_α:
                        lea              rsi, [rsp + 1104]
                        call             conv_dcα;                            jmp   .Lx1940_2
.Lx1940_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1940_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
.Lx1940_29:             mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n1734_disjunction_β
                                                                              jmp   n1734_disjunction_β
n1735_call_proc_staged_β:
                                                                              jmp   n1734_disjunction_β
.Lx1940_0:              .quad            .Lx1940_0_s
.Lx1940_0_s:            .string          "conv"
#-----------------------------------------------------------------------------------------------------------------------
n1736_lit_integer_α:    mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx1941_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n1737_lit_integer_α
n1736_lit_integer_β:                                                          jmp   n1734_disjunction_af
.Lx1941_0:              .quad            18446744073709545835
#-----------------------------------------------------------------------------------------------------------------------
n1737_lit_integer_α:    mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Lx1942_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n1738_lit_integer_α
.Lx1942_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1738_lit_integer_α:    mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx1943_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n1739_to_α
.Lx1943_0:              .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n1739_to_α:             mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1328], 3
                        mov              qword ptr [rsp + 1336], rax
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], 3
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1312], rax
.Lx1945_0:              mov              rax, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1352]
                        cmp              rax, rcx;                            jg    n1734_disjunction_af
                        mov              qword ptr [rsp + 1296], 3
                        mov              qword ptr [rsp + 1304], rax;         jmp   n1740_coerce_numeric_α
n1739_to_β:             inc              qword ptr [rsp + 1312];              jmp   .Lx1945_0
#-----------------------------------------------------------------------------------------------------------------------
n1740_coerce_numeric_α: mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 5;                              je    .Lx1947_1
                        cmp              eax, 3;                              jne   .Lx1947_0
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              eax, 3;                              jne   .Lx1947_0
.Lx1947_1:              mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n1741_binop_α
.Lx1947_0:              lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1264]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1741_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1741_binop_α:          mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1734_disjunction_af
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1734_disjunction_as
n1741_binop_β:                                                                jmp   n1734_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1742_lit_integer_α:    mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx1949_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n1743_lit_integer_α
n1742_lit_integer_β:                                                          jmp   n1734_disjunction_af
.Lx1949_0:              .quad            787
#-----------------------------------------------------------------------------------------------------------------------
n1743_lit_integer_α:    mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx1950_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n1744_lit_integer_α
.Lx1950_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1744_lit_integer_α:    mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx1951_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n1745_to_α
.Lx1951_0:              .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n1745_to_α:             mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], 3
                        mov              qword ptr [rsp + 1224], rax
                        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], 3
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1200], rax
.Lx1953_0:              mov              rax, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1240]
                        cmp              rax, rcx;                            jg    n1734_disjunction_af
                        mov              qword ptr [rsp + 1184], 3
                        mov              qword ptr [rsp + 1192], rax;         jmp   n1746_coerce_numeric_α
n1745_to_β:             inc              qword ptr [rsp + 1200];              jmp   .Lx1953_0
#-----------------------------------------------------------------------------------------------------------------------
n1746_coerce_numeric_α: mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 5;                              je    .Lx1955_1
                        cmp              eax, 3;                              jne   .Lx1955_0
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 3;                              jne   .Lx1955_0
.Lx1955_1:              mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n1747_binop_α
.Lx1955_0:              lea              rdi, [rsp + 1184]
                        lea              rsi, [rsp + 1168]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1747_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1747_binop_α:          mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1734_disjunction_af
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1734_disjunction_as
n1747_binop_β:                                                                jmp   n1734_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1748_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1958:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1958]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n1749_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1749_call_proc_staged_α
n1748_call_builtin_icon_β:
                                                                              jmp   n1749_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1749_call_proc_staged_α:
                        call             radix_dcα;                           jmp   .Lx1960_2
.Lx1960_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1960_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
.Lx1960_29:             mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n1750_call_builtin_icon_α
                                                                              jmp   n1750_call_builtin_icon_α
n1749_call_proc_staged_β:
                                                                              jmp   n1750_call_builtin_icon_α
.Lx1960_0:              .quad            .Lx1960_0_s
.Lx1960_0_s:            .string          "radix"
#-----------------------------------------------------------------------------------------------------------------------
n1750_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1962:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1962]
                        lea              rsi, [rsp + 976]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n1751_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1751_call_proc_staged_α
n1750_call_builtin_icon_β:
                                                                              jmp   n1751_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1751_call_proc_staged_α:
                        call             over_dcα;                            jmp   .Lx1964_2
.Lx1964_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1964_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
.Lx1964_29:             mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n1752_lit_integer_α
                                                                              jmp   n1752_lit_integer_α
n1751_call_proc_staged_β:
                                                                              jmp   n1752_lit_integer_α
.Lx1964_0:              .quad            .Lx1964_0_s
.Lx1964_0_s:            .string          "over"
#-----------------------------------------------------------------------------------------------------------------------
n1752_lit_integer_α:    mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx1965_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1753_lit_real_α
.Lx1965_0:              .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n1753_lit_real_α:       mov              qword ptr [rsp + 768], 5             # result
                        mov              rax, qword ptr [rip + .Lx1966_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1754_lit_integer_α
.Lx1966_0:              .quad            4617315517961601024
#-----------------------------------------------------------------------------------------------------------------------
n1754_lit_integer_α:    mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx1967_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1755_lit_integer_α
.Lx1967_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1755_lit_integer_α:    mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx1968_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1756_binop_α
.Lx1968_0:              .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n1756_binop_α:          mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1765_lit_integer_α
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1757_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1757_lit_integer_α:    mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx1970_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n1758_lit_integer_α
.Lx1970_0:              .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n1758_lit_integer_α:    mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx1971_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n1759_binop_α
.Lx1971_0:              .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n1759_binop_α:          mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1765_lit_integer_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1760_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1760_lit_integer_α:    mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx1973_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1761_lit_integer_α
.Lx1973_0:              .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1761_lit_integer_α:    mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx1974_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n1762_binop_α
.Lx1974_0:              .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n1762_binop_α:          mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1765_lit_integer_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1763_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n1763_make_list_α:      mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n1764_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1764_assign_α:         mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx;         jmp   n1765_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1765_lit_integer_α:    mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx1979_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n1766_lit_real_α
.Lx1979_0:              .quad            73
#-----------------------------------------------------------------------------------------------------------------------
n1766_lit_real_α:       mov              qword ptr [rsp + 528], 5             # result
                        mov              rax, qword ptr [rip + .Lx1980_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n1767_lit_integer_α
.Lx1980_0:              .quad            4621256167635550208
#-----------------------------------------------------------------------------------------------------------------------
n1767_lit_integer_α:    mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx1981_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1768_lit_integer_α
.Lx1981_0:              .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n1768_lit_integer_α:    mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx1982_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n1769_binop_α
.Lx1982_0:              .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n1769_binop_α:          mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1776_call_builtin_icon_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1770_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1770_lit_integer_α:    mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx1984_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1771_lit_integer_α
.Lx1984_0:              .quad            6289078614652622815
#-----------------------------------------------------------------------------------------------------------------------
n1771_lit_integer_α:    mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx1985_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1772_lit_integer_α
.Lx1985_0:              .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n1772_lit_integer_α:    mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx1986_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1773_binop_α
.Lx1986_0:              .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n1773_binop_α:          mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n1776_call_builtin_icon_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1774_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n1774_make_list_α:      mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n1775_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1775_assign_α:         mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx;         jmp   n1776_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1776_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1992:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1992]
                        lea              rsi, [rsp + 384]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n1777_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1777_disjunction_α
n1776_call_builtin_icon_β:
                                                                              jmp   n1777_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1777_disjunction_α:    mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n1781_var_α
n1777_disjunction_as:   mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx1994_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1778_call_proc_staged_α
.Lx1994_0:              cmp              eax, 1;                              jne   .Lx1994_1
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 248], rax;          jmp   n1778_call_proc_staged_α
.Lx1994_1:                                                                    jmp   n1778_call_proc_staged_α
n1777_disjunction_β:    mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n1782_iterate_β
                                                                              jmp   n1780_iterate_β
n1777_disjunction_af:   add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n1779_var_α
                                                                              jmp   n1783_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1778_call_proc_staged_α:
                        lea              rsi, [rsp + 240]
                        call             unops_dcα;                           jmp   .Lx1996_2
.Lx1996_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1996_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx1996_29:             mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n1777_disjunction_β
                                                                              jmp   n1777_disjunction_β
n1778_call_proc_staged_β:
                                                                              jmp   n1777_disjunction_β
.Lx1996_0:              .quad            .Lx1996_0_s
.Lx1996_0_s:            .string          "unops"
#-----------------------------------------------------------------------------------------------------------------------
n1779_var_α:            mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1780_iterate_α
n1779_var_β:                                                                  jmp   n1777_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1780_iterate_α:        mov              qword ptr [rsp + 336], 0
.Lx2000_0:              mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              rax, 104;                            je    n1777_disjunction_af
                                                                              jmp   n1777_disjunction_as
n1780_iterate_β:        inc              qword ptr [rsp + 336];               jmp   .Lx2000_0
#-----------------------------------------------------------------------------------------------------------------------
n1781_var_α:            mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1782_iterate_α
n1781_var_β:                                                                  jmp   n1777_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1782_iterate_α:        mov              qword ptr [rsp + 288], 0
.Lx2004_0:              mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              rax, 104;                            je    n1777_disjunction_af
                                                                              jmp   n1777_disjunction_as
n1782_iterate_β:        inc              qword ptr [rsp + 288];               jmp   .Lx2004_0
#-----------------------------------------------------------------------------------------------------------------------
n1783_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn2006:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2006]
                        lea              rsi, [rsp + 176]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n1784_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1784_var_α
n1783_call_builtin_icon_β:
                                                                              jmp   n1784_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1784_var_α:            mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 104], rax;          jmp   n1785_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1785_iterate_α:        mov              qword ptr [rsp + 80], 0
.Lx2010_0:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              rax, 104;                            je    main_ω
                                                                              jmp   n1786_var_α
n1785_iterate_β:        inc              qword ptr [rsp + 80];                jmp   .Lx2010_0
#-----------------------------------------------------------------------------------------------------------------------
n1786_var_α:            mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 152], rax;          jmp   n1787_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1787_iterate_α:        mov              qword ptr [rsp + 128], 0
.Lx2014_0:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              rax, 104;                            je    n1785_iterate_β
                                                                              jmp   n1788_call_proc_staged_α
n1787_iterate_β:        inc              qword ptr [rsp + 128];               jmp   .Lx2014_0
#-----------------------------------------------------------------------------------------------------------------------
n1788_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 112]
                        call             binops_dcα;                          jmp   .Lx2016_2
.Lx2016_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx2016_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx2016_29:             mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n1787_iterate_β
                                                                              jmp   n1787_iterate_β
n1788_call_proc_staged_β:
                                                                              jmp   n1787_iterate_β
.Lx2016_0:              .quad            .Lx2016_0_s
.Lx2016_0_s:            .string          "binops"
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
.Lstartup_pname0:       .string          "compiler"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__compiler
                        .quad            compiler_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            896
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "boundaries"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__boundaries
                        .quad            boundaries_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1056
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "fact"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__fact
                        .quad            fact_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            336
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "fib"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__fib
                        .quad            fib_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            576
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "power"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__power
                        .quad            power_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            304
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "impower"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__impower
                        .quad            impower_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            352
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "minpower"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__minpower
                        .quad            minpower_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            752
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "bigexp"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__bigexp
                        .quad            bigexp_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            848
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "mersenne"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__mersenne
                        .quad            mersenne_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            288
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "perfect"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__perfect
                        .quad            perfect_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            448
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "tmul"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__tmul
                        .quad            tmul_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1568
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "conv"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__conv
                        .quad            conv_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1440
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "unops"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__unops
                        .quad            unops_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            768
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "binops"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__binops
                        .quad            binops_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1488
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "compares"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__compares
                        .quad            compares_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1168
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "radix"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__radix
                        .quad            radix_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1216
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "over"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__over
                        .quad            over_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1344
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
