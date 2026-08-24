                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__toby:
                        sub              rsp, 960
                        mov              rdi, rsp
                        add              rdi, 800
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
toby_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              r11, 2
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn33:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n15_var_α
                                                                              jmp   n2_lit_string_α
n1_call_builtin_icon_β: mov              r11, 2;                              jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 4
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n3_binop_α
.Lx34_0:                .quad            .Lx34_0_s
.Lx34_0_s:              .string          " to "
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_α:             mov              r11, 4
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 696], rax;          jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn39:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n15_var_α
                                                                              jmp   n6_binop_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_binop_α:             mov              r11, 7
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n8_binop_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          " by "
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              r11, 9
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax;          jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn46:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n15_var_α
                                                                              jmp   n11_binop_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              r11, 12
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n13_binop_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              r11, 14
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 456], rax;          jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n17_call_builtin_icon_α
.Lx53_0:                .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn55:               .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rsp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n19_var_α
                                                                              jmp   n18_call_builtin_icon_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn57:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n19_var_α
                                                                              jmp   n19_var_α
n18_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 168], rax;          jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 184], rax;          jmp   n22_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n22_to_by_α:            mov              r11, 23
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
                        mov              rdi, qword ptr [rsp + 176]
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
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 128], rax
.Lx65_0:                mov              rax, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 184]
                        cmp              rdx, 0;                              jl    .Lx65_1
                        cmp              rax, rcx;                            jg    n29_call_builtin_icon_α
                                                                              jmp   .Lx65_2
.Lx65_1:                cmp              rax, rcx;                            jl    n29_call_builtin_icon_α
.Lx65_2:                mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   n23_assign_α
n22_to_by_β:            mov              r11, 23
                        mov              rdx, qword ptr [rsp + 184]
                        mov              rax, qword ptr [rsp + 128]
                        add              rax, rdx
                        mov              qword ptr [rsp + 128], rax;          jmp   .Lx65_0
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n24_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n24_bound_α:            mov              r11, 25
                        mov              qword ptr [rsp + 192], rsp;          jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n26_var_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 328], rax;          jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn73:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n28_unmark_α
                                                                              jmp   n28_unmark_α
n27_call_builtin_icon_β:
                        mov              r11, 28;                             jmp   n28_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unmark_α:           mov              r11, 29
                        mov              rsp, qword ptr [rsp + 192];          jmp   n22_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              r11, 30
                        .section         .rodata
.Lrkfn77:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 80]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    toby_ω
                                                                              jmp   toby_γ
n29_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   toby_ω
#-----------------------------------------------------------------------------------------------------------------------
toby_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
toby_β:
                                                                              jmp   toby_ω
#-----------------------------------------------------------------------------------------------------------------------
toby_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 960;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
toby_ω:
                        add              rsp, 960;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
toby_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx78_3]
                        push             rcx
                        lea              rcx, [rip + .Lx78_2]
                        push             rcx;                                 jmp   FN__toby
.Lx78_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx78_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__unop:
                        sub              rsp, 1424
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
unop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n81_binop_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:            mov              r11, 33
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n83_call_builtin_icon_α
.Lx118_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn120:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rsp + 224]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n113_return_α
                                                                              jmp   n84_disjunction_α
n83_call_builtin_icon_β:
                        mov              r11, 35;                             jmp   n113_return_α
#-----------------------------------------------------------------------------------------------------------------------
n84_disjunction_α:      mov              r11, 36
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n110_var_α
n84_disjunction_as:     mov              r11, 36
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Lx122_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax;          jmp   n85_lit_integer_α
.Lx122_0:               cmp              eax, 1;                              jne   .Lx122_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 408], rax;          jmp   n85_lit_integer_α
.Lx122_1:                                                                     jmp   n85_lit_integer_α
n84_disjunction_β:      mov              r11, 36
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              je    n112_call_value_β
                                                                              jmp   n84_disjunction_af
n84_disjunction_af:     mov              r11, 36
                        add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 1;                              je    n109_lit_string_α
                                                                              jmp   n113_return_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n86_call_builtin_icon_α
.Lx123_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn125:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n84_disjunction_β
                                                                              jmp   n87_disjunction_α
n86_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n84_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n87_disjunction_α:      mov              r11, 39
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n106_var_α
n87_disjunction_as:     mov              r11, 39
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx127_0
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax;          jmp   n88_lit_integer_α
.Lx127_0:               cmp              eax, 1;                              jne   .Lx127_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 648], rax;          jmp   n88_lit_integer_α
.Lx127_1:                                                                     jmp   n88_lit_integer_α
n87_disjunction_β:      mov              r11, 39
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n108_call_value_β
                                                                              jmp   n87_disjunction_af
n87_disjunction_af:     mov              r11, 39
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n105_lit_string_α
                                                                              jmp   n84_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n89_call_builtin_icon_α
.Lx128_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn130:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
                        lea              rsi, [rsp + 592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n87_disjunction_β
                                                                              jmp   n90_disjunction_α
n89_call_builtin_icon_β:
                        mov              r11, 41;                             jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n90_disjunction_α:      mov              r11, 42
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n102_var_α
n90_disjunction_as:     mov              r11, 42
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx132_0
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax;          jmp   n91_lit_integer_α
.Lx132_0:               cmp              eax, 1;                              jne   .Lx132_1
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 888], rax;          jmp   n91_lit_integer_α
.Lx132_1:                                                                     jmp   n91_lit_integer_α
n90_disjunction_β:      mov              r11, 42
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              je    n104_call_value_β
                                                                              jmp   n90_disjunction_af
n90_disjunction_af:     mov              r11, 42
                        add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 1;                              je    n101_lit_string_α
                                                                              jmp   n87_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n92_call_builtin_icon_α
.Lx133_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn135:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n90_disjunction_β
                                                                              jmp   n93_disjunction_α
n92_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n90_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n93_disjunction_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              dword ptr [rsp + 1136], 0;           jmp   n98_var_α
n93_disjunction_as:     mov              r11, 45
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 0;                              jne   .Lx137_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n94_lit_integer_α
.Lx137_0:               cmp              eax, 1;                              jne   .Lx137_1
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n94_lit_integer_α
.Lx137_1:                                                                     jmp   n94_lit_integer_α
n93_disjunction_β:      mov              r11, 45
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 0;                              je    n100_call_value_β
                                                                              jmp   n93_disjunction_af
n93_disjunction_af:     mov              r11, 45
                        add              dword ptr [rsp + 1136], 1
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 1;                              je    n97_lit_string_α
                                                                              jmp   n90_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n95_call_builtin_icon_α
.Lx138_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn140:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n93_disjunction_β
                                                                              jmp   n96_call_builtin_icon_α
n95_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   n93_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_icon_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 112]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n93_disjunction_β
                                                                              jmp   n113_return_α
n96_call_builtin_icon_β:
                        mov              r11, 48;                             jmp   n93_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 3
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n93_disjunction_as
n97_lit_string_β:       mov              r11, 49;                             jmp   n93_disjunction_af
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n99_var_α
n98_var_β:              mov              r11, 50;                             jmp   n93_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n100_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_value_α:      mov              r11, 52
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1192], rax
                        mov              qword ptr [rsp + 1200], 0
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        lea              rdx, [rsp + 1184]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx149_7
                        lea              rcx, [rip + .Lx149_4]
                        push             rcx
                        lea              rcx, [rip + .Lx149_3]
                        push             rcx;                                 jmp   rax
.Lx149_3:               mov              qword ptr [rsp + 1208], rsp
                        mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx149_5
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx149_2
.Lx149_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx149_2
.Lx149_4:               mov              qword ptr [rsp + 1208], rsp
                        mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx149_6
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx149_2
.Lx149_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx149_2
.Lx149_7:               mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        lea              rdx, [rsp + 1184]
                        mov              ecx, 1
                        lea              r8, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx149_2:               mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n93_disjunction_af
                                                                              jmp   n93_disjunction_as
n100_call_value_β:      mov              r11, 52
                        mov              rax, qword ptr [rsp + 1200]
                        cmp              rax, 1;                              jne   .Lx149_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1208];         jmp   qword ptr [rsp]
.Lx149_8:               lea              rdi, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n93_disjunction_af
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n93_disjunction_as
                                                                              jmp   n93_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n90_disjunction_as
n101_lit_string_β:      mov              r11, 53;                             jmp   n90_disjunction_af
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             mov              r11, 54
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 920], rax;          jmp   n103_var_α
n102_var_β:             mov              r11, 54;                             jmp   n90_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              r11, 55
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n104_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_value_α:      mov              r11, 56
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        mov              qword ptr [rsp + 960], 0
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        lea              rdx, [rsp + 944]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx156_7
                        lea              rcx, [rip + .Lx156_4]
                        push             rcx
                        lea              rcx, [rip + .Lx156_3]
                        push             rcx;                                 jmp   rax
