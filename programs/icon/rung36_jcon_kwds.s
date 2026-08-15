                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_kw_α
proc_kw_α:
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_kw_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n37_var_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lx47_0
                                                                              jmp   n1_var_α
.Lx47_0:                                                                      jmp   n1_var_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 880];          jmp   n1_var_α
n0_disjunction_af:      add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880];          jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 392], rax;          jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn51:               .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn51]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n26_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_icon_β:                                                       jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n4_call_builtin_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_α:      mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn54:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n8_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_var_α
n4_call_builtin_β:                                                            jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 792], rax;          jmp   n6_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 4
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n9_call_builtin_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_α:      mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn61:               .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n21_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_var_α
n9_call_builtin_β:                                                            jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 616], rax;          jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn65:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n26_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                                                                              jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 8
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n13_binop_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "  [size "
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 664], rax;          jmp   n15_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_α:             mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n16_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n18_binop_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax;          jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn79:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n26_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_assign_α
n22_call_builtin_icon_β:
                                                                              jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n24_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 328], rax;          jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n27_var_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "&"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n28_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n30_call_builtin_icon_α
.Lx88_0:                .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn90:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n34_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_lit_string_α
n30_call_builtin_icon_β:
                                                                              jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n32_var_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 312], rax;          jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn95:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n34_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_α
n33_call_builtin_icon_β:
                                                                              jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n35_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 0], rax              # kw__STATIC__prev
                        mov              qword ptr [r9 + 8], rdx;             jmp   n36_return_α
#-----------------------------------------------------------------------------------------------------------------------
n36_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              rax, qword ptr [r9 + 0]              # kw__STATIC__prev
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 992], rax           # result
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n38_unop_test_α
n37_var_β:                                                                    jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_unop_test_α:        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        cmp              eax, 0;                              je    n0_disjunction_af
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 984], rax;          jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n40_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_test_α:       mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 8
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n43_binop_test_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_test_α:       mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:      mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 904], rax;          jmp   n45_return_α
n44_conjunction_β:                                                            jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_return_α:           mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_kw_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_β:
                                                                              jmp   proc_kw_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1128]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_ω:
                        mov              rcx, qword ptr [rsp + 1136]
                        add              rsp, 1152;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_kw_dcα:
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
                        lea              rcx, [rip + .Lx111_2]
                        lea              rdx, [rip + .Lx111_3];               jmp   proc_kw_α
.Lx111_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx111_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nmap_α
proc_nmap_α:
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rcx
                        mov              qword ptr [rsp + 208], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_nmap_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 10
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n114_lit_string_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 10
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n115_call_builtin_icon_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "nnnnnnnnnn"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_icon_α:
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
.Lrkfn122:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 48]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    proc_nmap_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_return_α
n115_call_builtin_icon_β:
                                                                              jmp   proc_nmap_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_return_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_nmap_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_β:
                                                                              jmp   proc_nmap_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 200]
                        add              rsp, 224;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_ω:
                        mov              rcx, qword ptr [rsp + 208]
                        add              rsp, 224;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_nmap_dcα:
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
                        lea              rcx, [rip + .Lx124_2]
                        lea              rdx, [rip + .Lx124_3];               jmp   proc_nmap_α
.Lx124_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx124_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "kw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_kw_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_kw_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "nmap"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_nmap_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_nmap_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "kw__STATIC__prev"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 9536
                        mov              qword ptr [rsp + 9512], rcx
                        mov              qword ptr [rsp + 9520], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              qword ptr [rsp + 9472], 3            # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 9480], rax;         jmp   n126_keyword_assign_α
.Lx424_0:               .quad            747
#-----------------------------------------------------------------------------------------------------------------------
n126_keyword_assign_α:  mov              rdi, qword ptr [rsp + 9472]
                        mov              rsi, qword ptr [rsp + 9480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n127_lit_string_α
                        mov              qword ptr [rsp + 9456], rax
                        mov              qword ptr [rsp + 9464], rdx;         jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 9360], 2            # result
                        mov              dword ptr [rsp + 9364], 9
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 9368], rax;         jmp   n128_disjunction_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "allocated"
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:     mov              qword ptr [rsp + 9376], 0
                        mov              qword ptr [rsp + 9384], 0
                        mov              dword ptr [rsp + 9392], 0;           jmp   n131_keyword_icon_gen_α
n128_disjunction_as:    mov              eax, dword ptr [rsp + 9392]
                        cmp              eax, 0;                              jne   .Lx428_0
                        mov              rax, qword ptr [rsp + 9408]
                        mov              qword ptr [rsp + 9376], rax
                        mov              rax, qword ptr [rsp + 9416]
                        mov              qword ptr [rsp + 9384], rax;         jmp   n129_call_proc_staged_α
.Lx428_0:               cmp              eax, 1;                              jne   .Lx428_1
                        mov              rax, qword ptr [rsp + 9440]
                        mov              qword ptr [rsp + 9376], rax
                        mov              rax, qword ptr [rsp + 9448]
                        mov              qword ptr [rsp + 9384], rax;         jmp   n129_call_proc_staged_α
.Lx428_1:                                                                     jmp   n129_call_proc_staged_α
n128_disjunction_β:     mov              eax, dword ptr [rsp + 9392]
                        cmp              eax, 0;                              je    n131_keyword_icon_gen_β
                                                                              jmp   n128_disjunction_af
n128_disjunction_af:    add              dword ptr [rsp + 9392], 1
                        mov              eax, dword ptr [rsp + 9392]
                        cmp              eax, 1;                              je    n130_lit_string_α
                                                                              jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rsp + 9360]
                        lea              rdx, [rsp + 9376]
                        call             proc_kw_dcα;                         jmp   .Lx430_2
.Lx430_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx430_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9296], rax
                        mov              qword ptr [rsp + 9304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9296]
                        mov              rdx, qword ptr [rsp + 9304]
.Lx430_29:              mov              qword ptr [rsp + 9296], rax
                        mov              qword ptr [rsp + 9304], rdx
                        cmp              eax, 104;                            je    n128_disjunction_β
                                                                              jmp   n128_disjunction_β
n129_call_proc_staged_β:
                                                                              jmp   n128_disjunction_β
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              qword ptr [rsp + 9440], 2            # result
                        mov              dword ptr [rsp + 9444], 8
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 9448], rax;         jmp   n128_disjunction_as
n130_lit_string_β:                                                            jmp   n128_disjunction_af
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 9424], 0
.Lx432_1:               mov              rdi, qword ptr [rip + .Lx432_0]
                        mov              rsi, qword ptr [rsp + 9424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n128_disjunction_af
                        mov              qword ptr [rsp + 9408], rax
                        mov              qword ptr [rsp + 9416], rdx
                        mov              rax, qword ptr [rsp + 9424]
                        add              rax, 1
                        mov              qword ptr [rsp + 9424], rax;         jmp   n128_disjunction_as
n131_keyword_icon_gen_β:
                                                                              jmp   .Lx432_1
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "&allocated"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 9200], 2            # result
                        mov              dword ptr [rsp + 9204], 5
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 9208], rax;         jmp   n133_disjunction_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "ascii"
#-----------------------------------------------------------------------------------------------------------------------
n133_disjunction_α:     mov              qword ptr [rsp + 9216], 0
                        mov              qword ptr [rsp + 9224], 0
                        mov              dword ptr [rsp + 9232], 0;           jmp   n136_keyword_icon_α
n133_disjunction_as:    mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 0;                              jne   .Lx435_0
                        mov              rax, qword ptr [rsp + 9248]
                        mov              qword ptr [rsp + 9216], rax
                        mov              rax, qword ptr [rsp + 9256]
                        mov              qword ptr [rsp + 9224], rax;         jmp   n134_call_proc_staged_α
.Lx435_0:               cmp              eax, 1;                              jne   .Lx435_1
                        mov              rax, qword ptr [rsp + 9280]
                        mov              qword ptr [rsp + 9216], rax
                        mov              rax, qword ptr [rsp + 9288]
                        mov              qword ptr [rsp + 9224], rax;         jmp   n134_call_proc_staged_α
.Lx435_1:                                                                     jmp   n134_call_proc_staged_α
n133_disjunction_β:     mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 0;                              je    n133_disjunction_af
                                                                              jmp   n133_disjunction_af
n133_disjunction_af:    add              dword ptr [rsp + 9232], 1
                        mov              eax, dword ptr [rsp + 9232]
                        cmp              eax, 1;                              je    n135_lit_string_α
                                                                              jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rsp + 9200]
                        lea              rdx, [rsp + 9216]
                        call             proc_kw_dcα;                         jmp   .Lx437_2
.Lx437_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx437_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9136], rax
                        mov              qword ptr [rsp + 9144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9136]
                        mov              rdx, qword ptr [rsp + 9144]
.Lx437_29:              mov              qword ptr [rsp + 9136], rax
                        mov              qword ptr [rsp + 9144], rdx
                        cmp              eax, 104;                            je    n133_disjunction_β
                                                                              jmp   n133_disjunction_β
n134_call_proc_staged_β:
                                                                              jmp   n133_disjunction_β
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              qword ptr [rsp + 9280], 2            # result
                        mov              dword ptr [rsp + 9284], 8
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 9288], rax;         jmp   n133_disjunction_as
n135_lit_string_β:                                                            jmp   n133_disjunction_af
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n136_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n133_disjunction_af
                        mov              qword ptr [rsp + 9248], rax
                        mov              qword ptr [rsp + 9256], rdx;         jmp   n133_disjunction_as
n136_keyword_icon_β:                                                          jmp   n133_disjunction_af
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 8992], 2            # result
                        mov              dword ptr [rsp + 8996], 5
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 9000], rax;         jmp   n138_disjunction_α
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "clock"
#-----------------------------------------------------------------------------------------------------------------------
n138_disjunction_α:     mov              qword ptr [rsp + 9008], 0
                        mov              qword ptr [rsp + 9016], 0
                        mov              dword ptr [rsp + 9024], 0;           jmp   n141_keyword_icon_α
n138_disjunction_as:    mov              eax, dword ptr [rsp + 9024]
                        cmp              eax, 0;                              jne   .Lx442_0
                        mov              rax, qword ptr [rsp + 9040]
                        mov              qword ptr [rsp + 9008], rax
                        mov              rax, qword ptr [rsp + 9048]
                        mov              qword ptr [rsp + 9016], rax;         jmp   n139_call_proc_staged_α
.Lx442_0:               cmp              eax, 1;                              jne   .Lx442_1
                        mov              rax, qword ptr [rsp + 9120]
                        mov              qword ptr [rsp + 9008], rax
                        mov              rax, qword ptr [rsp + 9128]
                        mov              qword ptr [rsp + 9016], rax;         jmp   n139_call_proc_staged_α
.Lx442_1:                                                                     jmp   n139_call_proc_staged_α
n138_disjunction_β:     mov              eax, dword ptr [rsp + 9024]
                        cmp              eax, 0;                              je    n138_disjunction_af
                                                                              jmp   n138_disjunction_af
n138_disjunction_af:    add              dword ptr [rsp + 9024], 1
                        mov              eax, dword ptr [rsp + 9024]
                        cmp              eax, 1;                              je    n140_lit_string_α
                                                                              jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rsp + 8992]
                        lea              rdx, [rsp + 9008]
                        call             proc_kw_dcα;                         jmp   .Lx444_2
.Lx444_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx444_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8928], rax
                        mov              qword ptr [rsp + 8936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8928]
                        mov              rdx, qword ptr [rsp + 8936]
.Lx444_29:              mov              qword ptr [rsp + 8928], rax
                        mov              qword ptr [rsp + 8936], rdx
                        cmp              eax, 104;                            je    n138_disjunction_β
                                                                              jmp   n138_disjunction_β
n139_call_proc_staged_β:
                                                                              jmp   n138_disjunction_β
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              qword ptr [rsp + 9120], 2            # result
                        mov              dword ptr [rsp + 9124], 8
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 9128], rax;         jmp   n138_disjunction_as
n140_lit_string_β:                                                            jmp   n138_disjunction_af
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n141_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n138_disjunction_af
                        mov              qword ptr [rsp + 9088], rax
                        mov              qword ptr [rsp + 9096], rdx;         jmp   n142_call_proc_staged_α
n141_keyword_icon_β:                                                          jmp   n138_disjunction_af
.Lx446_0:               .quad            .Lx446_0_s
.Lx446_0_s:             .string          "&clock"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        lea              rsi, [rsp + 9088]
                        call             proc_nmap_dcα;                       jmp   .Lx448_2
.Lx448_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx448_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 9040], rax
                        mov              qword ptr [rsp + 9048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 9040]
                        mov              rdx, qword ptr [rsp + 9048]
.Lx448_29:              mov              qword ptr [rsp + 9040], rax
                        mov              qword ptr [rsp + 9048], rdx
                        cmp              eax, 104;                            je    n138_disjunction_af
                                                                              jmp   n138_disjunction_as
n142_call_proc_staged_β:
                                                                              jmp   n138_disjunction_af
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 8832], 2            # result
                        mov              dword ptr [rsp + 8836], 3
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rsp + 8840], rax;         jmp   n144_disjunction_α
.Lx449_0:               .quad            .Lx449_0_s
.Lx449_0_s:             .string          "col"
#-----------------------------------------------------------------------------------------------------------------------
n144_disjunction_α:     mov              qword ptr [rsp + 8848], 0
                        mov              qword ptr [rsp + 8856], 0
                        mov              dword ptr [rsp + 8864], 0;           jmp   n147_keyword_icon_α
n144_disjunction_as:    mov              eax, dword ptr [rsp + 8864]
                        cmp              eax, 0;                              jne   .Lx451_0
                        mov              rax, qword ptr [rsp + 8880]
                        mov              qword ptr [rsp + 8848], rax
                        mov              rax, qword ptr [rsp + 8888]
                        mov              qword ptr [rsp + 8856], rax;         jmp   n145_call_proc_staged_α
.Lx451_0:               cmp              eax, 1;                              jne   .Lx451_1
                        mov              rax, qword ptr [rsp + 8912]
                        mov              qword ptr [rsp + 8848], rax
                        mov              rax, qword ptr [rsp + 8920]
                        mov              qword ptr [rsp + 8856], rax;         jmp   n145_call_proc_staged_α
.Lx451_1:                                                                     jmp   n145_call_proc_staged_α
n144_disjunction_β:     mov              eax, dword ptr [rsp + 8864]
                        cmp              eax, 0;                              je    n144_disjunction_af
                                                                              jmp   n144_disjunction_af
n144_disjunction_af:    add              dword ptr [rsp + 8864], 1
                        mov              eax, dword ptr [rsp + 8864]
                        cmp              eax, 1;                              je    n146_lit_string_α
                                                                              jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        lea              rsi, [rsp + 8832]
                        lea              rdx, [rsp + 8848]
                        call             proc_kw_dcα;                         jmp   .Lx453_2
.Lx453_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx453_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8768], rax
                        mov              qword ptr [rsp + 8776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8768]
                        mov              rdx, qword ptr [rsp + 8776]
.Lx453_29:              mov              qword ptr [rsp + 8768], rax
                        mov              qword ptr [rsp + 8776], rdx
                        cmp              eax, 104;                            je    n144_disjunction_β
                                                                              jmp   n144_disjunction_β
n145_call_proc_staged_β:
                                                                              jmp   n144_disjunction_β
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 8912], 2            # result
                        mov              dword ptr [rsp + 8916], 8
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 8920], rax;         jmp   n144_disjunction_as
n146_lit_string_β:                                                            jmp   n144_disjunction_af
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n147_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n144_disjunction_af
                        mov              qword ptr [rsp + 8880], rax
                        mov              qword ptr [rsp + 8888], rdx;         jmp   n144_disjunction_as
