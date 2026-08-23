                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__meander:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              rdi, rsp
                        add              rdi, 816
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
meander_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n1_unop_α:              mov              r11, 2
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n2_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rax;          jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n6_coerce_numeric_α
.Lx53_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_coerce_numeric_α:    mov              r11, 7
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx55_1
                        cmp              al, 3;                               jne   .Lx55_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 3;                               jne   .Lx55_0
.Lx55_1:                mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 728], rax;          jmp   n7_binop_α
.Lx55_0:                lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 720]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:             mov              r11, 8
                        mov              eax, dword ptr [rsp + 720]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx56_2
                        mov              rax, qword ptr [rsp + 728]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax;          jmp   .Lx56_7
.Lx56_2:                and              edx, 1;                              jz    .Lx56_0
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx56_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx56_4
.Lx56_3:                movq             xmm0, rsi
.Lx56_4:                cmp              cl, 5;                               je    .Lx56_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx56_6
.Lx56_5:                movq             xmm1, rdi
.Lx56_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 704], 5
                        mov              qword ptr [rsp + 712], rax
.Lx56_7:                                                                      jmp   n8_assign_α
.Lx56_0:                mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n9_var_ref_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n11_subscript_α
.Lx60_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_subscript_α:        mov              r11, 12
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_var_ref_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n12_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_deref_α:            mov              r11, 13
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_var_ref_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 696], rax;          jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn66:               .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n16_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_assign_α
n14_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 104], rax;          jmp   n18_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n18_subscript_α:        mov              r11, 19
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_var_α
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n19_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_deref_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n20_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:      mov              r11, 22
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n29_var_α
n21_disjunction_as:     mov              r11, 22
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx76_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax;          jmp   n16_var_ref_α
.Lx76_0:                cmp              eax, 1;                              jne   .Lx76_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 152], rax;          jmp   n16_var_ref_α
.Lx76_1:                                                                      jmp   n16_var_ref_α
n21_disjunction_β:      mov              r11, 22
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n16_var_ref_α
                                                                              jmp   n16_var_ref_α
n21_disjunction_af:     mov              r11, 22
                        add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n22_var_α
                                                                              jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 536], rax;          jmp   n23_var_α
n22_var_β:              mov              r11, 23;                             jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 552], rax;          jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 504], rax;          jmp   n27_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n28_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_conjunction_α:      mov              r11, 29
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax;          jmp   n21_disjunction_as
n28_conjunction_β:      mov              r11, 29;                             jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 360], rax;          jmp   n30_var_α
n29_var_β:              mov              r11, 30;                             jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 408], rax;          jmp   n31_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 5;                               je    .Lx92_1
                        cmp              al, 3;                               jne   .Lx92_0
                        mov              eax, dword ptr [rsp + 864]
                        cmp              al, 3;                               jne   .Lx92_0
.Lx92_1:                mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 392], rax;          jmp   n32_unop_α
.Lx92_0:                lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_α:             mov              r11, 33
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n34_subscript_α
.Lx94_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:        mov              r11, 35
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              r8, qword ptr [rsp + 416]
                        mov              r9, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_disjunction_af
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 440], rax;          jmp   n36_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            mov              r11, 37
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 456], rax;          jmp   n38_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_gen_α: mov              r11, 39
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 304], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx101_60:              .section         .rodata
.Lbynamegenfn39:        .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn39]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        lea              rcx, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n21_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_var_α
n38_call_builtin_gen_β: mov              r11, 39;                             jmp   .Lx101_60
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 232], rax;          jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n41_coerce_numeric_α
.Lx104_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   mov              r11, 42
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 5;                               je    .Lx106_1
                        cmp              al, 3;                               jne   .Lx106_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lx106_0
.Lx106_1:               mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 216], rax;          jmp   n42_binop_α
.Lx106_0:               lea              rdi, [rsp + 848]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            mov              r11, 43
                        mov              eax, dword ptr [rsp + 208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx107_2
                        mov              rax, qword ptr [rsp + 216]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lx107_7
.Lx107_2:               and              edx, 1;                              jz    .Lx107_0
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx107_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx107_4
.Lx107_3:               movq             xmm0, rsi
.Lx107_4:               cmp              cl, 5;                               je    .Lx107_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx107_6
.Lx107_5:               movq             xmm1, rdi
.Lx107_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lx107_7:                                                                     jmp   n43_assign_α
.Lx107_0:               mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n16_var_ref_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n21_disjunction_as
n43_assign_β:           mov              r11, 44;                             jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 56], rax;           jmp   n45_return_α
#-----------------------------------------------------------------------------------------------------------------------
n45_return_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   meander_γ
#-----------------------------------------------------------------------------------------------------------------------
meander_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
meander_β:
                                                                              jmp   meander_ω
#-----------------------------------------------------------------------------------------------------------------------
meander_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1032]
                        add              rsp, 1056;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