.Lx156_3:               mov              qword ptr [rsp + 968], rsp
                        mov              rax, qword ptr [rsp + 960]
                        test             rax, rax;                            jne   .Lx156_5
                        mov              qword ptr [rsp + 960], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx156_2
.Lx156_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx156_2
.Lx156_4:               mov              qword ptr [rsp + 968], rsp
                        mov              rax, qword ptr [rsp + 960]
                        test             rax, rax;                            jne   .Lx156_6
                        mov              qword ptr [rsp + 960], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx156_2
.Lx156_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx156_2
.Lx156_7:               mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        lea              rdx, [rsp + 944]
                        mov              ecx, 1
                        lea              r8, [rsp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx156_2:               mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n90_disjunction_af
                                                                              jmp   n90_disjunction_as
n104_call_value_β:      mov              r11, 56
                        mov              rax, qword ptr [rsp + 960]
                        cmp              rax, 1;                              jne   .Lx156_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 968];          jmp   qword ptr [rsp]
.Lx156_8:               lea              rdi, [rsp + 960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n90_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n90_disjunction_as
                                                                              jmp   n90_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 3
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n87_disjunction_as
n105_lit_string_β:      mov              r11, 57;                             jmp   n87_disjunction_af
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              r11, 58
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 680], rax;          jmp   n107_var_α
n106_var_β:             mov              r11, 58;                             jmp   n87_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax;          jmp   n108_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_value_α:      mov              r11, 60
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              qword ptr [rsp + 720], 0
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        lea              rdx, [rsp + 704]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx163_7
                        lea              rcx, [rip + .Lx163_4]
                        push             rcx
                        lea              rcx, [rip + .Lx163_3]
                        push             rcx;                                 jmp   rax
.Lx163_3:               mov              qword ptr [rsp + 728], rsp
                        mov              rax, qword ptr [rsp + 720]
                        test             rax, rax;                            jne   .Lx163_5
                        mov              qword ptr [rsp + 720], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx163_2
.Lx163_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx163_2
.Lx163_4:               mov              qword ptr [rsp + 728], rsp
                        mov              rax, qword ptr [rsp + 720]
                        test             rax, rax;                            jne   .Lx163_6
                        mov              qword ptr [rsp + 720], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx163_2
.Lx163_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx163_2
.Lx163_7:               mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        lea              rdx, [rsp + 704]
                        mov              ecx, 1
                        lea              r8, [rsp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx163_2:               mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n87_disjunction_af
                                                                              jmp   n87_disjunction_as
n108_call_value_β:      mov              r11, 60
                        mov              rax, qword ptr [rsp + 720]
                        cmp              rax, 1;                              jne   .Lx163_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 728];          jmp   qword ptr [rsp]
.Lx163_8:               lea              rdi, [rsp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n87_disjunction_af
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n87_disjunction_as
                                                                              jmp   n87_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 3
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n84_disjunction_as
n109_lit_string_β:      mov              r11, 61;                             jmp   n84_disjunction_af
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n111_var_α
n110_var_β:             mov              r11, 62;                             jmp   n84_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              r11, 63
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 536], rax;          jmp   n112_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_value_α:      mov              r11, 64
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], 0
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        lea              rdx, [rsp + 464]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx170_7
                        lea              rcx, [rip + .Lx170_4]
                        push             rcx
                        lea              rcx, [rip + .Lx170_3]
                        push             rcx;                                 jmp   rax
.Lx170_3:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx170_5
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx170_2
.Lx170_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx170_2
.Lx170_4:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx170_6
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx170_2
.Lx170_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx170_2
.Lx170_7:               mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        lea              rdx, [rsp + 464]
                        mov              ecx, 1
                        lea              r8, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx170_2:               mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n84_disjunction_af
                                                                              jmp   n84_disjunction_as
n112_call_value_β:      mov              r11, 64
                        mov              rax, qword ptr [rsp + 480]
                        cmp              rax, 1;                              jne   .Lx170_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 488];          jmp   qword ptr [rsp]
.Lx170_8:               lea              rdi, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n84_disjunction_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n84_disjunction_as
                                                                              jmp   n84_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n113_return_α:          mov              r11, 65
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   unop_γ
#-----------------------------------------------------------------------------------------------------------------------
unop_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
unop_β:
                                                                              jmp   unop_ω
#-----------------------------------------------------------------------------------------------------------------------
unop_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1424;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
unop_ω:
                        add              rsp, 1424;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__binop:
                        sub              rsp, 3888
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
binop_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 2
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n173_var_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "x "
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 68
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 2
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n175_binop_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          " y"
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           mov              r11, 69
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              r11, 70
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n177_call_builtin_icon_α
.Lx281_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn283:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n275_return_α
                                                                              jmp   n178_disjunction_α
n177_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n275_return_α
#-----------------------------------------------------------------------------------------------------------------------
n178_disjunction_α:     mov              r11, 72
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n271_var_α
n178_disjunction_as:    mov              r11, 72
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx285_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax;          jmp   n179_lit_integer_α
.Lx285_0:               cmp              eax, 1;                              jne   .Lx285_1
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 568], rax;          jmp   n179_lit_integer_α
.Lx285_1:                                                                     jmp   n179_lit_integer_α
n178_disjunction_β:     mov              r11, 72
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n274_call_value_β
                                                                              jmp   n178_disjunction_af
n178_disjunction_af:    mov              r11, 72
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n270_lit_string_α
                                                                              jmp   n275_return_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n180_call_builtin_icon_α
.Lx286_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n178_disjunction_β
                                                                              jmp   n181_disjunction_α
n180_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n178_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n181_disjunction_α:     mov              r11, 75
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              dword ptr [rsp + 848], 0;            jmp   n266_var_α
n181_disjunction_as:    mov              r11, 75
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              jne   .Lx290_0
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax;          jmp   n182_lit_integer_α
.Lx290_0:               cmp              eax, 1;                              jne   .Lx290_1
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 840], rax;          jmp   n182_lit_integer_α
.Lx290_1:                                                                     jmp   n182_lit_integer_α
n181_disjunction_β:     mov              r11, 75
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 0;                              je    n269_call_value_β
                                                                              jmp   n181_disjunction_af
n181_disjunction_af:    mov              r11, 75
                        add              dword ptr [rsp + 848], 1
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 1;                              je    n265_lit_string_α
                                                                              jmp   n178_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n183_call_builtin_icon_α
.Lx291_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn293:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n181_disjunction_β
                                                                              jmp   n184_disjunction_α
n183_call_builtin_icon_β:
                        mov              r11, 77;                             jmp   n181_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n184_disjunction_α:     mov              r11, 78
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              dword ptr [rsp + 1120], 0;           jmp   n261_var_α
n184_disjunction_as:    mov              r11, 78
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              jne   .Lx295_0
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n185_lit_integer_α
.Lx295_0:               cmp              eax, 1;                              jne   .Lx295_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n185_lit_integer_α
.Lx295_1:                                                                     jmp   n185_lit_integer_α
n184_disjunction_β:     mov              r11, 78
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              je    n264_call_value_β
                                                                              jmp   n184_disjunction_af
n184_disjunction_af:    mov              r11, 78
                        add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 1;                              je    n260_lit_string_α
                                                                              jmp   n181_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n186_call_builtin_icon_α
.Lx296_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_icon_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn298:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n184_disjunction_β
                                                                              jmp   n187_disjunction_α
n186_call_builtin_icon_β:
                        mov              r11, 80;                             jmp   n184_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n187_disjunction_α:     mov              r11, 81
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              dword ptr [rsp + 1392], 0;           jmp   n256_var_α
n187_disjunction_as:    mov              r11, 81
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              jne   .Lx300_0
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n188_lit_integer_α
.Lx300_0:               cmp              eax, 1;                              jne   .Lx300_1
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n188_lit_integer_α
.Lx300_1:                                                                     jmp   n188_lit_integer_α
n187_disjunction_β:     mov              r11, 81
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              je    n259_call_value_β
                                                                              jmp   n187_disjunction_af
n187_disjunction_af:    mov              r11, 81
                        add              dword ptr [rsp + 1392], 1
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 1;                              je    n255_lit_string_α
                                                                              jmp   n184_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n189_call_builtin_icon_α
.Lx301_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn303:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n187_disjunction_β
                                                                              jmp   n190_disjunction_α