n147_keyword_icon_β:                                                          jmp   n144_disjunction_af
.Lx455_0:               .quad            .Lx455_0_s
.Lx455_0_s:             .string          "&col"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              qword ptr [rsp + 8672], 2            # result
                        mov              dword ptr [rsp + 8676], 11
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 8680], rax;         jmp   n149_disjunction_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:     mov              qword ptr [rsp + 8688], 0
                        mov              qword ptr [rsp + 8696], 0
                        mov              dword ptr [rsp + 8704], 0;           jmp   n152_keyword_icon_gen_α
n149_disjunction_as:    mov              eax, dword ptr [rsp + 8704]
                        cmp              eax, 0;                              jne   .Lx458_0
                        mov              rax, qword ptr [rsp + 8720]
                        mov              qword ptr [rsp + 8688], rax
                        mov              rax, qword ptr [rsp + 8728]
                        mov              qword ptr [rsp + 8696], rax;         jmp   n150_call_proc_staged_α
.Lx458_0:               cmp              eax, 1;                              jne   .Lx458_1
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 8688], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 8696], rax;         jmp   n150_call_proc_staged_α
.Lx458_1:                                                                     jmp   n150_call_proc_staged_α
n149_disjunction_β:     mov              eax, dword ptr [rsp + 8704]
                        cmp              eax, 0;                              je    n152_keyword_icon_gen_β
                                                                              jmp   n149_disjunction_af
n149_disjunction_af:    add              dword ptr [rsp + 8704], 1
                        mov              eax, dword ptr [rsp + 8704]
                        cmp              eax, 1;                              je    n151_lit_string_α
                                                                              jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        lea              rsi, [rsp + 8672]
                        lea              rdx, [rsp + 8688]
                        call             proc_kw_dcα;                         jmp   .Lx460_2
.Lx460_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx460_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8608], rax
                        mov              qword ptr [rsp + 8616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8608]
                        mov              rdx, qword ptr [rsp + 8616]
.Lx460_29:              mov              qword ptr [rsp + 8608], rax
                        mov              qword ptr [rsp + 8616], rdx
                        cmp              eax, 104;                            je    n149_disjunction_β
                                                                              jmp   n149_disjunction_β
n150_call_proc_staged_β:
                                                                              jmp   n149_disjunction_β
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:      mov              qword ptr [rsp + 8752], 2            # result
                        mov              dword ptr [rsp + 8756], 8
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 8760], rax;         jmp   n149_disjunction_as
n151_lit_string_β:                                                            jmp   n149_disjunction_af
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n152_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 8736], 0
.Lx462_1:               mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              rsi, qword ptr [rsp + 8736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n149_disjunction_af
                        mov              qword ptr [rsp + 8720], rax
                        mov              qword ptr [rsp + 8728], rdx
                        mov              rax, qword ptr [rsp + 8736]
                        add              rax, 1
                        mov              qword ptr [rsp + 8736], rax;         jmp   n149_disjunction_as
n152_keyword_icon_gen_β:
                                                                              jmp   .Lx462_1
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              qword ptr [rsp + 8512], 2            # result
                        mov              dword ptr [rsp + 8516], 7
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 8520], rax;         jmp   n154_disjunction_α
.Lx463_0:               .quad            .Lx463_0_s
.Lx463_0_s:             .string          "control"
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:     mov              qword ptr [rsp + 8528], 0
                        mov              qword ptr [rsp + 8536], 0
                        mov              dword ptr [rsp + 8544], 0;           jmp   n157_keyword_icon_α
n154_disjunction_as:    mov              eax, dword ptr [rsp + 8544]
                        cmp              eax, 0;                              jne   .Lx465_0
                        mov              rax, qword ptr [rsp + 8560]
                        mov              qword ptr [rsp + 8528], rax
                        mov              rax, qword ptr [rsp + 8568]
                        mov              qword ptr [rsp + 8536], rax;         jmp   n155_call_proc_staged_α
.Lx465_0:               cmp              eax, 1;                              jne   .Lx465_1
                        mov              rax, qword ptr [rsp + 8592]
                        mov              qword ptr [rsp + 8528], rax
                        mov              rax, qword ptr [rsp + 8600]
                        mov              qword ptr [rsp + 8536], rax;         jmp   n155_call_proc_staged_α
.Lx465_1:                                                                     jmp   n155_call_proc_staged_α
n154_disjunction_β:     mov              eax, dword ptr [rsp + 8544]
                        cmp              eax, 0;                              je    n154_disjunction_af
                                                                              jmp   n154_disjunction_af
n154_disjunction_af:    add              dword ptr [rsp + 8544], 1
                        mov              eax, dword ptr [rsp + 8544]
                        cmp              eax, 1;                              je    n156_lit_string_α
                                                                              jmp   n158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rsp + 8512]
                        lea              rdx, [rsp + 8528]
                        call             proc_kw_dcα;                         jmp   .Lx467_2
.Lx467_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx467_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8448], rax
                        mov              qword ptr [rsp + 8456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8448]
                        mov              rdx, qword ptr [rsp + 8456]
.Lx467_29:              mov              qword ptr [rsp + 8448], rax
                        mov              qword ptr [rsp + 8456], rdx
                        cmp              eax, 104;                            je    n154_disjunction_β
                                                                              jmp   n154_disjunction_β
n155_call_proc_staged_β:
                                                                              jmp   n154_disjunction_β
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              qword ptr [rsp + 8592], 2            # result
                        mov              dword ptr [rsp + 8596], 8
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 8600], rax;         jmp   n154_disjunction_as
n156_lit_string_β:                                                            jmp   n154_disjunction_af
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n157_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n154_disjunction_af
                        mov              qword ptr [rsp + 8560], rax
                        mov              qword ptr [rsp + 8568], rdx;         jmp   n154_disjunction_as
n157_keyword_icon_β:                                                          jmp   n154_disjunction_af
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "&control"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              qword ptr [rsp + 8352], 2            # result
                        mov              dword ptr [rsp + 8356], 4
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 8360], rax;         jmp   n159_disjunction_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n159_disjunction_α:     mov              qword ptr [rsp + 8368], 0
                        mov              qword ptr [rsp + 8376], 0
                        mov              dword ptr [rsp + 8384], 0;           jmp   n162_keyword_icon_α
n159_disjunction_as:    mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 0;                              jne   .Lx472_0
                        mov              rax, qword ptr [rsp + 8400]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8408]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n160_call_proc_staged_α
.Lx472_0:               cmp              eax, 1;                              jne   .Lx472_1
                        mov              rax, qword ptr [rsp + 8432]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8440]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n160_call_proc_staged_α
.Lx472_1:                                                                     jmp   n160_call_proc_staged_α
n159_disjunction_β:     mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 0;                              je    n159_disjunction_af
                                                                              jmp   n159_disjunction_af
n159_disjunction_af:    add              dword ptr [rsp + 8384], 1
                        mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 1;                              je    n161_lit_string_α
                                                                              jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        lea              rsi, [rsp + 8352]
                        lea              rdx, [rsp + 8368]
                        call             proc_kw_dcα;                         jmp   .Lx474_2
.Lx474_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx474_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8288]
                        mov              rdx, qword ptr [rsp + 8296]
.Lx474_29:              mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx
                        cmp              eax, 104;                            je    n159_disjunction_β
                                                                              jmp   n159_disjunction_β
n160_call_proc_staged_β:
                                                                              jmp   n159_disjunction_β
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              qword ptr [rsp + 8432], 2            # result
                        mov              dword ptr [rsp + 8436], 8
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 8440], rax;         jmp   n159_disjunction_as
n161_lit_string_β:                                                            jmp   n159_disjunction_af
.Lx475_0:               .quad            .Lx475_0_s
.Lx475_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n162_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n159_disjunction_af
                        mov              qword ptr [rsp + 8400], rax
                        mov              qword ptr [rsp + 8408], rdx;         jmp   n159_disjunction_as
n162_keyword_icon_β:                                                          jmp   n159_disjunction_af
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 8192], 2            # result
                        mov              dword ptr [rsp + 8196], 7
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 8200], rax;         jmp   n164_disjunction_α
.Lx477_0:               .quad            .Lx477_0_s
.Lx477_0_s:             .string          "current"
#-----------------------------------------------------------------------------------------------------------------------
n164_disjunction_α:     mov              qword ptr [rsp + 8208], 0
                        mov              qword ptr [rsp + 8216], 0
                        mov              dword ptr [rsp + 8224], 0;           jmp   n167_keyword_icon_α
n164_disjunction_as:    mov              eax, dword ptr [rsp + 8224]
                        cmp              eax, 0;                              jne   .Lx479_0
                        mov              rax, qword ptr [rsp + 8240]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 8248]
                        mov              qword ptr [rsp + 8216], rax;         jmp   n165_call_proc_staged_α
.Lx479_0:               cmp              eax, 1;                              jne   .Lx479_1
                        mov              rax, qword ptr [rsp + 8272]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 8280]
                        mov              qword ptr [rsp + 8216], rax;         jmp   n165_call_proc_staged_α
.Lx479_1:                                                                     jmp   n165_call_proc_staged_α
n164_disjunction_β:     mov              eax, dword ptr [rsp + 8224]
                        cmp              eax, 0;                              je    n164_disjunction_af
                                                                              jmp   n164_disjunction_af
n164_disjunction_af:    add              dword ptr [rsp + 8224], 1
                        mov              eax, dword ptr [rsp + 8224]
                        cmp              eax, 1;                              je    n166_lit_string_α
                                                                              jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_proc_staged_α:
                        lea              rsi, [rsp + 8192]
                        lea              rdx, [rsp + 8208]
                        call             proc_kw_dcα;                         jmp   .Lx481_2
.Lx481_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8128], rax
                        mov              qword ptr [rsp + 8136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8128]
                        mov              rdx, qword ptr [rsp + 8136]
.Lx481_29:              mov              qword ptr [rsp + 8128], rax
                        mov              qword ptr [rsp + 8136], rdx
                        cmp              eax, 104;                            je    n164_disjunction_β
                                                                              jmp   n164_disjunction_β
n165_call_proc_staged_β:
                                                                              jmp   n164_disjunction_β
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              qword ptr [rsp + 8272], 2            # result
                        mov              dword ptr [rsp + 8276], 8
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8280], rax;         jmp   n164_disjunction_as
n166_lit_string_β:                                                            jmp   n164_disjunction_af
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n167_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n164_disjunction_af
                        mov              qword ptr [rsp + 8240], rax
                        mov              qword ptr [rsp + 8248], rdx;         jmp   n164_disjunction_as
n167_keyword_icon_β:                                                          jmp   n164_disjunction_af
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "&current"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              qword ptr [rsp + 7984], 2            # result
                        mov              dword ptr [rsp + 7988], 4
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 7992], rax;         jmp   n169_disjunction_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "date"
#-----------------------------------------------------------------------------------------------------------------------
n169_disjunction_α:     mov              qword ptr [rsp + 8000], 0
                        mov              qword ptr [rsp + 8008], 0
                        mov              dword ptr [rsp + 8016], 0;           jmp   n172_keyword_icon_α
n169_disjunction_as:    mov              eax, dword ptr [rsp + 8016]
                        cmp              eax, 0;                              jne   .Lx486_0
                        mov              rax, qword ptr [rsp + 8032]
                        mov              qword ptr [rsp + 8000], rax
                        mov              rax, qword ptr [rsp + 8040]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n170_call_proc_staged_α
.Lx486_0:               cmp              eax, 1;                              jne   .Lx486_1
                        mov              rax, qword ptr [rsp + 8112]
                        mov              qword ptr [rsp + 8000], rax
                        mov              rax, qword ptr [rsp + 8120]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n170_call_proc_staged_α
.Lx486_1:                                                                     jmp   n170_call_proc_staged_α
n169_disjunction_β:     mov              eax, dword ptr [rsp + 8016]
                        cmp              eax, 0;                              je    n169_disjunction_af
                                                                              jmp   n169_disjunction_af
n169_disjunction_af:    add              dword ptr [rsp + 8016], 1
                        mov              eax, dword ptr [rsp + 8016]
                        cmp              eax, 1;                              je    n171_lit_string_α
                                                                              jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        lea              rsi, [rsp + 7984]
                        lea              rdx, [rsp + 8000]
                        call             proc_kw_dcα;                         jmp   .Lx488_2
.Lx488_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx488_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7920]
                        mov              rdx, qword ptr [rsp + 7928]
.Lx488_29:              mov              qword ptr [rsp + 7920], rax
                        mov              qword ptr [rsp + 7928], rdx
                        cmp              eax, 104;                            je    n169_disjunction_β
                                                                              jmp   n169_disjunction_β
n170_call_proc_staged_β:
                                                                              jmp   n169_disjunction_β
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              qword ptr [rsp + 8112], 2            # result
                        mov              dword ptr [rsp + 8116], 8
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 8120], rax;         jmp   n169_disjunction_as
n171_lit_string_β:                                                            jmp   n169_disjunction_af
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n172_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n169_disjunction_af
                        mov              qword ptr [rsp + 8080], rax
                        mov              qword ptr [rsp + 8088], rdx;         jmp   n173_call_proc_staged_α
n172_keyword_icon_β:                                                          jmp   n169_disjunction_af
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "&date"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        lea              rsi, [rsp + 8080]
                        call             proc_nmap_dcα;                       jmp   .Lx492_2
.Lx492_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx492_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 8032], rax
                        mov              qword ptr [rsp + 8040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8032]
                        mov              rdx, qword ptr [rsp + 8040]
.Lx492_29:              mov              qword ptr [rsp + 8032], rax
                        mov              qword ptr [rsp + 8040], rdx
                        cmp              eax, 104;                            je    n169_disjunction_af
                                                                              jmp   n169_disjunction_as
n173_call_proc_staged_β:
                                                                              jmp   n169_disjunction_af
.Lx492_0:               .quad            .Lx492_0_s
.Lx492_0_s:             .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              qword ptr [rsp + 7792], 2            # result
                        mov              dword ptr [rsp + 7796], 8
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 7800], rax;         jmp   n175_disjunction_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "dateline"
#-----------------------------------------------------------------------------------------------------------------------
n175_disjunction_α:     mov              qword ptr [rsp + 7808], 0
                        mov              qword ptr [rsp + 7816], 0
                        mov              dword ptr [rsp + 7824], 0;           jmp   n178_keyword_icon_α
n175_disjunction_as:    mov              eax, dword ptr [rsp + 7824]
                        cmp              eax, 0;                              jne   .Lx495_0
                        mov              rax, qword ptr [rsp + 7840]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 7848]
                        mov              qword ptr [rsp + 7816], rax;         jmp   n176_call_proc_staged_α
.Lx495_0:               cmp              eax, 1;                              jne   .Lx495_1
                        mov              rax, qword ptr [rsp + 7904]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 7912]
                        mov              qword ptr [rsp + 7816], rax;         jmp   n176_call_proc_staged_α
.Lx495_1:                                                                     jmp   n176_call_proc_staged_α
n175_disjunction_β:     mov              eax, dword ptr [rsp + 7824]
                        cmp              eax, 0;                              je    n175_disjunction_af
                                                                              jmp   n175_disjunction_af
n175_disjunction_af:    add              dword ptr [rsp + 7824], 1
                        mov              eax, dword ptr [rsp + 7824]
                        cmp              eax, 1;                              je    n177_lit_string_α
                                                                              jmp   n181_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        lea              rsi, [rsp + 7792]
                        lea              rdx, [rsp + 7808]
                        call             proc_kw_dcα;                         jmp   .Lx497_2
.Lx497_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx497_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7728], rax
                        mov              qword ptr [rsp + 7736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7728]
                        mov              rdx, qword ptr [rsp + 7736]
.Lx497_29:              mov              qword ptr [rsp + 7728], rax
                        mov              qword ptr [rsp + 7736], rdx
                        cmp              eax, 104;                            je    n175_disjunction_β
                                                                              jmp   n175_disjunction_β
n176_call_proc_staged_β:
                                                                              jmp   n175_disjunction_β