meander_ω:
                        mov              rcx, qword ptr [rsp + 1040]
                        add              rsp, 1056;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
meander_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx112_2]
                        lea              rdx, [rip + .Lx112_3];               jmp   FN__meander
.Lx112_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx112_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rcx
                        mov              qword ptr [rsp + 768], rdx
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
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              r11, 47
                        .section         .rodata
.Lrkfn138:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_assign_α
n113_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 48
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             mov              r11, 49
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   n116_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n116_scan_enter_α:      mov              r11, 50
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
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
                        mov              r14, 0;                              jmp   n117_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:     mov              r11, 51
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n121_lit_charset_α
n117_disjunction_as:    mov              r11, 51
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx145_0
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax;          jmp   n118_scan_α
.Lx145_0:               cmp              eax, 1;                              jne   .Lx145_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 136], rax;          jmp   n118_scan_α
.Lx145_1:                                                                     jmp   n118_scan_α
n117_disjunction_β:     mov              r11, 51
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              je    n136_scan_α
                                                                              jmp   n136_scan_α
n117_disjunction_af:    mov              r11, 51
                        add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 1;                              je    n119_lit_string_α
                                                                              jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n118_scan_α:            mov              r11, 52
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n113_call_builtin_icon_α
n118_scan_β:            mov              r11, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n117_disjunction_β
                                                                              jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 23
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n120_call_builtin_icon_α
n119_lit_string_β:      mov              r11, 53;                             jmp   n136_scan_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "*** erroneous input ***"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn150:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n136_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_disjunction_as
n120_call_builtin_icon_β:
                        mov              r11, 54;                             jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_charset_α:     mov              r11, 55
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], -1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n122_scan_upto_α
n121_lit_charset_β:     mov              r11, 55;                             jmp   n117_disjunction_af
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_upto_α:       mov              r11, 56
                        mov              qword ptr [rsp + 528], r14
.Lx153_0:               mov              rax, qword ptr [rsp + 528]
                        cmp              rax, r15;                            jge   n117_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx153_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx153_1
                        mov              qword ptr [rsp + 512], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 520], rax;          jmp   n123_scan_tab_α
.Lx153_1:               inc              qword ptr [rsp + 528];               jmp   .Lx153_0
n122_scan_upto_β:       mov              r11, 56
                        inc              qword ptr [rsp + 528];               jmp   .Lx153_0
.Lx153_2:               .quad            .Lx153_2_s
.Lx153_2_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n123_scan_tab_α:        mov              r11, 57
                        mov              rax, qword ptr [rsp + 520]
                        cmp              rax, 1;                              jge   .Lx155_0
                        add              rax, r15
                        add              rax, 1
.Lx155_0:               cmp              rax, 1;                              jl    n122_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n122_scan_upto_β
                        mov              qword ptr [rsp + 496], r14
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
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n124_assign_α
n123_scan_tab_β:        mov              r11, 57
                        mov              r14, qword ptr [rsp + 496];          jmp   n122_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n124_assign_α:          mov              r11, 58
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n126_scan_move_α
.Lx157_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_scan_move_α:       mov              r11, 60
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n117_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n117_disjunction_af
                        mov              qword ptr [rsp + 448], r14
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n127_lit_integer_α
n126_scan_move_β:       mov              r11, 60
                        mov              r14, qword ptr [rsp + 448];          jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              r11, 61
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n128_scan_tab_α
.Lx160_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n128_scan_tab_α:        mov              r11, 62
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx162_0
                        add              rax, r15
                        add              rax, 1
.Lx162_0:               cmp              rax, 1;                              jl    n117_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n117_disjunction_af
                        mov              qword ptr [rsp + 400], r14
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
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n129_call_builtin_icon_α
n128_scan_tab_β:        mov              r11, 62
                        mov              r14, qword ptr [rsp + 400];          jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn164:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n117_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_assign_α
n129_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              r11, 64
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n131_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n131_conjunction_α:     mov              r11, 65
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n132_var_α
n131_conjunction_β:     mov              r11, 65;                             jmp   n117_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 66
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 280], rax;          jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 67
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 296], rax;          jmp   n134_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              r11, 68
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 288]
                        call             meander_dcα;                         jmp   .Lx172_2
.Lx172_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx172_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx172_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n136_scan_α
                                                                              jmp   n135_call_builtin_icon_α
n134_call_proc_staged_β:
                        mov              r11, 68;                             jmp   n136_scan_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "meander"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn174:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n136_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n117_disjunction_as
n135_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n136_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n136_scan_α:            mov              r11, 70
                        lea              rdi, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 64]
                        mov              r14, qword ptr [rsp + 72]
                        mov              r15, qword ptr [rsp + 80];           jmp   n113_call_builtin_icon_α
n136_scan_β:            mov              r11, 70;                             jmp   n113_call_builtin_icon_α
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
.Lstartup_pname0:       .string          "meander"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__meander
                        .quad            meander_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            896
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