n189_call_builtin_icon_β:
                        mov              r11, 83;                             jmp   n187_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n190_disjunction_α:     mov              r11, 84
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              dword ptr [rsp + 1664], 0;           jmp   n251_var_α
n190_disjunction_as:    mov              r11, 84
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 0;                              jne   .Lx305_0
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n191_lit_integer_α
.Lx305_0:               cmp              eax, 1;                              jne   .Lx305_1
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n191_lit_integer_α
.Lx305_1:                                                                     jmp   n191_lit_integer_α
n190_disjunction_β:     mov              r11, 84
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 0;                              je    n254_call_value_β
                                                                              jmp   n190_disjunction_af
n190_disjunction_af:    mov              r11, 84
                        add              dword ptr [rsp + 1664], 1
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 1;                              je    n250_lit_string_α
                                                                              jmp   n187_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              r11, 85
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n192_call_builtin_icon_α
.Lx306_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn308:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n190_disjunction_β
                                                                              jmp   n193_disjunction_α
n192_call_builtin_icon_β:
                        mov              r11, 86;                             jmp   n190_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n193_disjunction_α:     mov              r11, 87
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              dword ptr [rsp + 1936], 0;           jmp   n246_var_α
n193_disjunction_as:    mov              r11, 87
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 0;                              jne   .Lx310_0
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n194_lit_integer_α
.Lx310_0:               cmp              eax, 1;                              jne   .Lx310_1
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n194_lit_integer_α
.Lx310_1:                                                                     jmp   n194_lit_integer_α
n193_disjunction_β:     mov              r11, 87
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 0;                              je    n249_call_value_β
                                                                              jmp   n193_disjunction_af
n193_disjunction_af:    mov              r11, 87
                        add              dword ptr [rsp + 1936], 1
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 1;                              je    n245_lit_string_α
                                                                              jmp   n190_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n195_call_builtin_icon_α
.Lx311_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_icon_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn313:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n193_disjunction_β
                                                                              jmp   n196_disjunction_α
n195_call_builtin_icon_β:
                        mov              r11, 89;                             jmp   n193_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n196_disjunction_α:     mov              r11, 90
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              dword ptr [rsp + 2208], 0;           jmp   n241_var_α
n196_disjunction_as:    mov              r11, 90
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              eax, 0;                              jne   .Lx315_0
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n197_lit_integer_α
.Lx315_0:               cmp              eax, 1;                              jne   .Lx315_1
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n197_lit_integer_α
.Lx315_1:                                                                     jmp   n197_lit_integer_α
n196_disjunction_β:     mov              r11, 90
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              eax, 0;                              je    n244_call_value_β
                                                                              jmp   n196_disjunction_af
n196_disjunction_af:    mov              r11, 90
                        add              dword ptr [rsp + 2208], 1
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              eax, 1;                              je    n240_lit_string_α
                                                                              jmp   n193_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n198_call_builtin_icon_α
.Lx316_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn318:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n196_disjunction_β
                                                                              jmp   n199_disjunction_α
n198_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n196_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n199_disjunction_α:     mov              r11, 93
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              dword ptr [rsp + 2480], 0;           jmp   n236_var_α
n199_disjunction_as:    mov              r11, 93
                        mov              eax, dword ptr [rsp + 2480]
                        cmp              eax, 0;                              jne   .Lx320_0
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n200_lit_integer_α
.Lx320_0:               cmp              eax, 1;                              jne   .Lx320_1
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n200_lit_integer_α
.Lx320_1:                                                                     jmp   n200_lit_integer_α
n199_disjunction_β:     mov              r11, 93
                        mov              eax, dword ptr [rsp + 2480]
                        cmp              eax, 0;                              je    n239_call_value_β
                                                                              jmp   n199_disjunction_af
n199_disjunction_af:    mov              r11, 93
                        add              dword ptr [rsp + 2480], 1
                        mov              eax, dword ptr [rsp + 2480]
                        cmp              eax, 1;                              je    n235_lit_string_α
                                                                              jmp   n196_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n201_call_builtin_icon_α
.Lx321_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2440], rax
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn323:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n199_disjunction_β
                                                                              jmp   n202_disjunction_α
n201_call_builtin_icon_β:
                        mov              r11, 95;                             jmp   n199_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n202_disjunction_α:     mov              r11, 96
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n231_var_α
n202_disjunction_as:    mov              r11, 96
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx325_0
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n203_lit_integer_α
.Lx325_0:               cmp              eax, 1;                              jne   .Lx325_1
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n203_lit_integer_α
.Lx325_1:                                                                     jmp   n203_lit_integer_α
n202_disjunction_β:     mov              r11, 96
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              je    n234_call_value_β
                                                                              jmp   n202_disjunction_af
n202_disjunction_af:    mov              r11, 96
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 1;                              je    n230_lit_string_α
                                                                              jmp   n199_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rsp + 2928], 3            # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n204_call_builtin_icon_α
.Lx326_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_icon_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn328:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n202_disjunction_β
                                                                              jmp   n205_disjunction_α
n204_call_builtin_icon_β:
                        mov              r11, 98;                             jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n205_disjunction_α:     mov              r11, 99
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              dword ptr [rsp + 3024], 0;           jmp   n226_var_α
n205_disjunction_as:    mov              r11, 99
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              jne   .Lx330_0
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n206_lit_integer_α
.Lx330_0:               cmp              eax, 1;                              jne   .Lx330_1
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n206_lit_integer_α
.Lx330_1:                                                                     jmp   n206_lit_integer_α
n205_disjunction_β:     mov              r11, 99
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              je    n229_call_value_β
                                                                              jmp   n205_disjunction_af
n205_disjunction_af:    mov              r11, 99
                        add              dword ptr [rsp + 3024], 1
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 1;                              je    n225_lit_string_α
                                                                              jmp   n202_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n207_call_builtin_icon_α
.Lx331_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn333:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n205_disjunction_β
                                                                              jmp   n208_disjunction_α
n207_call_builtin_icon_β:
                        mov              r11, 101;                            jmp   n205_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n208_disjunction_α:     mov              r11, 102
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              dword ptr [rsp + 3296], 0;           jmp   n221_var_α
n208_disjunction_as:    mov              r11, 102
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 0;                              jne   .Lx335_0
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n209_lit_integer_α
.Lx335_0:               cmp              eax, 1;                              jne   .Lx335_1
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n209_lit_integer_α
.Lx335_1:                                                                     jmp   n209_lit_integer_α
n208_disjunction_β:     mov              r11, 102
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 0;                              je    n224_call_value_β
                                                                              jmp   n208_disjunction_af
n208_disjunction_af:    mov              r11, 102
                        add              dword ptr [rsp + 3296], 1
                        mov              eax, dword ptr [rsp + 3296]
                        cmp              eax, 1;                              je    n220_lit_string_α
                                                                              jmp   n205_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 3472], 3            # result
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n210_call_builtin_icon_α
.Lx336_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_icon_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn338:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    n208_disjunction_β
                                                                              jmp   n211_disjunction_α
n210_call_builtin_icon_β:
                        mov              r11, 104;                            jmp   n208_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n211_disjunction_α:     mov              r11, 105
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              dword ptr [rsp + 3568], 0;           jmp   n216_var_α
n211_disjunction_as:    mov              r11, 105
                        mov              eax, dword ptr [rsp + 3568]
                        cmp              eax, 0;                              jne   .Lx340_0
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n212_lit_integer_α
.Lx340_0:               cmp              eax, 1;                              jne   .Lx340_1
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n212_lit_integer_α
.Lx340_1:                                                                     jmp   n212_lit_integer_α
n211_disjunction_β:     mov              r11, 105
                        mov              eax, dword ptr [rsp + 3568]
                        cmp              eax, 0;                              je    n219_call_value_β
                                                                              jmp   n211_disjunction_af
n211_disjunction_af:    mov              r11, 105
                        add              dword ptr [rsp + 3568], 1
                        mov              eax, dword ptr [rsp + 3568]
                        cmp              eax, 1;                              je    n215_lit_string_α
                                                                              jmp   n208_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rsp + 3744], 3            # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n213_call_builtin_icon_α
.Lx341_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3512], rax
                        .section         .rodata
.Lrkfn343:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rsp + 3504]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n211_disjunction_β
                                                                              jmp   n214_call_builtin_icon_α
n213_call_builtin_icon_β:
                        mov              r11, 107;                            jmp   n211_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn345:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rsp + 112]
                        mov              edx, 14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n211_disjunction_β
                                                                              jmp   n275_return_α