.Lx497_0:               .quad            .Lx497_0_s
.Lx497_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              qword ptr [rsp + 7904], 2            # result
                        mov              dword ptr [rsp + 7908], 8
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 7912], rax;         jmp   n175_disjunction_as
n177_lit_string_β:                                                            jmp   n175_disjunction_af
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n178_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n175_disjunction_af
                        mov              qword ptr [rsp + 7856], rax
                        mov              qword ptr [rsp + 7864], rdx;         jmp   n179_lit_charset_α
n178_keyword_icon_β:                                                          jmp   n175_disjunction_af
.Lx499_0:               .quad            .Lx499_0_s
.Lx499_0_s:             .string          "&dateline"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_charset_α:     mov              qword ptr [rsp + 7888], 2            # result
                        mov              dword ptr [rsp + 7892], -1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 7896], rax;         jmp   n180_binop_α
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          " ,:EILRadfkmwxy"
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:           mov              rdi, qword ptr [rsp + 7856]
                        mov              rsi, qword ptr [rsp + 7864]
                        mov              rdx, qword ptr [rsp + 7888]
                        mov              rcx, qword ptr [rsp + 7896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cinter@PLT
                        cmp              eax, 104;                            je    n175_disjunction_af
                        mov              qword ptr [rsp + 7840], rax
                        mov              qword ptr [rsp + 7848], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_disjunction_as
n180_binop_β:                                                                 jmp   n175_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              qword ptr [rsp + 7648], 2            # result
                        mov              dword ptr [rsp + 7652], 6
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 7656], rax;         jmp   n182_disjunction_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "digits"
#-----------------------------------------------------------------------------------------------------------------------
n182_disjunction_α:     mov              qword ptr [rsp + 7664], 0
                        mov              qword ptr [rsp + 7672], 0
                        mov              dword ptr [rsp + 7680], 0;           jmp   n185_lit_charset_α
n182_disjunction_as:    mov              eax, dword ptr [rsp + 7680]
                        cmp              eax, 0;                              jne   .Lx504_0
                        mov              rax, qword ptr [rsp + 7696]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7704]
                        mov              qword ptr [rsp + 7672], rax;         jmp   n183_call_proc_staged_α
.Lx504_0:               cmp              eax, 1;                              jne   .Lx504_1
                        mov              rax, qword ptr [rsp + 7712]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7720]
                        mov              qword ptr [rsp + 7672], rax;         jmp   n183_call_proc_staged_α
.Lx504_1:                                                                     jmp   n183_call_proc_staged_α
n182_disjunction_β:     mov              eax, dword ptr [rsp + 7680]
                        cmp              eax, 0;                              je    n182_disjunction_af
                                                                              jmp   n182_disjunction_af
n182_disjunction_af:    add              dword ptr [rsp + 7680], 1
                        mov              eax, dword ptr [rsp + 7680]
                        cmp              eax, 1;                              je    n184_lit_string_α
                                                                              jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        lea              rsi, [rsp + 7648]
                        lea              rdx, [rsp + 7664]
                        call             proc_kw_dcα;                         jmp   .Lx506_2
.Lx506_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx506_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7584], rax
                        mov              qword ptr [rsp + 7592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7584]
                        mov              rdx, qword ptr [rsp + 7592]
.Lx506_29:              mov              qword ptr [rsp + 7584], rax
                        mov              qword ptr [rsp + 7592], rdx
                        cmp              eax, 104;                            je    n182_disjunction_β
                                                                              jmp   n182_disjunction_β
n183_call_proc_staged_β:
                                                                              jmp   n182_disjunction_β
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              qword ptr [rsp + 7712], 2            # result
                        mov              dword ptr [rsp + 7716], 8
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 7720], rax;         jmp   n182_disjunction_as
n184_lit_string_β:                                                            jmp   n182_disjunction_af
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_charset_α:     mov              qword ptr [rsp + 7696], 2            # result
                        mov              dword ptr [rsp + 7700], -1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 7704], rax;         jmp   n182_disjunction_as
n185_lit_charset_β:                                                           jmp   n182_disjunction_af
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 7488], 2            # result
                        mov              dword ptr [rsp + 7492], 4
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 7496], rax;         jmp   n187_disjunction_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "dump"
#-----------------------------------------------------------------------------------------------------------------------
n187_disjunction_α:     mov              qword ptr [rsp + 7504], 0
                        mov              qword ptr [rsp + 7512], 0
                        mov              dword ptr [rsp + 7520], 0;           jmp   n190_keyword_icon_α
n187_disjunction_as:    mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 0;                              jne   .Lx511_0
                        mov              rax, qword ptr [rsp + 7536]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7544]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n188_call_proc_staged_α
.Lx511_0:               cmp              eax, 1;                              jne   .Lx511_1
                        mov              rax, qword ptr [rsp + 7568]
                        mov              qword ptr [rsp + 7504], rax
                        mov              rax, qword ptr [rsp + 7576]
                        mov              qword ptr [rsp + 7512], rax;         jmp   n188_call_proc_staged_α
.Lx511_1:                                                                     jmp   n188_call_proc_staged_α
n187_disjunction_β:     mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 0;                              je    n187_disjunction_af
                                                                              jmp   n187_disjunction_af
n187_disjunction_af:    add              dword ptr [rsp + 7520], 1
                        mov              eax, dword ptr [rsp + 7520]
                        cmp              eax, 1;                              je    n189_lit_string_α
                                                                              jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              rsi, [rsp + 7488]
                        lea              rdx, [rsp + 7504]
                        call             proc_kw_dcα;                         jmp   .Lx513_2
.Lx513_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx513_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7424]
                        mov              rdx, qword ptr [rsp + 7432]
.Lx513_29:              mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              eax, 104;                            je    n187_disjunction_β
                                                                              jmp   n187_disjunction_β
n188_call_proc_staged_β:
                                                                              jmp   n187_disjunction_β
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              qword ptr [rsp + 7568], 2            # result
                        mov              dword ptr [rsp + 7572], 8
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 7576], rax;         jmp   n187_disjunction_as
n189_lit_string_β:                                                            jmp   n187_disjunction_af
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n190_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n187_disjunction_af
                        mov              qword ptr [rsp + 7536], rax
                        mov              qword ptr [rsp + 7544], rdx;         jmp   n187_disjunction_as
n190_keyword_icon_β:                                                          jmp   n187_disjunction_af
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "&dump"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              qword ptr [rsp + 7328], 2            # result
                        mov              dword ptr [rsp + 7332], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rsp + 7336], rax;         jmp   n192_disjunction_α
.Lx516_0:               .quad            .Lx516_0_s
.Lx516_0_s:             .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n192_disjunction_α:     mov              qword ptr [rsp + 7344], 0
                        mov              qword ptr [rsp + 7352], 0
                        mov              dword ptr [rsp + 7360], 0;           jmp   n195_keyword_icon_α
n192_disjunction_as:    mov              eax, dword ptr [rsp + 7360]
                        cmp              eax, 0;                              jne   .Lx518_0
                        mov              rax, qword ptr [rsp + 7376]
                        mov              qword ptr [rsp + 7344], rax
                        mov              rax, qword ptr [rsp + 7384]
                        mov              qword ptr [rsp + 7352], rax;         jmp   n193_call_proc_staged_α
.Lx518_0:               cmp              eax, 1;                              jne   .Lx518_1
                        mov              rax, qword ptr [rsp + 7408]
                        mov              qword ptr [rsp + 7344], rax
                        mov              rax, qword ptr [rsp + 7416]
                        mov              qword ptr [rsp + 7352], rax;         jmp   n193_call_proc_staged_α
.Lx518_1:                                                                     jmp   n193_call_proc_staged_α
n192_disjunction_β:     mov              eax, dword ptr [rsp + 7360]
                        cmp              eax, 0;                              je    n192_disjunction_af
                                                                              jmp   n192_disjunction_af
n192_disjunction_af:    add              dword ptr [rsp + 7360], 1
                        mov              eax, dword ptr [rsp + 7360]
                        cmp              eax, 1;                              je    n194_lit_string_α
                                                                              jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rsp + 7328]
                        lea              rdx, [rsp + 7344]
                        call             proc_kw_dcα;                         jmp   .Lx520_2
.Lx520_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx520_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7264]
                        mov              rdx, qword ptr [rsp + 7272]
.Lx520_29:              mov              qword ptr [rsp + 7264], rax
                        mov              qword ptr [rsp + 7272], rdx
                        cmp              eax, 104;                            je    n192_disjunction_β
                                                                              jmp   n192_disjunction_β
n193_call_proc_staged_β:
                                                                              jmp   n192_disjunction_β
.Lx520_0:               .quad            .Lx520_0_s
.Lx520_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              qword ptr [rsp + 7408], 2            # result
                        mov              dword ptr [rsp + 7412], 8
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rsp + 7416], rax;         jmp   n192_disjunction_as
n194_lit_string_β:                                                            jmp   n192_disjunction_af
.Lx521_0:               .quad            .Lx521_0_s
.Lx521_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n195_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n192_disjunction_af
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx;         jmp   n192_disjunction_as
n195_keyword_icon_β:                                                          jmp   n192_disjunction_af
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 7168], 2            # result
                        mov              dword ptr [rsp + 7172], 5
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rsp + 7176], rax;         jmp   n197_disjunction_α
.Lx523_0:               .quad            .Lx523_0_s
.Lx523_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n197_disjunction_α:     mov              qword ptr [rsp + 7184], 0
                        mov              qword ptr [rsp + 7192], 0
                        mov              dword ptr [rsp + 7200], 0;           jmp   n200_keyword_icon_α
n197_disjunction_as:    mov              eax, dword ptr [rsp + 7200]
                        cmp              eax, 0;                              jne   .Lx525_0
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7192], rax;         jmp   n198_call_proc_staged_α
.Lx525_0:               cmp              eax, 1;                              jne   .Lx525_1
                        mov              rax, qword ptr [rsp + 7248]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7256]
                        mov              qword ptr [rsp + 7192], rax;         jmp   n198_call_proc_staged_α
.Lx525_1:                                                                     jmp   n198_call_proc_staged_α
n197_disjunction_β:     mov              eax, dword ptr [rsp + 7200]
                        cmp              eax, 0;                              je    n197_disjunction_af
                                                                              jmp   n197_disjunction_af
n197_disjunction_af:    add              dword ptr [rsp + 7200], 1
                        mov              eax, dword ptr [rsp + 7200]
                        cmp              eax, 1;                              je    n199_lit_string_α
                                                                              jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rsp + 7168]
                        lea              rdx, [rsp + 7184]
                        call             proc_kw_dcα;                         jmp   .Lx527_2
.Lx527_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx527_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 7104]
                        mov              rdx, qword ptr [rsp + 7112]
.Lx527_29:              mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        cmp              eax, 104;                            je    n197_disjunction_β
                                                                              jmp   n197_disjunction_β
n198_call_proc_staged_β:
                                                                              jmp   n197_disjunction_β
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              qword ptr [rsp + 7248], 2            # result
                        mov              dword ptr [rsp + 7252], 8
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n197_disjunction_as
n199_lit_string_β:                                                            jmp   n197_disjunction_af
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n200_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n197_disjunction_af
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx;         jmp   n197_disjunction_as
n200_keyword_icon_β:                                                          jmp   n197_disjunction_af
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              qword ptr [rsp + 7008], 2            # result
                        mov              dword ptr [rsp + 7012], 11
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n202_disjunction_α
.Lx530_0:               .quad            .Lx530_0_s
.Lx530_0_s:             .string          "errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n202_disjunction_α:     mov              qword ptr [rsp + 7024], 0
                        mov              qword ptr [rsp + 7032], 0
                        mov              dword ptr [rsp + 7040], 0;           jmp   n205_keyword_icon_α
n202_disjunction_as:    mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 0;                              jne   .Lx532_0
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n203_call_proc_staged_α
.Lx532_0:               cmp              eax, 1;                              jne   .Lx532_1
                        mov              rax, qword ptr [rsp + 7088]
                        mov              qword ptr [rsp + 7024], rax
                        mov              rax, qword ptr [rsp + 7096]
                        mov              qword ptr [rsp + 7032], rax;         jmp   n203_call_proc_staged_α
.Lx532_1:                                                                     jmp   n203_call_proc_staged_α
n202_disjunction_β:     mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 0;                              je    n202_disjunction_af
                                                                              jmp   n202_disjunction_af
n202_disjunction_af:    add              dword ptr [rsp + 7040], 1
                        mov              eax, dword ptr [rsp + 7040]
                        cmp              eax, 1;                              je    n204_lit_string_α
                                                                              jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        lea              rsi, [rsp + 7008]
                        lea              rdx, [rsp + 7024]
                        call             proc_kw_dcα;                         jmp   .Lx534_2
.Lx534_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx534_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6944]
                        mov              rdx, qword ptr [rsp + 6952]
.Lx534_29:              mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        cmp              eax, 104;                            je    n202_disjunction_β
                                                                              jmp   n202_disjunction_β
n203_call_proc_staged_β:
                                                                              jmp   n202_disjunction_β
.Lx534_0:               .quad            .Lx534_0_s
.Lx534_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              qword ptr [rsp + 7088], 2            # result
                        mov              dword ptr [rsp + 7092], 8
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 7096], rax;         jmp   n202_disjunction_as
n204_lit_string_β:                                                            jmp   n202_disjunction_af
.Lx535_0:               .quad            .Lx535_0_s
.Lx535_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n205_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n202_disjunction_af
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx;         jmp   n202_disjunction_as
n205_keyword_icon_β:                                                          jmp   n202_disjunction_af
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              qword ptr [rsp + 6848], 2            # result
                        mov              dword ptr [rsp + 6852], 9
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 6856], rax;         jmp   n207_disjunction_α
.Lx537_0:               .quad            .Lx537_0_s
.Lx537_0_s:             .string          "errortext"
#-----------------------------------------------------------------------------------------------------------------------
n207_disjunction_α:     mov              qword ptr [rsp + 6864], 0
                        mov              qword ptr [rsp + 6872], 0
                        mov              dword ptr [rsp + 6880], 0;           jmp   n210_keyword_icon_α
n207_disjunction_as:    mov              eax, dword ptr [rsp + 6880]
                        cmp              eax, 0;                              jne   .Lx539_0
                        mov              rax, qword ptr [rsp + 6896]
                        mov              qword ptr [rsp + 6864], rax
                        mov              rax, qword ptr [rsp + 6904]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n208_call_proc_staged_α
.Lx539_0:               cmp              eax, 1;                              jne   .Lx539_1
                        mov              rax, qword ptr [rsp + 6928]
                        mov              qword ptr [rsp + 6864], rax
                        mov              rax, qword ptr [rsp + 6936]
                        mov              qword ptr [rsp + 6872], rax;         jmp   n208_call_proc_staged_α
.Lx539_1:                                                                     jmp   n208_call_proc_staged_α
n207_disjunction_β:     mov              eax, dword ptr [rsp + 6880]
                        cmp              eax, 0;                              je    n207_disjunction_af
                                                                              jmp   n207_disjunction_af
n207_disjunction_af:    add              dword ptr [rsp + 6880], 1
                        mov              eax, dword ptr [rsp + 6880]
                        cmp              eax, 1;                              je    n209_lit_string_α
                                                                              jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        lea              rsi, [rsp + 6848]
                        lea              rdx, [rsp + 6864]
                        call             proc_kw_dcα;                         jmp   .Lx541_2
.Lx541_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx541_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6784]
                        mov              rdx, qword ptr [rsp + 6792]
.Lx541_29:              mov              qword ptr [rsp + 6784], rax
                        mov              qword ptr [rsp + 6792], rdx
                        cmp              eax, 104;                            je    n207_disjunction_β
                                                                              jmp   n207_disjunction_β
n208_call_proc_staged_β:
                                                                              jmp   n207_disjunction_β
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              qword ptr [rsp + 6928], 2            # result
                        mov              dword ptr [rsp + 6932], 8
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 6936], rax;         jmp   n207_disjunction_as
n209_lit_string_β:                                                            jmp   n207_disjunction_af
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n210_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n207_disjunction_af
                        mov              qword ptr [rsp + 6896], rax
                        mov              qword ptr [rsp + 6904], rdx;         jmp   n207_disjunction_as
n210_keyword_icon_β:                                                          jmp   n207_disjunction_af
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 6688], 2            # result
                        mov              dword ptr [rsp + 6692], 10
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 6696], rax;         jmp   n212_disjunction_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          "errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n212_disjunction_α:     mov              qword ptr [rsp + 6704], 0
                        mov              qword ptr [rsp + 6712], 0
                        mov              dword ptr [rsp + 6720], 0;           jmp   n215_keyword_icon_α
n212_disjunction_as:    mov              eax, dword ptr [rsp + 6720]
                        cmp              eax, 0;                              jne   .Lx546_0
                        mov              rax, qword ptr [rsp + 6736]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6744]
                        mov              qword ptr [rsp + 6712], rax;         jmp   n213_call_proc_staged_α
.Lx546_0:               cmp              eax, 1;                              jne   .Lx546_1
                        mov              rax, qword ptr [rsp + 6768]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 6776]
                        mov              qword ptr [rsp + 6712], rax;         jmp   n213_call_proc_staged_α
.Lx546_1:                                                                     jmp   n213_call_proc_staged_α
n212_disjunction_β:     mov              eax, dword ptr [rsp + 6720]
                        cmp              eax, 0;                              je    n212_disjunction_af
                                                                              jmp   n212_disjunction_af
n212_disjunction_af:    add              dword ptr [rsp + 6720], 1
                        mov              eax, dword ptr [rsp + 6720]
                        cmp              eax, 1;                              je    n214_lit_string_α
                                                                              jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        lea              rsi, [rsp + 6688]
                        lea              rdx, [rsp + 6704]
                        call             proc_kw_dcα;                         jmp   .Lx548_2
.Lx548_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx548_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6624]
                        mov              rdx, qword ptr [rsp + 6632]
.Lx548_29:              mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                        cmp              eax, 104;                            je    n212_disjunction_β
                                                                              jmp   n212_disjunction_β
n213_call_proc_staged_β:
                                                                              jmp   n212_disjunction_β
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              qword ptr [rsp + 6768], 2            # result
                        mov              dword ptr [rsp + 6772], 8
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 6776], rax;         jmp   n212_disjunction_as
n214_lit_string_β:                                                            jmp   n212_disjunction_af
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n215_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n212_disjunction_af
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx;         jmp   n212_disjunction_as
n215_keyword_icon_β:                                                          jmp   n212_disjunction_af
.Lx550_0:               .quad            .Lx550_0_s
.Lx550_0_s:             .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              qword ptr [rsp + 6528], 2            # result
                        mov              dword ptr [rsp + 6532], 6
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 6536], rax;         jmp   n217_disjunction_α
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "errout"
#-----------------------------------------------------------------------------------------------------------------------
n217_disjunction_α:     mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0
                        mov              dword ptr [rsp + 6560], 0;           jmp   n220_keyword_icon_α
n217_disjunction_as:    mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 0;                              jne   .Lx553_0
                        mov              rax, qword ptr [rsp + 6576]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6584]
                        mov              qword ptr [rsp + 6552], rax;         jmp   n218_call_proc_staged_α
.Lx553_0:               cmp              eax, 1;                              jne   .Lx553_1
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6544], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6552], rax;         jmp   n218_call_proc_staged_α
.Lx553_1:                                                                     jmp   n218_call_proc_staged_α
n217_disjunction_β:     mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 0;                              je    n217_disjunction_af
                                                                              jmp   n217_disjunction_af
n217_disjunction_af:    add              dword ptr [rsp + 6560], 1
                        mov              eax, dword ptr [rsp + 6560]
                        cmp              eax, 1;                              je    n219_lit_string_α
                                                                              jmp   n221_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_proc_staged_α:
                        lea              rsi, [rsp + 6528]
                        lea              rdx, [rsp + 6544]
                        call             proc_kw_dcα;                         jmp   .Lx555_2
.Lx555_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx555_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6464], rax
                        mov              qword ptr [rsp + 6472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6464]
                        mov              rdx, qword ptr [rsp + 6472]
.Lx555_29:              mov              qword ptr [rsp + 6464], rax
                        mov              qword ptr [rsp + 6472], rdx
                        cmp              eax, 104;                            je    n217_disjunction_β
                                                                              jmp   n217_disjunction_β
n218_call_proc_staged_β:
                                                                              jmp   n217_disjunction_β
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              qword ptr [rsp + 6608], 2            # result
                        mov              dword ptr [rsp + 6612], 8
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 6616], rax;         jmp   n217_disjunction_as
n219_lit_string_β:                                                            jmp   n217_disjunction_af
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n220_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n217_disjunction_af
                        mov              qword ptr [rsp + 6576], rax
                        mov              qword ptr [rsp + 6584], rdx;         jmp   n217_disjunction_as
n220_keyword_icon_β:                                                          jmp   n217_disjunction_af
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 6368], 2            # result
                        mov              dword ptr [rsp + 6372], 4
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 6376], rax;         jmp   n222_disjunction_α
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n222_disjunction_α:     mov              qword ptr [rsp + 6384], 0
                        mov              qword ptr [rsp + 6392], 0
                        mov              dword ptr [rsp + 6400], 0;           jmp   n225_keyword_icon_α
n222_disjunction_as:    mov              eax, dword ptr [rsp + 6400]
                        cmp              eax, 0;                              jne   .Lx560_0
                        mov              rax, qword ptr [rsp + 6416]
                        mov              qword ptr [rsp + 6384], rax
                        mov              rax, qword ptr [rsp + 6424]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n223_call_proc_staged_α
.Lx560_0:               cmp              eax, 1;                              jne   .Lx560_1
                        mov              rax, qword ptr [rsp + 6448]
                        mov              qword ptr [rsp + 6384], rax
                        mov              rax, qword ptr [rsp + 6456]
                        mov              qword ptr [rsp + 6392], rax;         jmp   n223_call_proc_staged_α
.Lx560_1:                                                                     jmp   n223_call_proc_staged_α
n222_disjunction_β:     mov              eax, dword ptr [rsp + 6400]
                        cmp              eax, 0;                              je    n222_disjunction_af
                                                                              jmp   n222_disjunction_af
n222_disjunction_af:    add              dword ptr [rsp + 6400], 1
                        mov              eax, dword ptr [rsp + 6400]
                        cmp              eax, 1;                              je    n224_lit_string_α
                                                                              jmp   n226_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rsp + 6368]
                        lea              rdx, [rsp + 6384]
                        call             proc_kw_dcα;                         jmp   .Lx562_2
.Lx562_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx562_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6304]
                        mov              rdx, qword ptr [rsp + 6312]
.Lx562_29:              mov              qword ptr [rsp + 6304], rax
                        mov              qword ptr [rsp + 6312], rdx
                        cmp              eax, 104;                            je    n222_disjunction_β
                                                                              jmp   n222_disjunction_β
n223_call_proc_staged_β:
                                                                              jmp   n222_disjunction_β
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              qword ptr [rsp + 6448], 2            # result
                        mov              dword ptr [rsp + 6452], 8
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 6456], rax;         jmp   n222_disjunction_as
n224_lit_string_β:                                                            jmp   n222_disjunction_af
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n225_keyword_icon_α:                                                          jmp   n222_disjunction_af
n225_keyword_icon_β:                                                          jmp   n222_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:      mov              qword ptr [rsp + 6176], 2            # result
                        mov              dword ptr [rsp + 6180], 8
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 6184], rax;         jmp   n227_disjunction_α
.Lx565_0:               .quad            .Lx565_0_s
.Lx565_0_s:             .string          "features"
#-----------------------------------------------------------------------------------------------------------------------
n227_disjunction_α:     mov              qword ptr [rsp + 6192], 0
                        mov              qword ptr [rsp + 6200], 0
                        mov              dword ptr [rsp + 6208], 0;           jmp   n230_lit_string_α
n227_disjunction_as:    mov              eax, dword ptr [rsp + 6208]
                        cmp              eax, 0;                              jne   .Lx567_0
                        mov              rax, qword ptr [rsp + 6224]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6232]
                        mov              qword ptr [rsp + 6200], rax;         jmp   n228_call_proc_staged_α
.Lx567_0:               cmp              eax, 1;                              jne   .Lx567_1
                        mov              rax, qword ptr [rsp + 6288]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6200], rax;         jmp   n228_call_proc_staged_α
.Lx567_1:                                                                     jmp   n228_call_proc_staged_α
n227_disjunction_β:     mov              eax, dword ptr [rsp + 6208]
                        cmp              eax, 0;                              je    n231_keyword_icon_gen_β
                                                                              jmp   n227_disjunction_af
n227_disjunction_af:    add              dword ptr [rsp + 6208], 1
                        mov              eax, dword ptr [rsp + 6208]
                        cmp              eax, 1;                              je    n229_lit_string_α
                                                                              jmp   n233_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        lea              rsi, [rsp + 6176]
                        lea              rdx, [rsp + 6192]
                        call             proc_kw_dcα;                         jmp   .Lx569_2
.Lx569_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx569_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 6112]
                        mov              rdx, qword ptr [rsp + 6120]
.Lx569_29:              mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        cmp              eax, 104;                            je    n227_disjunction_β
                                                                              jmp   n227_disjunction_β
n228_call_proc_staged_β:
                                                                              jmp   n227_disjunction_β
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              qword ptr [rsp + 6288], 2            # result
                        mov              dword ptr [rsp + 6292], 8
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n227_disjunction_as
n229_lit_string_β:                                                            jmp   n227_disjunction_af
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              qword ptr [rsp + 6240], 2            # result
                        mov              dword ptr [rsp + 6244], 9
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 6248], rax;         jmp   n231_keyword_icon_gen_α
n230_lit_string_β:                                                            jmp   n227_disjunction_af
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n231_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 6272], 0
.Lx572_1:               mov              rdi, qword ptr [rip + .Lx572_0]
                        mov              rsi, qword ptr [rsp + 6272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n227_disjunction_af
                        mov              qword ptr [rsp + 6256], rax
                        mov              qword ptr [rsp + 6264], rdx
                        mov              rax, qword ptr [rsp + 6272]
                        add              rax, 1
                        mov              qword ptr [rsp + 6272], rax;         jmp   n232_binop_test_α
n231_keyword_icon_gen_β:
                                                                              jmp   .Lx572_1
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_test_α:      mov              rdi, qword ptr [rsp + 6240]
                        mov              rsi, qword ptr [rsp + 6248]
                        mov              rdx, qword ptr [rsp + 6256]
                        mov              rcx, qword ptr [rsp + 6264]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n231_keyword_icon_gen_β
                        mov              rdi, qword ptr [rsp + 6256]
                        mov              rsi, qword ptr [rsp + 6264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 6224], rax
                        mov              qword ptr [rsp + 6232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_disjunction_as
n232_binop_test_β:                                                            jmp   n231_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              qword ptr [rsp + 6016], 2            # result
                        mov              dword ptr [rsp + 6020], 5
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 6024], rax;         jmp   n234_disjunction_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n234_disjunction_α:     mov              qword ptr [rsp + 6032], 0
                        mov              qword ptr [rsp + 6040], 0
                        mov              dword ptr [rsp + 6048], 0;           jmp   n237_keyword_icon_α
n234_disjunction_as:    mov              eax, dword ptr [rsp + 6048]
                        cmp              eax, 0;                              jne   .Lx576_0
                        mov              rax, qword ptr [rsp + 6064]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6072]
                        mov              qword ptr [rsp + 6040], rax;         jmp   n235_call_proc_staged_α
.Lx576_0:               cmp              eax, 1;                              jne   .Lx576_1
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6040], rax;         jmp   n235_call_proc_staged_α
.Lx576_1:                                                                     jmp   n235_call_proc_staged_α
n234_disjunction_β:     mov              eax, dword ptr [rsp + 6048]
                        cmp              eax, 0;                              je    n234_disjunction_af
                                                                              jmp   n234_disjunction_af
n234_disjunction_af:    add              dword ptr [rsp + 6048], 1
                        mov              eax, dword ptr [rsp + 6048]
                        cmp              eax, 1;                              je    n236_lit_string_α
                                                                              jmp   n238_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        lea              rsi, [rsp + 6016]
                        lea              rdx, [rsp + 6032]
                        call             proc_kw_dcα;                         jmp   .Lx578_2
.Lx578_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx578_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5952]
                        mov              rdx, qword ptr [rsp + 5960]
.Lx578_29:              mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx
                        cmp              eax, 104;                            je    n234_disjunction_β
                                                                              jmp   n234_disjunction_β
n235_call_proc_staged_β:
                                                                              jmp   n234_disjunction_β
.Lx578_0:               .quad            .Lx578_0_s
.Lx578_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              qword ptr [rsp + 6096], 2            # result
                        mov              dword ptr [rsp + 6100], 8
                        mov              rax, qword ptr [rip + .Lx579_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n234_disjunction_as
n236_lit_string_β:                                                            jmp   n234_disjunction_af
.Lx579_0:               .quad            .Lx579_0_s
.Lx579_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n237_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n234_disjunction_af
                        mov              qword ptr [rsp + 6064], rax
                        mov              qword ptr [rsp + 6072], rdx;         jmp   n234_disjunction_as
n237_keyword_icon_β:                                                          jmp   n234_disjunction_af
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              qword ptr [rsp + 5856], 2            # result
                        mov              dword ptr [rsp + 5860], 8
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 5864], rax;         jmp   n239_disjunction_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "interval"
#-----------------------------------------------------------------------------------------------------------------------
n239_disjunction_α:     mov              qword ptr [rsp + 5872], 0
                        mov              qword ptr [rsp + 5880], 0
                        mov              dword ptr [rsp + 5888], 0;           jmp   n242_keyword_icon_α
n239_disjunction_as:    mov              eax, dword ptr [rsp + 5888]
                        cmp              eax, 0;                              jne   .Lx583_0
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5880], rax;         jmp   n240_call_proc_staged_α
.Lx583_0:               cmp              eax, 1;                              jne   .Lx583_1
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 5880], rax;         jmp   n240_call_proc_staged_α
.Lx583_1:                                                                     jmp   n240_call_proc_staged_α
n239_disjunction_β:     mov              eax, dword ptr [rsp + 5888]
                        cmp              eax, 0;                              je    n239_disjunction_af
                                                                              jmp   n239_disjunction_af
n239_disjunction_af:    add              dword ptr [rsp + 5888], 1
                        mov              eax, dword ptr [rsp + 5888]
                        cmp              eax, 1;                              je    n241_lit_string_α
                                                                              jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_call_proc_staged_α:
                        lea              rsi, [rsp + 5856]
                        lea              rdx, [rsp + 5872]
                        call             proc_kw_dcα;                         jmp   .Lx585_2
.Lx585_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx585_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5792]
                        mov              rdx, qword ptr [rsp + 5800]
.Lx585_29:              mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx
                        cmp              eax, 104;                            je    n239_disjunction_β
                                                                              jmp   n239_disjunction_β
n240_call_proc_staged_β:
                                                                              jmp   n239_disjunction_β
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              qword ptr [rsp + 5936], 2            # result
                        mov              dword ptr [rsp + 5940], 8
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 5944], rax;         jmp   n239_disjunction_as
n241_lit_string_β:                                                            jmp   n239_disjunction_af
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n242_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n239_disjunction_af
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx;         jmp   n239_disjunction_as
n242_keyword_icon_β:                                                          jmp   n239_disjunction_af
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          "&interval"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              qword ptr [rsp + 5712], 2            # result
                        mov              dword ptr [rsp + 5716], 5
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n244_disjunction_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          "lcase"
#-----------------------------------------------------------------------------------------------------------------------
n244_disjunction_α:     mov              qword ptr [rsp + 5728], 0
                        mov              qword ptr [rsp + 5736], 0
                        mov              dword ptr [rsp + 5744], 0;           jmp   n247_lit_charset_α