n214_call_builtin_icon_β:
                        mov              r11, 108;                            jmp   n211_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 3
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n211_disjunction_as
n215_lit_string_β:      mov              r11, 109;                            jmp   n211_disjunction_af
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n217_var_α
n216_var_β:             mov              r11, 110;                            jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n219_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_value_α:      mov              r11, 113
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3640], rax
                        mov              qword ptr [rsp + 3648], 0
                        mov              rdi, qword ptr [rsp + 3584]
                        mov              rsi, qword ptr [rsp + 3592]
                        lea              rdx, [rsp + 3616]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx354_7
                        lea              rcx, [rip + .Lx354_4]
                        push             rcx
                        lea              rcx, [rip + .Lx354_3]
                        push             rcx;                                 jmp   rax
.Lx354_3:               mov              qword ptr [rsp + 3656], rsp
                        mov              rax, qword ptr [rsp + 3648]
                        test             rax, rax;                            jne   .Lx354_5
                        mov              qword ptr [rsp + 3648], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx354_2
.Lx354_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx354_2
.Lx354_4:               mov              qword ptr [rsp + 3656], rsp
                        mov              rax, qword ptr [rsp + 3648]
                        test             rax, rax;                            jne   .Lx354_6
                        mov              qword ptr [rsp + 3648], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx354_2
.Lx354_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx354_2
.Lx354_7:               mov              rdi, qword ptr [rsp + 3584]
                        mov              rsi, qword ptr [rsp + 3592]
                        lea              rdx, [rsp + 3616]
                        mov              ecx, 2
                        lea              r8, [rsp + 3648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx354_2:               mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx
                        cmp              al, 104;                             je    n211_disjunction_af
                                                                              jmp   n211_disjunction_as
n219_call_value_β:      mov              r11, 113
                        mov              rax, qword ptr [rsp + 3648]
                        cmp              rax, 1;                              jne   .Lx354_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3656];         jmp   qword ptr [rsp]
.Lx354_8:               lea              rdi, [rsp + 3648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n211_disjunction_af
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n211_disjunction_as
                                                                              jmp   n211_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 3456], 2            # result
                        mov              dword ptr [rsp + 3460], 3
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n208_disjunction_as
n220_lit_string_β:      mov              r11, 114;                            jmp   n208_disjunction_af
.Lx355_0:               .quad            .Lx355_0_s
.Lx355_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n222_var_α
n221_var_β:             mov              r11, 115;                            jmp   n208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n224_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_value_α:      mov              r11, 118
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3368], rax
                        mov              qword ptr [rsp + 3376], 0
                        mov              rdi, qword ptr [rsp + 3312]
                        mov              rsi, qword ptr [rsp + 3320]
                        lea              rdx, [rsp + 3344]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx363_7
                        lea              rcx, [rip + .Lx363_4]
                        push             rcx
                        lea              rcx, [rip + .Lx363_3]
                        push             rcx;                                 jmp   rax
.Lx363_3:               mov              qword ptr [rsp + 3384], rsp
                        mov              rax, qword ptr [rsp + 3376]
                        test             rax, rax;                            jne   .Lx363_5
                        mov              qword ptr [rsp + 3376], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx363_2
.Lx363_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx363_2
.Lx363_4:               mov              qword ptr [rsp + 3384], rsp
                        mov              rax, qword ptr [rsp + 3376]
                        test             rax, rax;                            jne   .Lx363_6
                        mov              qword ptr [rsp + 3376], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx363_2
.Lx363_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx363_2
.Lx363_7:               mov              rdi, qword ptr [rsp + 3312]
                        mov              rsi, qword ptr [rsp + 3320]
                        lea              rdx, [rsp + 3344]
                        mov              ecx, 2
                        lea              r8, [rsp + 3376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx363_2:               mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    n208_disjunction_af
                                                                              jmp   n208_disjunction_as
n224_call_value_β:      mov              r11, 118
                        mov              rax, qword ptr [rsp + 3376]
                        cmp              rax, 1;                              jne   .Lx363_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3384];         jmp   qword ptr [rsp]
.Lx363_8:               lea              rdi, [rsp + 3376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n208_disjunction_af
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx;         jmp   n208_disjunction_as
                                                                              jmp   n208_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 3
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n205_disjunction_as
n225_lit_string_β:      mov              r11, 119;                            jmp   n205_disjunction_af
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 120
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n227_var_α
n226_var_β:             mov              r11, 120;                            jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n228_var_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n229_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_value_α:      mov              r11, 123
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3096], rax
                        mov              qword ptr [rsp + 3104], 0
                        mov              rdi, qword ptr [rsp + 3040]
                        mov              rsi, qword ptr [rsp + 3048]
                        lea              rdx, [rsp + 3072]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx372_7
                        lea              rcx, [rip + .Lx372_4]
                        push             rcx
                        lea              rcx, [rip + .Lx372_3]
                        push             rcx;                                 jmp   rax
.Lx372_3:               mov              qword ptr [rsp + 3112], rsp
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lx372_5
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx372_2
.Lx372_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx372_2
.Lx372_4:               mov              qword ptr [rsp + 3112], rsp
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lx372_6
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx372_2
.Lx372_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx372_2
.Lx372_7:               mov              rdi, qword ptr [rsp + 3040]
                        mov              rsi, qword ptr [rsp + 3048]
                        lea              rdx, [rsp + 3072]
                        mov              ecx, 2
                        lea              r8, [rsp + 3104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx372_2:               mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n205_disjunction_af
                                                                              jmp   n205_disjunction_as
n229_call_value_β:      mov              r11, 123
                        mov              rax, qword ptr [rsp + 3104]
                        cmp              rax, 1;                              jne   .Lx372_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3112];         jmp   qword ptr [rsp]
.Lx372_8:               lea              rdi, [rsp + 3104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n205_disjunction_af
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n205_disjunction_as
                                                                              jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 3
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n202_disjunction_as
n230_lit_string_β:      mov              r11, 124;                            jmp   n202_disjunction_af
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n232_var_α
n231_var_β:             mov              r11, 125;                            jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n234_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_value_α:      mov              r11, 128
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2824], rax
                        mov              qword ptr [rsp + 2832], 0
                        mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
                        lea              rdx, [rsp + 2800]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx381_7
                        lea              rcx, [rip + .Lx381_4]
                        push             rcx
                        lea              rcx, [rip + .Lx381_3]
                        push             rcx;                                 jmp   rax
.Lx381_3:               mov              qword ptr [rsp + 2840], rsp
                        mov              rax, qword ptr [rsp + 2832]
                        test             rax, rax;                            jne   .Lx381_5
                        mov              qword ptr [rsp + 2832], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx381_2
.Lx381_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx381_2
.Lx381_4:               mov              qword ptr [rsp + 2840], rsp
                        mov              rax, qword ptr [rsp + 2832]
                        test             rax, rax;                            jne   .Lx381_6
                        mov              qword ptr [rsp + 2832], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx381_2
.Lx381_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx381_2
.Lx381_7:               mov              rdi, qword ptr [rsp + 2768]
                        mov              rsi, qword ptr [rsp + 2776]
                        lea              rdx, [rsp + 2800]
                        mov              ecx, 2
                        lea              r8, [rsp + 2832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx381_2:               mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n202_disjunction_af
                                                                              jmp   n202_disjunction_as
n234_call_value_β:      mov              r11, 128
                        mov              rax, qword ptr [rsp + 2832]
                        cmp              rax, 1;                              jne   .Lx381_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2840];         jmp   qword ptr [rsp]
.Lx381_8:               lea              rdi, [rsp + 2832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n202_disjunction_af
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n202_disjunction_as
                                                                              jmp   n202_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 3
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n199_disjunction_as
n235_lit_string_β:      mov              r11, 129;                            jmp   n199_disjunction_af
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n237_var_α
n236_var_β:             mov              r11, 130;                            jmp   n199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n239_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_value_α:      mov              r11, 133
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2552], rax
                        mov              qword ptr [rsp + 2560], 0
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        lea              rdx, [rsp + 2528]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx390_7
                        lea              rcx, [rip + .Lx390_4]
                        push             rcx
                        lea              rcx, [rip + .Lx390_3]
                        push             rcx;                                 jmp   rax