n244_disjunction_as:    mov              eax, dword ptr [rsp + 5744]
                        cmp              eax, 0;                              jne   .Lx590_0
                        mov              rax, qword ptr [rsp + 5760]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5768]
                        mov              qword ptr [rsp + 5736], rax;         jmp   n245_call_proc_staged_α
.Lx590_0:               cmp              eax, 1;                              jne   .Lx590_1
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5736], rax;         jmp   n245_call_proc_staged_α
.Lx590_1:                                                                     jmp   n245_call_proc_staged_α
n244_disjunction_β:     mov              eax, dword ptr [rsp + 5744]
                        cmp              eax, 0;                              je    n244_disjunction_af
                                                                              jmp   n244_disjunction_af
n244_disjunction_af:    add              dword ptr [rsp + 5744], 1
                        mov              eax, dword ptr [rsp + 5744]
                        cmp              eax, 1;                              je    n246_lit_string_α
                                                                              jmp   n248_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        lea              rsi, [rsp + 5712]
                        lea              rdx, [rsp + 5728]
                        call             proc_kw_dcα;                         jmp   .Lx592_2
.Lx592_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx592_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5648]
                        mov              rdx, qword ptr [rsp + 5656]
.Lx592_29:              mov              qword ptr [rsp + 5648], rax
                        mov              qword ptr [rsp + 5656], rdx
                        cmp              eax, 104;                            je    n244_disjunction_β
                                                                              jmp   n244_disjunction_β
n245_call_proc_staged_β:
                                                                              jmp   n244_disjunction_β
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 8
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n244_disjunction_as
n246_lit_string_β:                                                            jmp   n244_disjunction_af
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_charset_α:     mov              qword ptr [rsp + 5760], 2            # result
                        mov              dword ptr [rsp + 5764], -1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 5768], rax;         jmp   n244_disjunction_as
n247_lit_charset_β:                                                           jmp   n244_disjunction_af
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              qword ptr [rsp + 5552], 2            # result
                        mov              dword ptr [rsp + 5556], 5
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n249_disjunction_α
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "ldrag"
#-----------------------------------------------------------------------------------------------------------------------
n249_disjunction_α:     mov              qword ptr [rsp + 5568], 0
                        mov              qword ptr [rsp + 5576], 0
                        mov              dword ptr [rsp + 5584], 0;           jmp   n252_keyword_icon_α
n249_disjunction_as:    mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 0;                              jne   .Lx597_0
                        mov              rax, qword ptr [rsp + 5600]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5608]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n250_call_proc_staged_α
.Lx597_0:               cmp              eax, 1;                              jne   .Lx597_1
                        mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5568], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n250_call_proc_staged_α
.Lx597_1:                                                                     jmp   n250_call_proc_staged_α
n249_disjunction_β:     mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 0;                              je    n249_disjunction_af
                                                                              jmp   n249_disjunction_af
n249_disjunction_af:    add              dword ptr [rsp + 5584], 1
                        mov              eax, dword ptr [rsp + 5584]
                        cmp              eax, 1;                              je    n251_lit_string_α
                                                                              jmp   n253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        lea              rsi, [rsp + 5552]
                        lea              rdx, [rsp + 5568]
                        call             proc_kw_dcα;                         jmp   .Lx599_2
.Lx599_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx599_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5488]
                        mov              rdx, qword ptr [rsp + 5496]
.Lx599_29:              mov              qword ptr [rsp + 5488], rax
                        mov              qword ptr [rsp + 5496], rdx
                        cmp              eax, 104;                            je    n249_disjunction_β
                                                                              jmp   n249_disjunction_β
n250_call_proc_staged_β:
                                                                              jmp   n249_disjunction_β
.Lx599_0:               .quad            .Lx599_0_s
.Lx599_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              qword ptr [rsp + 5632], 2            # result
                        mov              dword ptr [rsp + 5636], 8
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 5640], rax;         jmp   n249_disjunction_as
n251_lit_string_β:                                                            jmp   n249_disjunction_af
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n252_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n249_disjunction_af
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx;         jmp   n249_disjunction_as
n252_keyword_icon_β:                                                          jmp   n249_disjunction_af
.Lx601_0:               .quad            .Lx601_0_s
.Lx601_0_s:             .string          "&ldrag"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              qword ptr [rsp + 5408], 2            # result
                        mov              dword ptr [rsp + 5412], 7
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 5416], rax;         jmp   n254_disjunction_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "letters"
#-----------------------------------------------------------------------------------------------------------------------
n254_disjunction_α:     mov              qword ptr [rsp + 5424], 0
                        mov              qword ptr [rsp + 5432], 0
                        mov              dword ptr [rsp + 5440], 0;           jmp   n257_lit_charset_α
n254_disjunction_as:    mov              eax, dword ptr [rsp + 5440]
                        cmp              eax, 0;                              jne   .Lx604_0
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n255_call_proc_staged_α
.Lx604_0:               cmp              eax, 1;                              jne   .Lx604_1
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5432], rax;         jmp   n255_call_proc_staged_α
.Lx604_1:                                                                     jmp   n255_call_proc_staged_α
n254_disjunction_β:     mov              eax, dword ptr [rsp + 5440]
                        cmp              eax, 0;                              je    n254_disjunction_af
                                                                              jmp   n254_disjunction_af
n254_disjunction_af:    add              dword ptr [rsp + 5440], 1
                        mov              eax, dword ptr [rsp + 5440]
                        cmp              eax, 1;                              je    n256_lit_string_α
                                                                              jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_proc_staged_α:
                        lea              rsi, [rsp + 5408]
                        lea              rdx, [rsp + 5424]
                        call             proc_kw_dcα;                         jmp   .Lx606_2
.Lx606_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx606_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5344]
                        mov              rdx, qword ptr [rsp + 5352]
.Lx606_29:              mov              qword ptr [rsp + 5344], rax
                        mov              qword ptr [rsp + 5352], rdx
                        cmp              eax, 104;                            je    n254_disjunction_β
                                                                              jmp   n254_disjunction_β
n255_call_proc_staged_β:
                                                                              jmp   n254_disjunction_β
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 5472], 2            # result
                        mov              dword ptr [rsp + 5476], 8
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n254_disjunction_as
n256_lit_string_β:                                                            jmp   n254_disjunction_af
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_charset_α:     mov              qword ptr [rsp + 5456], 2            # result
                        mov              dword ptr [rsp + 5460], -1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n254_disjunction_as
n257_lit_charset_β:                                                           jmp   n254_disjunction_af
.Lx608_0:               .quad            .Lx608_0_s
.Lx608_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              qword ptr [rsp + 5248], 2            # result
                        mov              dword ptr [rsp + 5252], 5
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n259_disjunction_α
.Lx609_0:               .quad            .Lx609_0_s
.Lx609_0_s:             .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:     mov              qword ptr [rsp + 5264], 0
                        mov              qword ptr [rsp + 5272], 0
                        mov              dword ptr [rsp + 5280], 0;           jmp   n262_keyword_icon_α
n259_disjunction_as:    mov              eax, dword ptr [rsp + 5280]
                        cmp              eax, 0;                              jne   .Lx611_0
                        mov              rax, qword ptr [rsp + 5296]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5304]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n260_call_proc_staged_α
.Lx611_0:               cmp              eax, 1;                              jne   .Lx611_1
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n260_call_proc_staged_α
.Lx611_1:                                                                     jmp   n260_call_proc_staged_α
n259_disjunction_β:     mov              eax, dword ptr [rsp + 5280]
                        cmp              eax, 0;                              je    n259_disjunction_af
                                                                              jmp   n259_disjunction_af
n259_disjunction_af:    add              dword ptr [rsp + 5280], 1
                        mov              eax, dword ptr [rsp + 5280]
                        cmp              eax, 1;                              je    n261_lit_string_α
                                                                              jmp   n263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_proc_staged_α:
                        lea              rsi, [rsp + 5248]
                        lea              rdx, [rsp + 5264]
                        call             proc_kw_dcα;                         jmp   .Lx613_2
.Lx613_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx613_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5184]
                        mov              rdx, qword ptr [rsp + 5192]
.Lx613_29:              mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        cmp              eax, 104;                            je    n259_disjunction_β
                                                                              jmp   n259_disjunction_β
n260_call_proc_staged_β:
                                                                              jmp   n259_disjunction_β
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 8
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n259_disjunction_as
n261_lit_string_β:                                                            jmp   n259_disjunction_af
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n262_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n259_disjunction_af
                        mov              qword ptr [rsp + 5296], rax
                        mov              qword ptr [rsp + 5304], rdx;         jmp   n259_disjunction_as
n262_keyword_icon_β:                                                          jmp   n259_disjunction_af
.Lx615_0:               .quad            .Lx615_0_s
.Lx615_0_s:             .string          "&level"
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              qword ptr [rsp + 5088], 2            # result
                        mov              dword ptr [rsp + 5092], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 5096], rax;         jmp   n264_disjunction_α
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "lpress"
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:     mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              dword ptr [rsp + 5120], 0;           jmp   n267_keyword_icon_α
n264_disjunction_as:    mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              jne   .Lx618_0
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n265_call_proc_staged_α
.Lx618_0:               cmp              eax, 1;                              jne   .Lx618_1
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n265_call_proc_staged_α
.Lx618_1:                                                                     jmp   n265_call_proc_staged_α
n264_disjunction_β:     mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              je    n264_disjunction_af
                                                                              jmp   n264_disjunction_af
n264_disjunction_af:    add              dword ptr [rsp + 5120], 1
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 1;                              je    n266_lit_string_α
                                                                              jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n265_call_proc_staged_α:
                        lea              rsi, [rsp + 5088]
                        lea              rdx, [rsp + 5104]
                        call             proc_kw_dcα;                         jmp   .Lx620_2
.Lx620_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx620_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 5024]
                        mov              rdx, qword ptr [rsp + 5032]
.Lx620_29:              mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              eax, 104;                            je    n264_disjunction_β
                                                                              jmp   n264_disjunction_β
n265_call_proc_staged_β:
                                                                              jmp   n264_disjunction_β
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      mov              qword ptr [rsp + 5168], 2            # result
                        mov              dword ptr [rsp + 5172], 8
                        mov              rax, qword ptr [rip + .Lx621_0]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n264_disjunction_as
n266_lit_string_β:                                                            jmp   n264_disjunction_af
.Lx621_0:               .quad            .Lx621_0_s
.Lx621_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n267_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n264_disjunction_af
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx;         jmp   n264_disjunction_as
n267_keyword_icon_β:                                                          jmp   n264_disjunction_af
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          "&lpress"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              qword ptr [rsp + 4928], 2            # result
                        mov              dword ptr [rsp + 4932], 8
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 4936], rax;         jmp   n269_disjunction_α
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "lrelease"
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:     mov              qword ptr [rsp + 4944], 0
                        mov              qword ptr [rsp + 4952], 0
                        mov              dword ptr [rsp + 4960], 0;           jmp   n272_keyword_icon_α
n269_disjunction_as:    mov              eax, dword ptr [rsp + 4960]
                        cmp              eax, 0;                              jne   .Lx625_0
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n270_call_proc_staged_α
.Lx625_0:               cmp              eax, 1;                              jne   .Lx625_1
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n270_call_proc_staged_α
.Lx625_1:                                                                     jmp   n270_call_proc_staged_α
n269_disjunction_β:     mov              eax, dword ptr [rsp + 4960]
                        cmp              eax, 0;                              je    n269_disjunction_af
                                                                              jmp   n269_disjunction_af
n269_disjunction_af:    add              dword ptr [rsp + 4960], 1
                        mov              eax, dword ptr [rsp + 4960]
                        cmp              eax, 1;                              je    n271_lit_string_α
                                                                              jmp   n273_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              rsi, [rsp + 4928]
                        lea              rdx, [rsp + 4944]
                        call             proc_kw_dcα;                         jmp   .Lx627_2
.Lx627_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx627_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4864]
                        mov              rdx, qword ptr [rsp + 4872]
.Lx627_29:              mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx
                        cmp              eax, 104;                            je    n269_disjunction_β
                                                                              jmp   n269_disjunction_β
n270_call_proc_staged_β:
                                                                              jmp   n269_disjunction_β
.Lx627_0:               .quad            .Lx627_0_s
.Lx627_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      mov              qword ptr [rsp + 5008], 2            # result
                        mov              dword ptr [rsp + 5012], 8
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n269_disjunction_as
n271_lit_string_β:                                                            jmp   n269_disjunction_af
.Lx628_0:               .quad            .Lx628_0_s
.Lx628_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n272_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n269_disjunction_af
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n269_disjunction_as
n272_keyword_icon_β:                                                          jmp   n269_disjunction_af
.Lx629_0:               .quad            .Lx629_0_s
.Lx629_0_s:             .string          "&lrelease"
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      mov              qword ptr [rsp + 4768], 2            # result
                        mov              dword ptr [rsp + 4772], 4
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n274_disjunction_α
.Lx630_0:               .quad            .Lx630_0_s
.Lx630_0_s:             .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n274_disjunction_α:     mov              qword ptr [rsp + 4784], 0
                        mov              qword ptr [rsp + 4792], 0
                        mov              dword ptr [rsp + 4800], 0;           jmp   n277_keyword_icon_α
n274_disjunction_as:    mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 0;                              jne   .Lx632_0
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n275_call_proc_staged_α
.Lx632_0:               cmp              eax, 1;                              jne   .Lx632_1
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n275_call_proc_staged_α
.Lx632_1:                                                                     jmp   n275_call_proc_staged_α
n274_disjunction_β:     mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 0;                              je    n274_disjunction_af
                                                                              jmp   n274_disjunction_af
n274_disjunction_af:    add              dword ptr [rsp + 4800], 1
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 1;                              je    n276_lit_string_α
                                                                              jmp   n278_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_proc_staged_α:
                        lea              rsi, [rsp + 4768]
                        lea              rdx, [rsp + 4784]
                        call             proc_kw_dcα;                         jmp   .Lx634_2
.Lx634_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx634_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4704]
                        mov              rdx, qword ptr [rsp + 4712]
.Lx634_29:              mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                        cmp              eax, 104;                            je    n274_disjunction_β
                                                                              jmp   n274_disjunction_β
n275_call_proc_staged_β:
                                                                              jmp   n274_disjunction_β
.Lx634_0:               .quad            .Lx634_0_s
.Lx634_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              qword ptr [rsp + 4848], 2            # result
                        mov              dword ptr [rsp + 4852], 8
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n274_disjunction_as
n276_lit_string_β:                                                            jmp   n274_disjunction_af
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n277_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n274_disjunction_af
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n274_disjunction_as
n277_keyword_icon_β:                                                          jmp   n274_disjunction_af
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "&main"
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              qword ptr [rsp + 4608], 2            # result
                        mov              dword ptr [rsp + 4612], 5
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n279_disjunction_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "mdrag"
#-----------------------------------------------------------------------------------------------------------------------
n279_disjunction_α:     mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              dword ptr [rsp + 4640], 0;           jmp   n282_keyword_icon_α
n279_disjunction_as:    mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 0;                              jne   .Lx639_0
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n280_call_proc_staged_α
.Lx639_0:               cmp              eax, 1;                              jne   .Lx639_1
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n280_call_proc_staged_α
.Lx639_1:                                                                     jmp   n280_call_proc_staged_α
n279_disjunction_β:     mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 0;                              je    n279_disjunction_af
                                                                              jmp   n279_disjunction_af
n279_disjunction_af:    add              dword ptr [rsp + 4640], 1
                        mov              eax, dword ptr [rsp + 4640]
                        cmp              eax, 1;                              je    n281_lit_string_α
                                                                              jmp   n283_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_proc_staged_α:
                        lea              rsi, [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        call             proc_kw_dcα;                         jmp   .Lx641_2
.Lx641_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx641_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4544]
                        mov              rdx, qword ptr [rsp + 4552]
.Lx641_29:              mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              eax, 104;                            je    n279_disjunction_β
                                                                              jmp   n279_disjunction_β
n280_call_proc_staged_β:
                                                                              jmp   n279_disjunction_β
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              qword ptr [rsp + 4688], 2            # result
                        mov              dword ptr [rsp + 4692], 8
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n279_disjunction_as
n281_lit_string_β:                                                            jmp   n279_disjunction_af
.Lx642_0:               .quad            .Lx642_0_s
.Lx642_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n282_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n279_disjunction_af
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx;         jmp   n279_disjunction_as
n282_keyword_icon_β:                                                          jmp   n279_disjunction_af
.Lx643_0:               .quad            .Lx643_0_s
.Lx643_0_s:             .string          "&mdrag"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              qword ptr [rsp + 4448], 2            # result
                        mov              dword ptr [rsp + 4452], 4
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n284_disjunction_α
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "meta"
#-----------------------------------------------------------------------------------------------------------------------
n284_disjunction_α:     mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              dword ptr [rsp + 4480], 0;           jmp   n287_keyword_icon_α
n284_disjunction_as:    mov              eax, dword ptr [rsp + 4480]
                        cmp              eax, 0;                              jne   .Lx646_0
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n285_call_proc_staged_α
.Lx646_0:               cmp              eax, 1;                              jne   .Lx646_1
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n285_call_proc_staged_α
.Lx646_1:                                                                     jmp   n285_call_proc_staged_α
n284_disjunction_β:     mov              eax, dword ptr [rsp + 4480]
                        cmp              eax, 0;                              je    n284_disjunction_af
                                                                              jmp   n284_disjunction_af
n284_disjunction_af:    add              dword ptr [rsp + 4480], 1
                        mov              eax, dword ptr [rsp + 4480]
                        cmp              eax, 1;                              je    n286_lit_string_α
                                                                              jmp   n288_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_proc_staged_α:
                        lea              rsi, [rsp + 4448]
                        lea              rdx, [rsp + 4464]
                        call             proc_kw_dcα;                         jmp   .Lx648_2
.Lx648_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx648_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
.Lx648_29:              mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              eax, 104;                            je    n284_disjunction_β
                                                                              jmp   n284_disjunction_β
n285_call_proc_staged_β:
                                                                              jmp   n284_disjunction_β
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              qword ptr [rsp + 4528], 2            # result
                        mov              dword ptr [rsp + 4532], 8
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n284_disjunction_as
n286_lit_string_β:                                                            jmp   n284_disjunction_af
.Lx649_0:               .quad            .Lx649_0_s
.Lx649_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n287_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n284_disjunction_af
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx;         jmp   n284_disjunction_as
n287_keyword_icon_β:                                                          jmp   n284_disjunction_af
.Lx650_0:               .quad            .Lx650_0_s
.Lx650_0_s:             .string          "&meta"
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      mov              qword ptr [rsp + 4288], 2            # result
                        mov              dword ptr [rsp + 4292], 6
                        mov              rax, qword ptr [rip + .Lx651_0]
                        mov              qword ptr [rsp + 4296], rax;         jmp   n289_disjunction_α
.Lx651_0:               .quad            .Lx651_0_s
.Lx651_0_s:             .string          "mpress"
#-----------------------------------------------------------------------------------------------------------------------
n289_disjunction_α:     mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              dword ptr [rsp + 4320], 0;           jmp   n292_keyword_icon_α
n289_disjunction_as:    mov              eax, dword ptr [rsp + 4320]
                        cmp              eax, 0;                              jne   .Lx653_0
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n290_call_proc_staged_α
.Lx653_0:               cmp              eax, 1;                              jne   .Lx653_1
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n290_call_proc_staged_α
.Lx653_1:                                                                     jmp   n290_call_proc_staged_α
n289_disjunction_β:     mov              eax, dword ptr [rsp + 4320]
                        cmp              eax, 0;                              je    n289_disjunction_af
                                                                              jmp   n289_disjunction_af
n289_disjunction_af:    add              dword ptr [rsp + 4320], 1
                        mov              eax, dword ptr [rsp + 4320]
                        cmp              eax, 1;                              je    n291_lit_string_α
                                                                              jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n290_call_proc_staged_α:
                        lea              rsi, [rsp + 4288]
                        lea              rdx, [rsp + 4304]
                        call             proc_kw_dcα;                         jmp   .Lx655_2
.Lx655_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx655_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4224]
                        mov              rdx, qword ptr [rsp + 4232]
.Lx655_29:              mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              eax, 104;                            je    n289_disjunction_β
                                                                              jmp   n289_disjunction_β
n290_call_proc_staged_β:
                                                                              jmp   n289_disjunction_β
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              qword ptr [rsp + 4368], 2            # result
                        mov              dword ptr [rsp + 4372], 8
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n289_disjunction_as
n291_lit_string_β:                                                            jmp   n289_disjunction_af
.Lx656_0:               .quad            .Lx656_0_s
.Lx656_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n292_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n289_disjunction_af
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n289_disjunction_as
n292_keyword_icon_β:                                                          jmp   n289_disjunction_af
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "&mpress"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 8
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n294_disjunction_α
.Lx658_0:               .quad            .Lx658_0_s
.Lx658_0_s:             .string          "mrelease"
#-----------------------------------------------------------------------------------------------------------------------
n294_disjunction_α:     mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              dword ptr [rsp + 4160], 0;           jmp   n297_keyword_icon_α
n294_disjunction_as:    mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 0;                              jne   .Lx660_0
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n295_call_proc_staged_α
.Lx660_0:               cmp              eax, 1;                              jne   .Lx660_1
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n295_call_proc_staged_α
.Lx660_1:                                                                     jmp   n295_call_proc_staged_α
n294_disjunction_β:     mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 0;                              je    n294_disjunction_af
                                                                              jmp   n294_disjunction_af
n294_disjunction_af:    add              dword ptr [rsp + 4160], 1
                        mov              eax, dword ptr [rsp + 4160]
                        cmp              eax, 1;                              je    n296_lit_string_α
                                                                              jmp   n298_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_call_proc_staged_α:
                        lea              rsi, [rsp + 4128]
                        lea              rdx, [rsp + 4144]
                        call             proc_kw_dcα;                         jmp   .Lx662_2
.Lx662_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx662_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4064]
                        mov              rdx, qword ptr [rsp + 4072]
.Lx662_29:              mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              eax, 104;                            je    n294_disjunction_β
                                                                              jmp   n294_disjunction_β
n295_call_proc_staged_β:
                                                                              jmp   n294_disjunction_β
.Lx662_0:               .quad            .Lx662_0_s
.Lx662_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 8
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n294_disjunction_as
n296_lit_string_β:                                                            jmp   n294_disjunction_af
.Lx663_0:               .quad            .Lx663_0_s
.Lx663_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n297_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n294_disjunction_af
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx;         jmp   n294_disjunction_as
n297_keyword_icon_β:                                                          jmp   n294_disjunction_af
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "&mrelease"
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 4
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n299_disjunction_α
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:     mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              dword ptr [rsp + 4000], 0;           jmp   n302_keyword_icon_α
n299_disjunction_as:    mov              eax, dword ptr [rsp + 4000]
                        cmp              eax, 0;                              jne   .Lx667_0
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n300_call_proc_staged_α
.Lx667_0:               cmp              eax, 1;                              jne   .Lx667_1
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n300_call_proc_staged_α
.Lx667_1:                                                                     jmp   n300_call_proc_staged_α
n299_disjunction_β:     mov              eax, dword ptr [rsp + 4000]
                        cmp              eax, 0;                              je    n299_disjunction_af
                                                                              jmp   n299_disjunction_af
n299_disjunction_af:    add              dword ptr [rsp + 4000], 1
                        mov              eax, dword ptr [rsp + 4000]
                        cmp              eax, 1;                              je    n301_lit_string_α
                                                                              jmp   n303_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_proc_staged_α:
                        lea              rsi, [rsp + 3968]
                        lea              rdx, [rsp + 3984]
                        call             proc_kw_dcα;                         jmp   .Lx669_2
.Lx669_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx669_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3904]
                        mov              rdx, qword ptr [rsp + 3912]
.Lx669_29:              mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              eax, 104;                            je    n299_disjunction_β
                                                                              jmp   n299_disjunction_β
n300_call_proc_staged_β:
                                                                              jmp   n299_disjunction_β
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:      mov              qword ptr [rsp + 4048], 2            # result
                        mov              dword ptr [rsp + 4052], 8
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n299_disjunction_as
n301_lit_string_β:                                                            jmp   n299_disjunction_af
.Lx670_0:               .quad            .Lx670_0_s
.Lx670_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n302_keyword_icon_α:    mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0;           jmp   n299_disjunction_as
n302_keyword_icon_β:                                                          jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              qword ptr [rsp + 3808], 2            # result
                        mov              dword ptr [rsp + 3812], 6
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n304_disjunction_α
.Lx672_0:               .quad            .Lx672_0_s
.Lx672_0_s:             .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n304_disjunction_α:     mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              dword ptr [rsp + 3840], 0;           jmp   n307_keyword_icon_α
n304_disjunction_as:    mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 0;                              jne   .Lx674_0
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n305_call_proc_staged_α
.Lx674_0:               cmp              eax, 1;                              jne   .Lx674_1
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n305_call_proc_staged_α
.Lx674_1:                                                                     jmp   n305_call_proc_staged_α
n304_disjunction_β:     mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 0;                              je    n304_disjunction_af
                                                                              jmp   n304_disjunction_af
n304_disjunction_af:    add              dword ptr [rsp + 3840], 1
                        mov              eax, dword ptr [rsp + 3840]
                        cmp              eax, 1;                              je    n306_lit_string_α
                                                                              jmp   n308_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n305_call_proc_staged_α:
                        lea              rsi, [rsp + 3808]
                        lea              rdx, [rsp + 3824]
                        call             proc_kw_dcα;                         jmp   .Lx676_2
.Lx676_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx676_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3744]
                        mov              rdx, qword ptr [rsp + 3752]
.Lx676_29:              mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              eax, 104;                            je    n304_disjunction_β
                                                                              jmp   n304_disjunction_β
n305_call_proc_staged_β:
                                                                              jmp   n304_disjunction_β
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 8
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n304_disjunction_as
n306_lit_string_β:                                                            jmp   n304_disjunction_af
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n307_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n304_disjunction_af
                        mov              qword ptr [rsp + 3856], rax
                        mov              qword ptr [rsp + 3864], rdx;         jmp   n304_disjunction_as
n307_keyword_icon_β:                                                          jmp   n304_disjunction_af
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              qword ptr [rsp + 3648], 2            # result
                        mov              dword ptr [rsp + 3652], 3
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n309_disjunction_α
.Lx679_0:               .quad            .Lx679_0_s
.Lx679_0_s:             .string          "phi"
#-----------------------------------------------------------------------------------------------------------------------
n309_disjunction_α:     mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              dword ptr [rsp + 3680], 0;           jmp   n312_keyword_icon_α
n309_disjunction_as:    mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              jne   .Lx681_0
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n310_call_proc_staged_α
.Lx681_0:               cmp              eax, 1;                              jne   .Lx681_1
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n310_call_proc_staged_α
.Lx681_1:                                                                     jmp   n310_call_proc_staged_α
n309_disjunction_β:     mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 0;                              je    n309_disjunction_af
                                                                              jmp   n309_disjunction_af
n309_disjunction_af:    add              dword ptr [rsp + 3680], 1
                        mov              eax, dword ptr [rsp + 3680]
                        cmp              eax, 1;                              je    n311_lit_string_α
                                                                              jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        call             proc_kw_dcα;                         jmp   .Lx683_2
.Lx683_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx683_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
.Lx683_29:              mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104;                            je    n309_disjunction_β
                                                                              jmp   n309_disjunction_β
n310_call_proc_staged_β:
                                                                              jmp   n309_disjunction_β
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 8
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n309_disjunction_as
n311_lit_string_β:                                                            jmp   n309_disjunction_af
.Lx684_0:               .quad            .Lx684_0_s
.Lx684_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n312_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n309_disjunction_af
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx;         jmp   n309_disjunction_as
n312_keyword_icon_β:                                                          jmp   n309_disjunction_af
.Lx685_0:               .quad            .Lx685_0_s
.Lx685_0_s:             .string          "&phi"
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 2
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n314_disjunction_α
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "pi"
#-----------------------------------------------------------------------------------------------------------------------
n314_disjunction_α:     mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              dword ptr [rsp + 3520], 0;           jmp   n317_keyword_icon_α
n314_disjunction_as:    mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 0;                              jne   .Lx688_0
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n315_call_proc_staged_α
.Lx688_0:               cmp              eax, 1;                              jne   .Lx688_1
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n315_call_proc_staged_α
.Lx688_1:                                                                     jmp   n315_call_proc_staged_α
n314_disjunction_β:     mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 0;                              je    n314_disjunction_af
                                                                              jmp   n314_disjunction_af
n314_disjunction_af:    add              dword ptr [rsp + 3520], 1
                        mov              eax, dword ptr [rsp + 3520]
                        cmp              eax, 1;                              je    n316_lit_string_α
                                                                              jmp   n318_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_proc_staged_α:
                        lea              rsi, [rsp + 3488]
                        lea              rdx, [rsp + 3504]
                        call             proc_kw_dcα;                         jmp   .Lx690_2
.Lx690_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx690_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
.Lx690_29:              mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              eax, 104;                            je    n314_disjunction_β
                                                                              jmp   n314_disjunction_β
n315_call_proc_staged_β:
                                                                              jmp   n314_disjunction_β
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 8
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n314_disjunction_as
n316_lit_string_β:                                                            jmp   n314_disjunction_af
.Lx691_0:               .quad            .Lx691_0_s
.Lx691_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n317_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n314_disjunction_af
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx;         jmp   n314_disjunction_as
n317_keyword_icon_β:                                                          jmp   n314_disjunction_af
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 3
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n319_disjunction_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "pos"
#-----------------------------------------------------------------------------------------------------------------------
n319_disjunction_α:     mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              dword ptr [rsp + 3360], 0;           jmp   n322_keyword_icon_α
n319_disjunction_as:    mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 0;                              jne   .Lx695_0
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n320_call_proc_staged_α
.Lx695_0:               cmp              eax, 1;                              jne   .Lx695_1
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n320_call_proc_staged_α
.Lx695_1:                                                                     jmp   n320_call_proc_staged_α
n319_disjunction_β:     mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 0;                              je    n319_disjunction_af
                                                                              jmp   n319_disjunction_af
n319_disjunction_af:    add              dword ptr [rsp + 3360], 1
                        mov              eax, dword ptr [rsp + 3360]
                        cmp              eax, 1;                              je    n321_lit_string_α
                                                                              jmp   n323_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        lea              rsi, [rsp + 3328]
                        lea              rdx, [rsp + 3344]
                        call             proc_kw_dcα;                         jmp   .Lx697_2
.Lx697_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx697_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3264]
                        mov              rdx, qword ptr [rsp + 3272]
.Lx697_29:              mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              eax, 104;                            je    n319_disjunction_β
                                                                              jmp   n319_disjunction_β
n320_call_proc_staged_β:
                                                                              jmp   n319_disjunction_β