.Lx390_3:               mov              qword ptr [rsp + 2568], rsp
                        mov              rax, qword ptr [rsp + 2560]
                        test             rax, rax;                            jne   .Lx390_5
                        mov              qword ptr [rsp + 2560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx390_2
.Lx390_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx390_2
.Lx390_4:               mov              qword ptr [rsp + 2568], rsp
                        mov              rax, qword ptr [rsp + 2560]
                        test             rax, rax;                            jne   .Lx390_6
                        mov              qword ptr [rsp + 2560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx390_2
.Lx390_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx390_2
.Lx390_7:               mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        lea              rdx, [rsp + 2528]
                        mov              ecx, 2
                        lea              r8, [rsp + 2560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx390_2:               mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n199_disjunction_af
                                                                              jmp   n199_disjunction_as
n239_call_value_β:      mov              r11, 133
                        mov              rax, qword ptr [rsp + 2560]
                        cmp              rax, 1;                              jne   .Lx390_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2568];         jmp   qword ptr [rsp]
.Lx390_8:               lea              rdi, [rsp + 2560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n199_disjunction_af
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n199_disjunction_as
                                                                              jmp   n199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n196_disjunction_as
n240_lit_string_β:      mov              r11, 134;                            jmp   n196_disjunction_af
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n242_var_α
n241_var_β:             mov              r11, 135;                            jmp   n196_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n244_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_value_α:      mov              r11, 138
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2280], rax
                        mov              qword ptr [rsp + 2288], 0
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        lea              rdx, [rsp + 2256]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx399_7
                        lea              rcx, [rip + .Lx399_4]
                        push             rcx
                        lea              rcx, [rip + .Lx399_3]
                        push             rcx;                                 jmp   rax
.Lx399_3:               mov              qword ptr [rsp + 2296], rsp
                        mov              rax, qword ptr [rsp + 2288]
                        test             rax, rax;                            jne   .Lx399_5
                        mov              qword ptr [rsp + 2288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx399_2
.Lx399_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx399_2
.Lx399_4:               mov              qword ptr [rsp + 2296], rsp
                        mov              rax, qword ptr [rsp + 2288]
                        test             rax, rax;                            jne   .Lx399_6
                        mov              qword ptr [rsp + 2288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx399_2
.Lx399_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx399_2
.Lx399_7:               mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        lea              rdx, [rsp + 2256]
                        mov              ecx, 2
                        lea              r8, [rsp + 2288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx399_2:               mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n196_disjunction_af
                                                                              jmp   n196_disjunction_as
n244_call_value_β:      mov              r11, 138
                        mov              rax, qword ptr [rsp + 2288]
                        cmp              rax, 1;                              jne   .Lx399_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2296];         jmp   qword ptr [rsp]
.Lx399_8:               lea              rdi, [rsp + 2288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n196_disjunction_af
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n196_disjunction_as
                                                                              jmp   n196_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 3
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n193_disjunction_as
n245_lit_string_β:      mov              r11, 139;                            jmp   n193_disjunction_af
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n247_var_α
n246_var_β:             mov              r11, 140;                            jmp   n193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             mov              r11, 141
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             mov              r11, 142
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n249_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n249_call_value_α:      mov              r11, 143
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2008], rax
                        mov              qword ptr [rsp + 2016], 0
                        mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        lea              rdx, [rsp + 1984]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx408_7
                        lea              rcx, [rip + .Lx408_4]
                        push             rcx
                        lea              rcx, [rip + .Lx408_3]
                        push             rcx;                                 jmp   rax
.Lx408_3:               mov              qword ptr [rsp + 2024], rsp
                        mov              rax, qword ptr [rsp + 2016]
                        test             rax, rax;                            jne   .Lx408_5
                        mov              qword ptr [rsp + 2016], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx408_2
.Lx408_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx408_2
.Lx408_4:               mov              qword ptr [rsp + 2024], rsp
                        mov              rax, qword ptr [rsp + 2016]
                        test             rax, rax;                            jne   .Lx408_6
                        mov              qword ptr [rsp + 2016], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx408_2
.Lx408_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx408_2
.Lx408_7:               mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        lea              rdx, [rsp + 1984]
                        mov              ecx, 2
                        lea              r8, [rsp + 2016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx408_2:               mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n193_disjunction_af
                                                                              jmp   n193_disjunction_as
n249_call_value_β:      mov              r11, 143
                        mov              rax, qword ptr [rsp + 2016]
                        cmp              rax, 1;                              jne   .Lx408_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2024];         jmp   qword ptr [rsp]
.Lx408_8:               lea              rdi, [rsp + 2016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n193_disjunction_af
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n193_disjunction_as
                                                                              jmp   n193_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 3
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n190_disjunction_as
n250_lit_string_β:      mov              r11, 144;                            jmp   n190_disjunction_af
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n252_var_α
n251_var_β:             mov              r11, 145;                            jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n254_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_value_α:      mov              r11, 148
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1736], rax
                        mov              qword ptr [rsp + 1744], 0
                        mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        lea              rdx, [rsp + 1712]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx417_7
                        lea              rcx, [rip + .Lx417_4]
                        push             rcx
                        lea              rcx, [rip + .Lx417_3]
                        push             rcx;                                 jmp   rax
.Lx417_3:               mov              qword ptr [rsp + 1752], rsp
                        mov              rax, qword ptr [rsp + 1744]
                        test             rax, rax;                            jne   .Lx417_5
                        mov              qword ptr [rsp + 1744], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx417_2
.Lx417_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx417_2
.Lx417_4:               mov              qword ptr [rsp + 1752], rsp
                        mov              rax, qword ptr [rsp + 1744]
                        test             rax, rax;                            jne   .Lx417_6
                        mov              qword ptr [rsp + 1744], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx417_2
.Lx417_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx417_2
.Lx417_7:               mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        lea              rdx, [rsp + 1712]
                        mov              ecx, 2
                        lea              r8, [rsp + 1744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx417_2:               mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n190_disjunction_af
                                                                              jmp   n190_disjunction_as
n254_call_value_β:      mov              r11, 148
                        mov              rax, qword ptr [rsp + 1744]
                        cmp              rax, 1;                              jne   .Lx417_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1752];         jmp   qword ptr [rsp]
.Lx417_8:               lea              rdi, [rsp + 1744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n190_disjunction_af
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n190_disjunction_as
                                                                              jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n187_disjunction_as
n255_lit_string_β:      mov              r11, 149;                            jmp   n187_disjunction_af
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n257_var_α
n256_var_β:             mov              r11, 150;                            jmp   n187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              r11, 151
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n258_var_α
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n259_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_value_α:      mov              r11, 153
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1464], rax
                        mov              qword ptr [rsp + 1472], 0
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        lea              rdx, [rsp + 1440]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx426_7
                        lea              rcx, [rip + .Lx426_4]
                        push             rcx
                        lea              rcx, [rip + .Lx426_3]
                        push             rcx;                                 jmp   rax
.Lx426_3:               mov              qword ptr [rsp + 1480], rsp
                        mov              rax, qword ptr [rsp + 1472]
                        test             rax, rax;                            jne   .Lx426_5
                        mov              qword ptr [rsp + 1472], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx426_2
.Lx426_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx426_2
.Lx426_4:               mov              qword ptr [rsp + 1480], rsp
                        mov              rax, qword ptr [rsp + 1472]
                        test             rax, rax;                            jne   .Lx426_6
                        mov              qword ptr [rsp + 1472], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx426_2
.Lx426_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx426_2
.Lx426_7:               mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        lea              rdx, [rsp + 1440]
                        mov              ecx, 2
                        lea              r8, [rsp + 1472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx426_2:               mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n187_disjunction_af
                                                                              jmp   n187_disjunction_as
n259_call_value_β:      mov              r11, 153
                        mov              rax, qword ptr [rsp + 1472]
                        cmp              rax, 1;                              jne   .Lx426_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1480];         jmp   qword ptr [rsp]
.Lx426_8:               lea              rdi, [rsp + 1472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n187_disjunction_af
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n187_disjunction_as
                                                                              jmp   n187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n184_disjunction_as
n260_lit_string_β:      mov              r11, 154;                            jmp   n184_disjunction_af
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n262_var_α
n261_var_β:             mov              r11, 155;                            jmp   n184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n263_var_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n264_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_value_α:      mov              r11, 158
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1192], rax
                        mov              qword ptr [rsp + 1200], 0
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        lea              rdx, [rsp + 1168]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx435_7
                        lea              rcx, [rip + .Lx435_4]
                        push             rcx
                        lea              rcx, [rip + .Lx435_3]
                        push             rcx;                                 jmp   rax
.Lx435_3:               mov              qword ptr [rsp + 1208], rsp
                        mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx435_5
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx435_2
.Lx435_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx435_2
.Lx435_4:               mov              qword ptr [rsp + 1208], rsp
                        mov              rax, qword ptr [rsp + 1200]
                        test             rax, rax;                            jne   .Lx435_6
                        mov              qword ptr [rsp + 1200], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx435_2
.Lx435_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx435_2
.Lx435_7:               mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        lea              rdx, [rsp + 1168]
                        mov              ecx, 2
                        lea              r8, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx435_2:               mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n184_disjunction_af
                                                                              jmp   n184_disjunction_as
n264_call_value_β:      mov              r11, 158
                        mov              rax, qword ptr [rsp + 1200]
                        cmp              rax, 1;                              jne   .Lx435_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1208];         jmp   qword ptr [rsp]
.Lx435_8:               lea              rdi, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n184_disjunction_af
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n184_disjunction_as
                                                                              jmp   n184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 3
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n181_disjunction_as
n265_lit_string_β:      mov              r11, 159;                            jmp   n181_disjunction_af
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 872], rax;          jmp   n267_var_α
n266_var_β:             mov              r11, 160;                            jmp   n181_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 984], rax;          jmp   n268_var_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             mov              r11, 162
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n269_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n269_call_value_α:      mov              r11, 163
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 920], rax
                        mov              qword ptr [rsp + 928], 0
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        lea              rdx, [rsp + 896]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx444_7
                        lea              rcx, [rip + .Lx444_4]
                        push             rcx
                        lea              rcx, [rip + .Lx444_3]
                        push             rcx;                                 jmp   rax