.Lx697_0:               .quad            .Lx697_0_s
.Lx697_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 8
                        mov              rax, qword ptr [rip + .Lx698_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n319_disjunction_as
n321_lit_string_β:                                                            jmp   n319_disjunction_af
.Lx698_0:               .quad            .Lx698_0_s
.Lx698_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n322_keyword_icon_α:    mov              qword ptr [rsp + 3376], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 3384], rax;         jmp   n319_disjunction_as
n322_keyword_icon_β:                                                          jmp   n319_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 8
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n324_disjunction_α
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "progname"
#-----------------------------------------------------------------------------------------------------------------------
n324_disjunction_α:     mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              dword ptr [rsp + 3200], 0;           jmp   n327_keyword_icon_α
n324_disjunction_as:    mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 0;                              jne   .Lx702_0
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n325_call_proc_staged_α
.Lx702_0:               cmp              eax, 1;                              jne   .Lx702_1
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n325_call_proc_staged_α
.Lx702_1:                                                                     jmp   n325_call_proc_staged_α
n324_disjunction_β:     mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 0;                              je    n324_disjunction_af
                                                                              jmp   n324_disjunction_af
n324_disjunction_af:    add              dword ptr [rsp + 3200], 1
                        mov              eax, dword ptr [rsp + 3200]
                        cmp              eax, 1;                              je    n326_lit_string_α
                                                                              jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        call             proc_kw_dcα;                         jmp   .Lx704_2
.Lx704_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx704_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
.Lx704_29:              mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104;                            je    n324_disjunction_β
                                                                              jmp   n324_disjunction_β
n325_call_proc_staged_β:
                                                                              jmp   n324_disjunction_β
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              qword ptr [rsp + 3248], 2            # result
                        mov              dword ptr [rsp + 3252], 8
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n324_disjunction_as
n326_lit_string_β:                                                            jmp   n324_disjunction_af
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n327_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n324_disjunction_af
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx;         jmp   n324_disjunction_as
n327_keyword_icon_β:                                                          jmp   n324_disjunction_af
.Lx706_0:               .quad            .Lx706_0_s
.Lx706_0_s:             .string          "&progname"
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 6
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n329_disjunction_α
.Lx707_0:               .quad            .Lx707_0_s
.Lx707_0_s:             .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n329_disjunction_α:     mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              dword ptr [rsp + 3040], 0;           jmp   n332_keyword_icon_α
n329_disjunction_as:    mov              eax, dword ptr [rsp + 3040]
                        cmp              eax, 0;                              jne   .Lx709_0
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n330_call_proc_staged_α
.Lx709_0:               cmp              eax, 1;                              jne   .Lx709_1
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n330_call_proc_staged_α
.Lx709_1:                                                                     jmp   n330_call_proc_staged_α
n329_disjunction_β:     mov              eax, dword ptr [rsp + 3040]
                        cmp              eax, 0;                              je    n329_disjunction_af
                                                                              jmp   n329_disjunction_af
n329_disjunction_af:    add              dword ptr [rsp + 3040], 1
                        mov              eax, dword ptr [rsp + 3040]
                        cmp              eax, 1;                              je    n331_lit_string_α
                                                                              jmp   n333_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_proc_staged_α:
                        lea              rsi, [rsp + 3008]
                        lea              rdx, [rsp + 3024]
                        call             proc_kw_dcα;                         jmp   .Lx711_2
.Lx711_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx711_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
.Lx711_29:              mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              eax, 104;                            je    n329_disjunction_β
                                                                              jmp   n329_disjunction_β
n330_call_proc_staged_β:
                                                                              jmp   n329_disjunction_β
.Lx711_0:               .quad            .Lx711_0_s
.Lx711_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 8
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n329_disjunction_as
n331_lit_string_β:                                                            jmp   n329_disjunction_af
.Lx712_0:               .quad            .Lx712_0_s
.Lx712_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n332_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n329_disjunction_af
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n329_disjunction_as
n332_keyword_icon_β:                                                          jmp   n329_disjunction_af
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 5
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n334_disjunction_α
.Lx714_0:               .quad            .Lx714_0_s
.Lx714_0_s:             .string          "rdrag"
#-----------------------------------------------------------------------------------------------------------------------
n334_disjunction_α:     mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              dword ptr [rsp + 2880], 0;           jmp   n337_keyword_icon_α
n334_disjunction_as:    mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              jne   .Lx716_0
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n335_call_proc_staged_α
.Lx716_0:               cmp              eax, 1;                              jne   .Lx716_1
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n335_call_proc_staged_α
.Lx716_1:                                                                     jmp   n335_call_proc_staged_α
n334_disjunction_β:     mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              je    n334_disjunction_af
                                                                              jmp   n334_disjunction_af
n334_disjunction_af:    add              dword ptr [rsp + 2880], 1
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 1;                              je    n336_lit_string_α
                                                                              jmp   n338_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        lea              rsi, [rsp + 2848]
                        lea              rdx, [rsp + 2864]
                        call             proc_kw_dcα;                         jmp   .Lx718_2
.Lx718_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx718_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
.Lx718_29:              mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 104;                            je    n334_disjunction_β
                                                                              jmp   n334_disjunction_β
n335_call_proc_staged_β:
                                                                              jmp   n334_disjunction_β
.Lx718_0:               .quad            .Lx718_0_s
.Lx718_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 8
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n334_disjunction_as
n336_lit_string_β:                                                            jmp   n334_disjunction_af
.Lx719_0:               .quad            .Lx719_0_s
.Lx719_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n337_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n334_disjunction_af
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n334_disjunction_as
n337_keyword_icon_β:                                                          jmp   n334_disjunction_af
.Lx720_0:               .quad            .Lx720_0_s
.Lx720_0_s:             .string          "&rdrag"
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 7
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n339_disjunction_α
.Lx721_0:               .quad            .Lx721_0_s
.Lx721_0_s:             .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n339_disjunction_α:     mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              dword ptr [rsp + 2720], 0;           jmp   n342_keyword_icon_gen_α
n339_disjunction_as:    mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              jne   .Lx723_0
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n340_call_proc_staged_α
.Lx723_0:               cmp              eax, 1;                              jne   .Lx723_1
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n340_call_proc_staged_α
.Lx723_1:                                                                     jmp   n340_call_proc_staged_α
n339_disjunction_β:     mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              je    n342_keyword_icon_gen_β
                                                                              jmp   n339_disjunction_af
n339_disjunction_af:    add              dword ptr [rsp + 2720], 1
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 1;                              je    n341_lit_string_α
                                                                              jmp   n343_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n340_call_proc_staged_α:
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        call             proc_kw_dcα;                         jmp   .Lx725_2
.Lx725_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx725_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
.Lx725_29:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 104;                            je    n339_disjunction_β
                                                                              jmp   n339_disjunction_β
n340_call_proc_staged_β:
                                                                              jmp   n339_disjunction_β