.Lx444_3:               mov              qword ptr [rsp + 936], rsp
                        mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx444_5
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx444_2
.Lx444_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx444_2
.Lx444_4:               mov              qword ptr [rsp + 936], rsp
                        mov              rax, qword ptr [rsp + 928]
                        test             rax, rax;                            jne   .Lx444_6
                        mov              qword ptr [rsp + 928], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx444_2
.Lx444_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx444_2
.Lx444_7:               mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        lea              rdx, [rsp + 896]
                        mov              ecx, 2
                        lea              r8, [rsp + 928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx444_2:               mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n181_disjunction_af
                                                                              jmp   n181_disjunction_as
n269_call_value_β:      mov              r11, 163
                        mov              rax, qword ptr [rsp + 928]
                        cmp              rax, 1;                              jne   .Lx444_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 936];          jmp   qword ptr [rsp]
.Lx444_8:               lea              rdi, [rsp + 928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n181_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n181_disjunction_as
                                                                              jmp   n181_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 3
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n178_disjunction_as
n270_lit_string_β:      mov              r11, 164;                            jmp   n178_disjunction_af
.Lx445_0:               .quad            .Lx445_0_s
.Lx445_0_s:             .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             mov              r11, 165
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 600], rax;          jmp   n272_var_α
n271_var_β:             mov              r11, 165;                            jmp   n178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 712], rax;          jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             mov              r11, 167
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax;          jmp   n274_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_value_α:      mov              r11, 168
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 648], rax
                        mov              qword ptr [rsp + 656], 0
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        lea              rdx, [rsp + 624]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx453_7
                        lea              rcx, [rip + .Lx453_4]
                        push             rcx
                        lea              rcx, [rip + .Lx453_3]
                        push             rcx;                                 jmp   rax
.Lx453_3:               mov              qword ptr [rsp + 664], rsp
                        mov              rax, qword ptr [rsp + 656]
                        test             rax, rax;                            jne   .Lx453_5
                        mov              qword ptr [rsp + 656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx453_2
.Lx453_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx453_2
.Lx453_4:               mov              qword ptr [rsp + 664], rsp
                        mov              rax, qword ptr [rsp + 656]
                        test             rax, rax;                            jne   .Lx453_6
                        mov              qword ptr [rsp + 656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx453_2
.Lx453_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx453_2
.Lx453_7:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        lea              rdx, [rsp + 624]
                        mov              ecx, 2
                        lea              r8, [rsp + 656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx453_2:               mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n178_disjunction_af
                                                                              jmp   n178_disjunction_as
n274_call_value_β:      mov              r11, 168
                        mov              rax, qword ptr [rsp + 656]
                        cmp              rax, 1;                              jne   .Lx453_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 664];          jmp   qword ptr [rsp]
.Lx453_8:               lea              rdi, [rsp + 656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n178_disjunction_af
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n178_disjunction_as
                                                                              jmp   n178_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_return_α:          mov              r11, 169
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   binop_γ
#-----------------------------------------------------------------------------------------------------------------------
binop_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
binop_β:
                                                                              jmp   binop_ω
#-----------------------------------------------------------------------------------------------------------------------
binop_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 3888;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
binop_ω:
                        add              rsp, 3888;                           jmp   qword ptr [rsp + 8]
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
                        sub              rsp, 2224
                        mov              rdi, rsp
                        add              rdi, 2048
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 2032], 3            # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n456_assign_α
.Lx535_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n456_assign_α:          mov              r11, 171
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n457_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n458_assign_α
.Lx537_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n458_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 2016]
                        mov              rdx, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n459_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_charset_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], -1
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n460_assign_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n461_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n462_assign_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "9"
#-----------------------------------------------------------------------------------------------------------------------
n462_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 6
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n464_iterate_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "+-*!/\\"
#-----------------------------------------------------------------------------------------------------------------------
n464_iterate_α:         mov              r11, 179
                        mov              qword ptr [rsp + 1872], 0
.Lx545_0:               mov              rdi, qword ptr [rsp + 1888]
                        mov              rsi, qword ptr [rsp + 1896]
                        mov              rdx, qword ptr [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n470_call_builtin_icon_α
                                                                              jmp   n465_var_α
n464_iterate_β:         mov              r11, 179
                        inc              qword ptr [rsp + 1872];              jmp   .Lx545_0
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:             mov              r11, 180
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n468_var_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:             mov              r11, 183
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n469_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_proc_staged_α:
                        mov              r11, 184
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx555_200
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx555_201
.Lx555_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx555_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx555_202
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx555_203
.Lx555_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx555_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx555_204
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx555_205
.Lx555_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx555_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx555_206
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx555_207
.Lx555_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx555_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx555_208
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx555_209
.Lx555_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx555_209:             mov              edi, 1
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx555_1
                        lea              rcx, [rip + .Lx555_4]
                        push             rcx
                        lea              rcx, [rip + .Lx555_3]
                        push             rcx;                                 jmp   rax
.Lx555_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx555_2
.Lx555_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx555_2
.Lx555_1:               call             rt_faildescr@PLT
.Lx555_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx555_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
.Lx555_29:              mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n464_iterate_β
                                                                              jmp   n464_iterate_β
n469_call_proc_staged_β:
                        mov              r11, 184;                            jmp   n464_iterate_β
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "unop"
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_icon_α:
                        mov              r11, 185
                        .section         .rodata
.Lrkfn557:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn557]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n471_disjunction_α
                                                                              jmp   n471_disjunction_α
n470_call_builtin_icon_β:
                        mov              r11, 185;                            jmp   n471_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n471_disjunction_α:     mov              r11, 186
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              dword ptr [rsp + 1536], 0;           jmp   n480_lit_string_α
n471_disjunction_as:    mov              r11, 186
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              jne   .Lx559_0
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n472_var_α
.Lx559_0:               cmp              eax, 1;                              jne   .Lx559_1
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n472_var_α
.Lx559_1:               cmp              eax, 2;                              jne   .Lx559_2
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n472_var_α
.Lx559_2:               cmp              eax, 3;                              jne   .Lx559_3
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n472_var_α
.Lx559_3:                                                                     jmp   n472_var_α
n471_disjunction_β:     mov              r11, 186
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              je    n481_iterate_β
                        cmp              eax, 1;                              je    n471_disjunction_af
                        cmp              eax, 2;                              je    n471_disjunction_af
                                                                              jmp   n471_disjunction_af
n471_disjunction_af:    mov              r11, 186
                        add              dword ptr [rsp + 1536], 1
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 1;                              je    n479_lit_string_α
                        cmp              eax, 2;                              je    n478_lit_string_α
                        cmp              eax, 3;                              je    n477_lit_string_α
                                                                              jmp   n482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n474_var_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n475_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n476_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_proc_staged_α:
                        mov              r11, 191
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx569_200
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx569_201
.Lx569_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx569_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx569_202
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx569_203
.Lx569_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx569_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx569_204
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx569_205
.Lx569_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx569_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx569_206
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx569_207
.Lx569_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx569_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx569_208
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx569_209
.Lx569_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx569_209:             mov              edi, 2
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx569_1
                        lea              rcx, [rip + .Lx569_4]
                        push             rcx
                        lea              rcx, [rip + .Lx569_3]
                        push             rcx;                                 jmp   rax
.Lx569_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx569_2
.Lx569_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx569_2
.Lx569_1:               call             rt_faildescr@PLT
.Lx569_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx569_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx569_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n471_disjunction_β
                                                                              jmp   n471_disjunction_β
n476_call_proc_staged_β:
                        mov              r11, 191;                            jmp   n471_disjunction_β
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 2
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n471_disjunction_as
n477_lit_string_β:      mov              r11, 192;                            jmp   n471_disjunction_af
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          ">>"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 2
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n471_disjunction_as
n478_lit_string_β:      mov              r11, 193;                            jmp   n471_disjunction_af
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 2
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n471_disjunction_as
n479_lit_string_β:      mov              r11, 194;                            jmp   n471_disjunction_af
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          "<<"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 9
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n481_iterate_α
n480_lit_string_β:      mov              r11, 195;                            jmp   n471_disjunction_af
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "+-*/%^<=>"
#-----------------------------------------------------------------------------------------------------------------------
n481_iterate_α:         mov              r11, 196
                        mov              qword ptr [rsp + 1568], 0
.Lx575_0:               mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n471_disjunction_af
                                                                              jmp   n471_disjunction_as
n481_iterate_β:         mov              r11, 196
                        inc              qword ptr [rsp + 1568];              jmp   .Lx575_0
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 2
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n483_var_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             mov              r11, 198
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n484_var_α
#-----------------------------------------------------------------------------------------------------------------------
n484_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n485_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_charset_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], -1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n486_lit_string_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 5
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n487_call_proc_staged_α
.Lx582_0:               .quad            .Lx582_0_s
.Lx582_0_s:             .string          "67890"
#-----------------------------------------------------------------------------------------------------------------------
n487_call_proc_staged_α:
                        mov              r11, 202
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_200
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx584_201
.Lx584_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_202
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx584_203
.Lx584_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_204
                        mov              rax, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx584_205
.Lx584_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_206
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx584_207
.Lx584_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx584_208
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx584_209
.Lx584_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx584_209:             mov              edi, 2
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx584_1
                        lea              rcx, [rip + .Lx584_4]
                        push             rcx
                        lea              rcx, [rip + .Lx584_3]
                        push             rcx;                                 jmp   rax
.Lx584_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx584_2
.Lx584_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx584_2
.Lx584_1:               call             rt_faildescr@PLT
.Lx584_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx584_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx584_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n488_disjunction_α
                                                                              jmp   n488_disjunction_α
n487_call_proc_staged_β:
                        mov              r11, 202;                            jmp   n488_disjunction_α
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n488_disjunction_α:     mov              r11, 203
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              dword ptr [rsp + 1088], 0;           jmp   n496_lit_string_α
n488_disjunction_as:    mov              r11, 203
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 0;                              jne   .Lx586_0
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n489_lit_integer_α
.Lx586_0:               cmp              eax, 1;                              jne   .Lx586_1
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n489_lit_integer_α
.Lx586_1:               cmp              eax, 2;                              jne   .Lx586_2
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n489_lit_integer_α
.Lx586_2:                                                                     jmp   n489_lit_integer_α
n488_disjunction_β:     mov              r11, 203
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 0;                              je    n488_disjunction_af
                        cmp              eax, 1;                              je    n488_disjunction_af
                                                                              jmp   n488_disjunction_af
n488_disjunction_af:    mov              r11, 203
                        add              dword ptr [rsp + 1088], 1
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 1;                              je    n495_lit_string_α
                        cmp              eax, 2;                              je    n494_lit_string_α
                                                                              jmp   n497_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n490_lit_real_α
.Lx587_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_real_α:        mov              r11, 205
                        mov              qword ptr [rsp + 1168], 5            # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n491_lit_charset_α
.Lx588_0:               .quad            4597454643604897137
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_charset_α:     mov              r11, 206
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], -1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n492_lit_string_α
.Lx589_0:               .quad            .Lx589_0_s
.Lx589_0_s:             .string          "1x"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 2
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n493_call_proc_staged_α
.Lx590_0:               .quad            .Lx590_0_s
.Lx590_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_proc_staged_α:
                        mov              r11, 208
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx592_200
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx592_201
.Lx592_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx592_202
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx592_203
.Lx592_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx592_204
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx592_205
.Lx592_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx592_206
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx592_207
.Lx592_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx592_208
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx592_209
.Lx592_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx592_209:             mov              edi, 2
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx592_1
                        lea              rcx, [rip + .Lx592_4]
                        push             rcx
                        lea              rcx, [rip + .Lx592_3]
                        push             rcx;                                 jmp   rax
.Lx592_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx592_2
.Lx592_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx592_2
.Lx592_1:               call             rt_faildescr@PLT
.Lx592_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx592_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
.Lx592_29:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n488_disjunction_β
                                                                              jmp   n488_disjunction_β
n493_call_proc_staged_β:
                        mov              r11, 208;                            jmp   n488_disjunction_β
.Lx592_0:               .quad            .Lx592_0_s
.Lx592_0_s:             .string          "binop"
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 2
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n488_disjunction_as
n494_lit_string_β:      mov              r11, 209;                            jmp   n488_disjunction_af
.Lx593_0:               .quad            .Lx593_0_s
.Lx593_0_s:             .string          "**"
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 2
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n488_disjunction_as
n495_lit_string_β:      mov              r11, 210;                            jmp   n488_disjunction_af
.Lx594_0:               .quad            .Lx594_0_s
.Lx594_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 2
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n488_disjunction_as
n496_lit_string_β:      mov              r11, 211;                            jmp   n488_disjunction_af
.Lx595_0:               .quad            .Lx595_0_s
.Lx595_0_s:             .string          "++"
#-----------------------------------------------------------------------------------------------------------------------
n497_call_builtin_icon_α:
                        mov              r11, 212
                        .section         .rodata
.Lrkfn597:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn597]
                        lea              rsi, [rsp + 944]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n498_disjunction_α
                                                                              jmp   n498_disjunction_α
n497_call_builtin_icon_β:
                        mov              r11, 212;                            jmp   n498_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n498_disjunction_α:     mov              r11, 213
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n510_lit_real_α
n498_disjunction_as:    mov              r11, 213
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lx599_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n499_disjunction_α
.Lx599_0:               cmp              eax, 1;                              jne   .Lx599_1
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n499_disjunction_α
.Lx599_1:               cmp              eax, 2;                              jne   .Lx599_2
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax;          jmp   n499_disjunction_α
.Lx599_2:                                                                     jmp   n499_disjunction_α
n498_disjunction_β:     mov              r11, 213
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              je    n498_disjunction_af
                        cmp              eax, 1;                              je    n498_disjunction_af
                                                                              jmp   n498_disjunction_af
n498_disjunction_af:    mov              r11, 213
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 1;                              je    n509_lit_charset_α
                        cmp              eax, 2;                              je    n508_lit_string_α
                                                                              jmp   n511_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n499_disjunction_α:     mov              r11, 214
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n507_lit_real_α
n499_disjunction_as:    mov              r11, 214
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx601_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n500_disjunction_α
.Lx601_0:               cmp              eax, 1;                              jne   .Lx601_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax;          jmp   n500_disjunction_α
.Lx601_1:               cmp              eax, 2;                              jne   .Lx601_2
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax;          jmp   n500_disjunction_α
.Lx601_2:                                                                     jmp   n500_disjunction_α
n499_disjunction_β:     mov              r11, 214
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n499_disjunction_af
                        cmp              eax, 1;                              je    n499_disjunction_af
                                                                              jmp   n499_disjunction_af
n499_disjunction_af:    mov              r11, 214
                        add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n506_lit_charset_α
                        cmp              eax, 2;                              je    n505_lit_string_α
                                                                              jmp   n498_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n500_disjunction_α:     mov              r11, 215
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n504_lit_real_α
n500_disjunction_as:    mov              r11, 215
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx603_0
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax;          jmp   n501_call_proc_staged_α
.Lx603_0:               cmp              eax, 1;                              jne   .Lx603_1
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax;          jmp   n501_call_proc_staged_α
.Lx603_1:               cmp              eax, 2;                              jne   .Lx603_2
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax;          jmp   n501_call_proc_staged_α
.Lx603_2:                                                                     jmp   n501_call_proc_staged_α
n500_disjunction_β:     mov              r11, 215
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              je    n500_disjunction_af
                        cmp              eax, 1;                              je    n500_disjunction_af
                                                                              jmp   n500_disjunction_af
n500_disjunction_af:    mov              r11, 215
                        add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 1;                              je    n503_lit_charset_α
                        cmp              eax, 2;                              je    n502_lit_string_α
                                                                              jmp   n499_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n501_call_proc_staged_α:
                        mov              r11, 216
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 768]
                        lea              rcx, [rsp + 848]
                        call             toby_dcα;                            jmp   .Lx605_2
.Lx605_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx605_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
.Lx605_29:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n500_disjunction_β
                                                                              jmp   n500_disjunction_β
n501_call_proc_staged_β:
                        mov              r11, 216;                            jmp   n500_disjunction_β