.Lx725_0:               .quad            .Lx725_0_s
.Lx725_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 8
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n339_disjunction_as
n341_lit_string_β:                                                            jmp   n339_disjunction_af
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n342_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 2752], 0
.Lx727_1:               mov              rdi, qword ptr [rip + .Lx727_0]
                        mov              rsi, qword ptr [rsp + 2752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n339_disjunction_af
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        mov              rax, qword ptr [rsp + 2752]
                        add              rax, 1
                        mov              qword ptr [rsp + 2752], rax;         jmp   n339_disjunction_as
n342_keyword_icon_gen_β:
                                                                              jmp   .Lx727_1
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 6
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n344_disjunction_α
.Lx728_0:               .quad            .Lx728_0_s
.Lx728_0_s:             .string          "resize"
#-----------------------------------------------------------------------------------------------------------------------
n344_disjunction_α:     mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              dword ptr [rsp + 2560], 0;           jmp   n347_keyword_icon_α
n344_disjunction_as:    mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              jne   .Lx730_0
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n345_call_proc_staged_α
.Lx730_0:               cmp              eax, 1;                              jne   .Lx730_1
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n345_call_proc_staged_α
.Lx730_1:                                                                     jmp   n345_call_proc_staged_α
n344_disjunction_β:     mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 0;                              je    n344_disjunction_af
                                                                              jmp   n344_disjunction_af
n344_disjunction_af:    add              dword ptr [rsp + 2560], 1
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              eax, 1;                              je    n346_lit_string_α
                                                                              jmp   n348_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        lea              rsi, [rsp + 2528]
                        lea              rdx, [rsp + 2544]
                        call             proc_kw_dcα;                         jmp   .Lx732_2
.Lx732_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx732_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
.Lx732_29:              mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              eax, 104;                            je    n344_disjunction_β
                                                                              jmp   n344_disjunction_β
n345_call_proc_staged_β:
                                                                              jmp   n344_disjunction_β
.Lx732_0:               .quad            .Lx732_0_s
.Lx732_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 8
                        mov              rax, qword ptr [rip + .Lx733_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n344_disjunction_as
n346_lit_string_β:                                                            jmp   n344_disjunction_af
.Lx733_0:               .quad            .Lx733_0_s
.Lx733_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n347_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx734_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n344_disjunction_af
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n344_disjunction_as
n347_keyword_icon_β:                                                          jmp   n344_disjunction_af
.Lx734_0:               .quad            .Lx734_0_s
.Lx734_0_s:             .string          "&resize"
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n349_disjunction_α
.Lx735_0:               .quad            .Lx735_0_s
.Lx735_0_s:             .string          "row"
#-----------------------------------------------------------------------------------------------------------------------
n349_disjunction_α:     mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              dword ptr [rsp + 2400], 0;           jmp   n352_keyword_icon_α
n349_disjunction_as:    mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              jne   .Lx737_0
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n350_call_proc_staged_α
.Lx737_0:               cmp              eax, 1;                              jne   .Lx737_1
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n350_call_proc_staged_α
.Lx737_1:                                                                     jmp   n350_call_proc_staged_α
n349_disjunction_β:     mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              je    n349_disjunction_af
                                                                              jmp   n349_disjunction_af
n349_disjunction_af:    add              dword ptr [rsp + 2400], 1
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 1;                              je    n351_lit_string_α
                                                                              jmp   n353_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_proc_staged_α:
                        lea              rsi, [rsp + 2368]
                        lea              rdx, [rsp + 2384]
                        call             proc_kw_dcα;                         jmp   .Lx739_2
.Lx739_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx739_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
.Lx739_29:              mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              eax, 104;                            je    n349_disjunction_β
                                                                              jmp   n349_disjunction_β
n350_call_proc_staged_β:
                                                                              jmp   n349_disjunction_β
.Lx739_0:               .quad            .Lx739_0_s
.Lx739_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 8
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n349_disjunction_as
n351_lit_string_β:                                                            jmp   n349_disjunction_af
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n352_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n349_disjunction_af
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n349_disjunction_as
n352_keyword_icon_β:                                                          jmp   n349_disjunction_af
.Lx741_0:               .quad            .Lx741_0_s
.Lx741_0_s:             .string          "&row"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n354_disjunction_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "rpress"
#-----------------------------------------------------------------------------------------------------------------------
n354_disjunction_α:     mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              dword ptr [rsp + 2240], 0;           jmp   n357_keyword_icon_α
n354_disjunction_as:    mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              jne   .Lx744_0
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n355_call_proc_staged_α
.Lx744_0:               cmp              eax, 1;                              jne   .Lx744_1
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n355_call_proc_staged_α
.Lx744_1:                                                                     jmp   n355_call_proc_staged_α
n354_disjunction_β:     mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              je    n354_disjunction_af
                                                                              jmp   n354_disjunction_af
n354_disjunction_af:    add              dword ptr [rsp + 2240], 1
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 1;                              je    n356_lit_string_α
                                                                              jmp   n358_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2224]
                        call             proc_kw_dcα;                         jmp   .Lx746_2
.Lx746_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx746_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
.Lx746_29:              mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 104;                            je    n354_disjunction_β
                                                                              jmp   n354_disjunction_β
n355_call_proc_staged_β:
                                                                              jmp   n354_disjunction_β
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 8
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n354_disjunction_as
n356_lit_string_β:                                                            jmp   n354_disjunction_af
.Lx747_0:               .quad            .Lx747_0_s
.Lx747_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n357_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx748_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n354_disjunction_af
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n354_disjunction_as
n357_keyword_icon_β:                                                          jmp   n354_disjunction_af
.Lx748_0:               .quad            .Lx748_0_s
.Lx748_0_s:             .string          "&rpress"
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 8
                        mov              rax, qword ptr [rip + .Lx749_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n359_disjunction_α
.Lx749_0:               .quad            .Lx749_0_s
.Lx749_0_s:             .string          "rrelease"
#-----------------------------------------------------------------------------------------------------------------------
n359_disjunction_α:     mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              dword ptr [rsp + 2080], 0;           jmp   n362_keyword_icon_α
n359_disjunction_as:    mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              jne   .Lx751_0
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n360_call_proc_staged_α
.Lx751_0:               cmp              eax, 1;                              jne   .Lx751_1
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n360_call_proc_staged_α
.Lx751_1:                                                                     jmp   n360_call_proc_staged_α
n359_disjunction_β:     mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 0;                              je    n359_disjunction_af
                                                                              jmp   n359_disjunction_af
n359_disjunction_af:    add              dword ptr [rsp + 2080], 1
                        mov              eax, dword ptr [rsp + 2080]
                        cmp              eax, 1;                              je    n361_lit_string_α
                                                                              jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        lea              rsi, [rsp + 2048]
                        lea              rdx, [rsp + 2064]
                        call             proc_kw_dcα;                         jmp   .Lx753_2
.Lx753_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx753_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
.Lx753_29:              mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 104;                            je    n359_disjunction_β
                                                                              jmp   n359_disjunction_β
n360_call_proc_staged_β:
                                                                              jmp   n359_disjunction_β
.Lx753_0:               .quad            .Lx753_0_s
.Lx753_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 8
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n359_disjunction_as
n361_lit_string_β:                                                            jmp   n359_disjunction_af
.Lx754_0:               .quad            .Lx754_0_s
.Lx754_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n362_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx755_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n359_disjunction_af
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n359_disjunction_as
n362_keyword_icon_β:                                                          jmp   n359_disjunction_af
.Lx755_0:               .quad            .Lx755_0_s
.Lx755_0_s:             .string          "&rrelease"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 5
                        mov              rax, qword ptr [rip + .Lx756_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n364_disjunction_α
.Lx756_0:               .quad            .Lx756_0_s
.Lx756_0_s:             .string          "shift"
#-----------------------------------------------------------------------------------------------------------------------
n364_disjunction_α:     mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n367_keyword_icon_α
n364_disjunction_as:    mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lx758_0
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n365_call_proc_staged_α
.Lx758_0:               cmp              eax, 1;                              jne   .Lx758_1
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n365_call_proc_staged_α
.Lx758_1:                                                                     jmp   n365_call_proc_staged_α
n364_disjunction_β:     mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              je    n364_disjunction_af
                                                                              jmp   n364_disjunction_af
n364_disjunction_af:    add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 1;                              je    n366_lit_string_α
                                                                              jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              rsi, [rsp + 1888]
                        lea              rdx, [rsp + 1904]
                        call             proc_kw_dcα;                         jmp   .Lx760_2
.Lx760_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx760_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
.Lx760_29:              mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 104;                            je    n364_disjunction_β
                                                                              jmp   n364_disjunction_β
n365_call_proc_staged_β:
                                                                              jmp   n364_disjunction_β
.Lx760_0:               .quad            .Lx760_0_s
.Lx760_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 8
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n364_disjunction_as
n366_lit_string_β:                                                            jmp   n364_disjunction_af
.Lx761_0:               .quad            .Lx761_0_s
.Lx761_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n367_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n364_disjunction_af
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n364_disjunction_as
n367_keyword_icon_β:                                                          jmp   n364_disjunction_af
.Lx762_0:               .quad            .Lx762_0_s
.Lx762_0_s:             .string          "&shift"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 6
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n369_disjunction_α
.Lx763_0:               .quad            .Lx763_0_s
.Lx763_0_s:             .string          "source"
#-----------------------------------------------------------------------------------------------------------------------
n369_disjunction_α:     mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              dword ptr [rsp + 1760], 0;           jmp   n372_keyword_icon_α
n369_disjunction_as:    mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 0;                              jne   .Lx765_0
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n370_call_proc_staged_α
.Lx765_0:               cmp              eax, 1;                              jne   .Lx765_1
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n370_call_proc_staged_α
.Lx765_1:                                                                     jmp   n370_call_proc_staged_α
n369_disjunction_β:     mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 0;                              je    n369_disjunction_af
                                                                              jmp   n369_disjunction_af
n369_disjunction_af:    add              dword ptr [rsp + 1760], 1
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 1;                              je    n371_lit_string_α
                                                                              jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1744]
                        call             proc_kw_dcα;                         jmp   .Lx767_2
.Lx767_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx767_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
.Lx767_29:              mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n369_disjunction_β
                                                                              jmp   n369_disjunction_β
n370_call_proc_staged_β:
                                                                              jmp   n369_disjunction_β
.Lx767_0:               .quad            .Lx767_0_s
.Lx767_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 8
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n369_disjunction_as
n371_lit_string_β:                                                            jmp   n369_disjunction_af
.Lx768_0:               .quad            .Lx768_0_s
.Lx768_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n372_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n369_disjunction_af
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n369_disjunction_as
n372_keyword_icon_β:                                                          jmp   n369_disjunction_af
.Lx769_0:               .quad            .Lx769_0_s
.Lx769_0_s:             .string          "&source"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 7
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n374_disjunction_α
.Lx770_0:               .quad            .Lx770_0_s
.Lx770_0_s:             .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n374_disjunction_α:     mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              dword ptr [rsp + 1600], 0;           jmp   n377_keyword_icon_gen_α
n374_disjunction_as:    mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 0;                              jne   .Lx772_0
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n375_call_proc_staged_α
.Lx772_0:               cmp              eax, 1;                              jne   .Lx772_1
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n375_call_proc_staged_α
.Lx772_1:                                                                     jmp   n375_call_proc_staged_α
n374_disjunction_β:     mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 0;                              je    n377_keyword_icon_gen_β
                                                                              jmp   n374_disjunction_af
n374_disjunction_af:    add              dword ptr [rsp + 1600], 1
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 1;                              je    n376_lit_string_α
                                                                              jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n375_call_proc_staged_α:
                        lea              rsi, [rsp + 1568]
                        lea              rdx, [rsp + 1584]
                        call             proc_kw_dcα;                         jmp   .Lx774_2
.Lx774_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx774_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
.Lx774_29:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n374_disjunction_β
                                                                              jmp   n374_disjunction_β
n375_call_proc_staged_β:
                                                                              jmp   n374_disjunction_β
.Lx774_0:               .quad            .Lx774_0_s
.Lx774_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 8
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n374_disjunction_as
n376_lit_string_β:                                                            jmp   n374_disjunction_af
.Lx775_0:               .quad            .Lx775_0_s
.Lx775_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n377_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 1632], 0
.Lx776_1:               mov              rdi, qword ptr [rip + .Lx776_0]
                        mov              rsi, qword ptr [rsp + 1632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n374_disjunction_af
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        mov              rax, qword ptr [rsp + 1632]
                        add              rax, 1
                        mov              qword ptr [rsp + 1632], rax;         jmp   n374_disjunction_as
n377_keyword_icon_gen_β:
                                                                              jmp   .Lx776_1
.Lx776_0:               .quad            .Lx776_0_s
.Lx776_0_s:             .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 7
                        mov              rax, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n379_disjunction_α
.Lx777_0:               .quad            .Lx777_0_s
.Lx777_0_s:             .string          "subject"
#-----------------------------------------------------------------------------------------------------------------------
n379_disjunction_α:     mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              dword ptr [rsp + 1440], 0;           jmp   n382_keyword_icon_α
n379_disjunction_as:    mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 0;                              jne   .Lx779_0
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n380_call_proc_staged_α
.Lx779_0:               cmp              eax, 1;                              jne   .Lx779_1
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n380_call_proc_staged_α
.Lx779_1:                                                                     jmp   n380_call_proc_staged_α
n379_disjunction_β:     mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 0;                              je    n379_disjunction_af
                                                                              jmp   n379_disjunction_af
n379_disjunction_af:    add              dword ptr [rsp + 1440], 1
                        mov              eax, dword ptr [rsp + 1440]
                        cmp              eax, 1;                              je    n381_lit_string_α
                                                                              jmp   n383_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_proc_staged_α:
                        lea              rsi, [rsp + 1408]
                        lea              rdx, [rsp + 1424]
                        call             proc_kw_dcα;                         jmp   .Lx781_2
.Lx781_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx781_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
.Lx781_29:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n379_disjunction_β
                                                                              jmp   n379_disjunction_β
n380_call_proc_staged_β:
                                                                              jmp   n379_disjunction_β
.Lx781_0:               .quad            .Lx781_0_s
.Lx781_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 8
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n379_disjunction_as
n381_lit_string_β:                                                            jmp   n379_disjunction_af
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n382_keyword_icon_α:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n379_disjunction_as
n382_keyword_icon_β:                                                          jmp   n379_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 4
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n384_disjunction_α
.Lx784_0:               .quad            .Lx784_0_s
.Lx784_0_s:             .string          "time"
#-----------------------------------------------------------------------------------------------------------------------
n384_disjunction_α:     mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              dword ptr [rsp + 1120], 0;           jmp   n387_keyword_icon_α
n384_disjunction_as:    mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              jne   .Lx786_0
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n385_call_proc_staged_α
.Lx786_0:               cmp              eax, 1;                              jne   .Lx786_1
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n385_call_proc_staged_α
.Lx786_1:                                                                     jmp   n385_call_proc_staged_α
n384_disjunction_β:     mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              je    n384_disjunction_af
                                                                              jmp   n384_disjunction_af
n384_disjunction_af:    add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 1;                              je    n386_lit_string_α
                                                                              jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_proc_staged_α:
                        lea              rsi, [rsp + 1088]
                        lea              rdx, [rsp + 1104]
                        call             proc_kw_dcα;                         jmp   .Lx788_2
.Lx788_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx788_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx788_29:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n384_disjunction_β
                                                                              jmp   n384_disjunction_β
n385_call_proc_staged_β:
                                                                              jmp   n384_disjunction_β
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 8
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n384_disjunction_as
n386_lit_string_β:                                                            jmp   n384_disjunction_af
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n387_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n384_disjunction_af
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n388_lit_integer_α
n387_keyword_icon_β:                                                          jmp   n384_disjunction_af
.Lx790_0:               .quad            .Lx790_0_s
.Lx790_0_s:             .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_integer_α:     mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n389_lit_integer_α
.Lx791_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n390_call_builtin_icon_α
.Lx792_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn794:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn794]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n384_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_call_proc_staged_α
n390_call_builtin_icon_β:
                                                                              jmp   n384_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n391_call_proc_staged_α:
                        lea              rsi, [rsp + 1184]
                        call             proc_nmap_dcα;                       jmp   .Lx796_2
.Lx796_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx796_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
.Lx796_29:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n384_disjunction_af
                                                                              jmp   n384_disjunction_as
n391_call_proc_staged_β:
                                                                              jmp   n384_disjunction_af
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          "nmap"
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 5
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n393_disjunction_α
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "trace"
#-----------------------------------------------------------------------------------------------------------------------
n393_disjunction_α:     mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n396_keyword_icon_α
n393_disjunction_as:    mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx799_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax;          jmp   n394_call_proc_staged_α
.Lx799_0:               cmp              eax, 1;                              jne   .Lx799_1
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax;          jmp   n394_call_proc_staged_α
.Lx799_1:                                                                     jmp   n394_call_proc_staged_α
n393_disjunction_β:     mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              je    n393_disjunction_af
                                                                              jmp   n393_disjunction_af
n393_disjunction_af:    add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 1;                              je    n395_lit_string_α
                                                                              jmp   n397_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_proc_staged_α:
                        lea              rsi, [rsp + 928]
                        lea              rdx, [rsp + 944]
                        call             proc_kw_dcα;                         jmp   .Lx801_2
.Lx801_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx801_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx801_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n393_disjunction_β
                                                                              jmp   n393_disjunction_β
n394_call_proc_staged_β:
                                                                              jmp   n393_disjunction_β
.Lx801_0:               .quad            .Lx801_0_s
.Lx801_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 8
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n393_disjunction_as
n395_lit_string_β:                                                            jmp   n393_disjunction_af
.Lx802_0:               .quad            .Lx802_0_s
.Lx802_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n396_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n393_disjunction_af
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n393_disjunction_as
n396_keyword_icon_β:                                                          jmp   n393_disjunction_af
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "&trace"
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 5
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n398_disjunction_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "ucase"
#-----------------------------------------------------------------------------------------------------------------------
n398_disjunction_α:     mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n401_lit_charset_α
n398_disjunction_as:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx806_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n399_call_proc_staged_α
.Lx806_0:               cmp              eax, 1;                              jne   .Lx806_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax;          jmp   n399_call_proc_staged_α
.Lx806_1:                                                                     jmp   n399_call_proc_staged_α
n398_disjunction_β:     mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n398_disjunction_af
                                                                              jmp   n398_disjunction_af
n398_disjunction_af:    add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n400_lit_string_α
                                                                              jmp   n402_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n399_call_proc_staged_α:
                        lea              rsi, [rsp + 784]
                        lea              rdx, [rsp + 800]
                        call             proc_kw_dcα;                         jmp   .Lx808_2
.Lx808_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx808_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
.Lx808_29:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104;                            je    n398_disjunction_β
                                                                              jmp   n398_disjunction_β
n399_call_proc_staged_β:
                                                                              jmp   n398_disjunction_β
.Lx808_0:               .quad            .Lx808_0_s
.Lx808_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 8
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n398_disjunction_as
n400_lit_string_β:                                                            jmp   n398_disjunction_af
.Lx809_0:               .quad            .Lx809_0_s
.Lx809_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_charset_α:     mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], -1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n398_disjunction_as
n401_lit_charset_β:                                                           jmp   n398_disjunction_af
.Lx810_0:               .quad            .Lx810_0_s
.Lx810_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 7
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n403_disjunction_α
.Lx811_0:               .quad            .Lx811_0_s
.Lx811_0_s:             .string          "version"
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:     mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n406_keyword_icon_α
n403_disjunction_as:    mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx813_0
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax;          jmp   n404_call_proc_staged_α
.Lx813_0:               cmp              eax, 1;                              jne   .Lx813_1
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n404_call_proc_staged_α
.Lx813_1:                                                                     jmp   n404_call_proc_staged_α
n403_disjunction_β:     mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n403_disjunction_af
                                                                              jmp   n403_disjunction_af
n403_disjunction_af:    add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n405_lit_string_α
                                                                              jmp   n409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n404_call_proc_staged_α:
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 560]
                        call             proc_kw_dcα;                         jmp   .Lx815_2
.Lx815_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx815_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lx815_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n403_disjunction_β
                                                                              jmp   n403_disjunction_β
n404_call_proc_staged_β:
                                                                              jmp   n403_disjunction_β
.Lx815_0:               .quad            .Lx815_0_s
.Lx815_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 8
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n403_disjunction_as
n405_lit_string_β:                                                            jmp   n403_disjunction_af
.Lx816_0:               .quad            .Lx816_0_s
.Lx816_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n406_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n403_disjunction_af
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n407_lit_integer_α
n406_keyword_icon_β:                                                          jmp   n403_disjunction_af
.Lx817_0:               .quad            .Lx817_0_s
.Lx817_0_s:             .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n408_call_builtin_icon_α
.Lx818_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn820:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n403_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n403_disjunction_as
n408_call_builtin_icon_β:
                                                                              jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 6
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n410_disjunction_α
.Lx821_0:               .quad            .Lx821_0_s
.Lx821_0_s:             .string          "window"
#-----------------------------------------------------------------------------------------------------------------------
n410_disjunction_α:     mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n413_keyword_icon_α
n410_disjunction_as:    mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Lx823_0
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax;          jmp   n411_call_proc_staged_α
.Lx823_0:               cmp              eax, 1;                              jne   .Lx823_1
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax;          jmp   n411_call_proc_staged_α
.Lx823_1:                                                                     jmp   n411_call_proc_staged_α
n410_disjunction_β:     mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              je    n410_disjunction_af
                                                                              jmp   n410_disjunction_af
n410_disjunction_af:    add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 1;                              je    n412_lit_string_α
                                                                              jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             proc_kw_dcα;                         jmp   .Lx825_2
.Lx825_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx825_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx825_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n410_disjunction_β
                                                                              jmp   n410_disjunction_β
n411_call_proc_staged_β:
                                                                              jmp   n410_disjunction_β
.Lx825_0:               .quad            .Lx825_0_s
.Lx825_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 8
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n410_disjunction_as
n412_lit_string_β:                                                            jmp   n410_disjunction_af
.Lx826_0:               .quad            .Lx826_0_s
.Lx826_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n413_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n410_disjunction_af
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n410_disjunction_as
n413_keyword_icon_β:                                                          jmp   n410_disjunction_af
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          "&window"
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n415_disjunction_α
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n415_disjunction_α:     mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n418_keyword_icon_α
n415_disjunction_as:    mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx830_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n416_call_proc_staged_α
.Lx830_0:               cmp              eax, 1;                              jne   .Lx830_1
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax;          jmp   n416_call_proc_staged_α
.Lx830_1:                                                                     jmp   n416_call_proc_staged_α
n415_disjunction_β:     mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n415_disjunction_af
                                                                              jmp   n415_disjunction_af
n415_disjunction_af:    add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n417_lit_string_α
                                                                              jmp   n419_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        call             proc_kw_dcα;                         jmp   .Lx832_2
.Lx832_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx832_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx832_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n415_disjunction_β
                                                                              jmp   n415_disjunction_β
n416_call_proc_staged_β:
                                                                              jmp   n415_disjunction_β
.Lx832_0:               .quad            .Lx832_0_s
.Lx832_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 8
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n415_disjunction_as
n417_lit_string_β:                                                            jmp   n415_disjunction_af
.Lx833_0:               .quad            .Lx833_0_s
.Lx833_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n418_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n415_disjunction_af
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n415_disjunction_as
n418_keyword_icon_β:                                                          jmp   n415_disjunction_af
.Lx834_0:               .quad            .Lx834_0_s
.Lx834_0_s:             .string          "&x"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n420_disjunction_α
.Lx835_0:               .quad            .Lx835_0_s
.Lx835_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n420_disjunction_α:     mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n423_keyword_icon_α
n420_disjunction_as:    mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx837_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n421_call_proc_staged_α
.Lx837_0:               cmp              eax, 1;                              jne   .Lx837_1
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax;           jmp   n421_call_proc_staged_α
.Lx837_1:                                                                     jmp   n421_call_proc_staged_α
n420_disjunction_β:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n420_disjunction_af
                                                                              jmp   n420_disjunction_af
n420_disjunction_af:    add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n422_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             proc_kw_dcα;                         jmp   .Lx839_2
.Lx839_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx839_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx839_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n420_disjunction_β
                                                                              jmp   n420_disjunction_β
n421_call_proc_staged_β:
                                                                              jmp   n420_disjunction_β
.Lx839_0:               .quad            .Lx839_0_s
.Lx839_0_s:             .string          "kw"
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 8
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n420_disjunction_as
n422_lit_string_β:                                                            jmp   n420_disjunction_af
.Lx840_0:               .quad            .Lx840_0_s
.Lx840_0_s:             .string          "[failed]"
#-----------------------------------------------------------------------------------------------------------------------
n423_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n420_disjunction_af
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n420_disjunction_as
n423_keyword_icon_β:                                                          jmp   n420_disjunction_af
.Lx841_0:               .quad            .Lx841_0_s
.Lx841_0_s:             .string          "&y"
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