.Lx605_0:               .quad            .Lx605_0_s
.Lx605_0_s:             .string          "toby"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 3
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n500_disjunction_as
n502_lit_string_β:      mov              r11, 217;                            jmp   n500_disjunction_af
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "3.2"
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_charset_α:     mov              r11, 218
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], -1
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n500_disjunction_as
n503_lit_charset_β:     mov              r11, 218;                            jmp   n500_disjunction_af
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "03"
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_real_α:        mov              r11, 219
                        mov              qword ptr [rsp + 880], 5             # result
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n500_disjunction_as
n504_lit_real_β:        mov              r11, 219;                            jmp   n500_disjunction_af
.Lx608_0:               .quad            4614162998222441677
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx609_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n499_disjunction_as
n505_lit_string_β:      mov              r11, 220;                            jmp   n499_disjunction_af
.Lx609_0:               .quad            .Lx609_0_s
.Lx609_0_s:             .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_charset_α:     mov              r11, 221
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], -1
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n499_disjunction_as
n506_lit_charset_β:     mov              r11, 221;                            jmp   n499_disjunction_af
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "17"
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_real_α:        mov              r11, 222
                        mov              qword ptr [rsp + 800], 5             # result
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n499_disjunction_as
n507_lit_real_β:        mov              r11, 222;                            jmp   n499_disjunction_af
.Lx611_0:               .quad            4625619029774565376
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 1
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n498_disjunction_as
n508_lit_string_β:      mov              r11, 223;                            jmp   n498_disjunction_af
.Lx612_0:               .quad            .Lx612_0_s
.Lx612_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_charset_α:     mov              r11, 224
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n498_disjunction_as
n509_lit_charset_β:     mov              r11, 224;                            jmp   n498_disjunction_af
.Lx613_0:               .quad            .Lx613_0_s
.Lx613_0_s:             .string          "02"
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_real_α:        mov              r11, 225
                        mov              qword ptr [rsp + 720], 5             # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n498_disjunction_as
n510_lit_real_β:        mov              r11, 225;                            jmp   n498_disjunction_af
.Lx614_0:               .quad            4612361558371493478
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_icon_α:
                        mov              r11, 226
                        .section         .rodata
.Lrkfn616:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn616]
                        lea              rsi, [rsp + 592]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n512_lit_string_α
                                                                              jmp   n512_lit_string_α
n511_call_builtin_icon_β:
                        mov              r11, 226;                            jmp   n512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 2
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n513_disjunction_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n513_disjunction_α:     mov              r11, 228
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n516_disjunction_α
n513_disjunction_as:    mov              r11, 228
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx619_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n514_call_builtin_icon_α
.Lx619_0:               cmp              eax, 1;                              jne   .Lx619_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n514_call_builtin_icon_α
.Lx619_1:                                                                     jmp   n514_call_builtin_icon_α
n513_disjunction_β:     mov              r11, 228
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              je    n516_disjunction_β
                                                                              jmp   n513_disjunction_af
n513_disjunction_af:    mov              r11, 228
                        add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 1;                              je    n515_lit_string_α
                                                                              jmp   n522_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_icon_α:
                        mov              r11, 229
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn621:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n513_disjunction_β
                                                                              jmp   n513_disjunction_β
n514_call_builtin_icon_β:
                        mov              r11, 229;                            jmp   n513_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n513_disjunction_as
n515_lit_string_β:      mov              r11, 230;                            jmp   n513_disjunction_af
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n516_disjunction_α:     mov              r11, 231
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n521_lit_integer_α
n516_disjunction_as:    mov              r11, 231
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx624_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n517_unop_α
.Lx624_0:               cmp              eax, 1;                              jne   .Lx624_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax;          jmp   n517_unop_α
.Lx624_1:               cmp              eax, 2;                              jne   .Lx624_2
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 488], rax;          jmp   n517_unop_α
.Lx624_2:                                                                     jmp   n517_unop_α
n516_disjunction_β:     mov              r11, 231
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    n516_disjunction_af
                        cmp              eax, 1;                              je    n516_disjunction_af
                                                                              jmp   n516_disjunction_af
n516_disjunction_af:    mov              r11, 231
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n520_lit_real_α
                        cmp              eax, 2;                              je    n519_lit_string_α
                                                                              jmp   n513_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n517_unop_α:            mov              r11, 232
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n518_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n518_unop_α:            mov              r11, 233
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n513_disjunction_as
n518_unop_β:            mov              r11, 233;                            jmp   n513_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 7
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n516_disjunction_as
n519_lit_string_β:      mov              r11, 234;                            jmp   n516_disjunction_af
.Lx627_0:               .quad            .Lx627_0_s
.Lx627_0_s:             .string          "arizona"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_real_α:        mov              r11, 235
                        mov              qword ptr [rsp + 528], 5             # result
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n516_disjunction_as
n520_lit_real_β:        mov              r11, 235;                            jmp   n516_disjunction_af
.Lx628_0:               .quad            4614256650576692846
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:     mov              r11, 236
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n516_disjunction_as
n521_lit_integer_β:     mov              r11, 236;                            jmp   n516_disjunction_af
.Lx629_0:               .quad            1257787
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 2
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n523_disjunction_α
.Lx630_0:               .quad            .Lx630_0_s
.Lx630_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n523_disjunction_α:     mov              r11, 238
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n526_disjunction_α
n523_disjunction_as:    mov              r11, 238
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx632_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax;           jmp   n524_call_builtin_icon_α
.Lx632_0:               cmp              eax, 1;                              jne   .Lx632_1
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 88], rax;           jmp   n524_call_builtin_icon_α
.Lx632_1:                                                                     jmp   n524_call_builtin_icon_α
n523_disjunction_β:     mov              r11, 238
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n526_disjunction_β
                                                                              jmp   n523_disjunction_af
n523_disjunction_af:    mov              r11, 238
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n525_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_icon_α:
                        mov              r11, 239
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn634:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn634]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n523_disjunction_β
                                                                              jmp   n523_disjunction_β
n524_call_builtin_icon_β:
                        mov              r11, 239;                            jmp   n523_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n523_disjunction_as
n525_lit_string_β:      mov              r11, 240;                            jmp   n523_disjunction_af
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n526_disjunction_α:     mov              r11, 241
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n534_lit_integer_α
n526_disjunction_as:    mov              r11, 241
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx637_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n527_scan_enter_α
.Lx637_0:               cmp              eax, 1;                              jne   .Lx637_1
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax;          jmp   n527_scan_enter_α
.Lx637_1:               cmp              eax, 2;                              jne   .Lx637_2
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax;          jmp   n527_scan_enter_α
.Lx637_2:                                                                     jmp   n527_scan_enter_α
n526_disjunction_β:     mov              r11, 241
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n526_disjunction_af
                        cmp              eax, 1;                              je    n526_disjunction_af
                                                                              jmp   n526_disjunction_af
n526_disjunction_af:    mov              r11, 241
                        add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n533_lit_real_α
                        cmp              eax, 2;                              je    n532_lit_charset_α
                                                                              jmp   n523_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n527_scan_enter_α:      mov              r11, 242
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n528_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_integer_α:     mov              r11, 243
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n529_scan_move_α
.Lx640_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n529_scan_move_α:       mov              r11, 244
                        mov              rax, 5
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n531_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n531_scan_α
                        mov              qword ptr [rsp + 208], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n530_scan_α
n529_scan_move_β:       mov              r11, 244
                        mov              r14, qword ptr [rsp + 208];          jmp   n531_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n530_scan_α:            mov              r11, 245
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 128]
                        mov              r14, qword ptr [rsp + 136]
                        mov              r15, qword ptr [rsp + 144];          jmp   n523_disjunction_as
n530_scan_β:            mov              r11, 245;                            jmp   n523_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n531_scan_α:            mov              r11, 246
                        lea              rdi, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 128]
                        mov              r14, qword ptr [rsp + 136]
                        mov              r15, qword ptr [rsp + 144];          jmp   n526_disjunction_β
n531_scan_β:            mov              r11, 246;                            jmp   n526_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_charset_α:     mov              r11, 247
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], -1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n526_disjunction_as
n532_lit_charset_β:     mov              r11, 247;                            jmp   n526_disjunction_af
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "cnostu"
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_real_α:        mov              r11, 248
                        mov              qword ptr [rsp + 288], 5             # result
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n526_disjunction_as
n533_lit_real_β:        mov              r11, 248;                            jmp   n526_disjunction_af
.Lx648_0:               .quad            4649182892167851409
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_integer_α:     mov              r11, 249
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n526_disjunction_as
n534_lit_integer_β:     mov              r11, 249;                            jmp   n526_disjunction_af
.Lx649_0:               .quad            123456
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
.Lstartup_pname0:       .string          "toby"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__toby
                        .quad            toby_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            832
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "unop"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__unop
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            1296
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "binop"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__binop
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            3760
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
