                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
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
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              rdi, rsp
                        add              rdi, 1120
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              dword ptr [rsp + 976], 0;            jmp   n38_var_ref_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              jne   .Lx44_0
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1_assign_α
.Lx44_0:                cmp              eax, 1;                              jne   .Lx44_1
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 968], rax;          jmp   n1_assign_α
.Lx44_1:                                                                      jmp   n1_assign_α
n0_disjunction_β:       mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      add              dword ptr [rsp + 976], 1
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 1;                              je    n37_lit_integer_α
                                                                              jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n2_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: .section         .rodata
.Lrkfn47:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rsp + 944]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n4_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_assign_α
n2_call_builtin_icon_β:                                                       jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 840], rax;          jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n6_var_α
.Lx51_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 904], rax;          jmp   n7_to_α
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:                mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], 3
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 864], rax
.Lx55_0:                mov              rax, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 904]
                        cmp              rax, rcx;                            jg    n9_var_α
                        mov              qword ptr [rsp + 848], 3
                        mov              qword ptr [rsp + 856], rax;          jmp   n8_call_builtin_icon_α
n7_to_β:                inc              qword ptr [rsp + 864];               jmp   .Lx55_0
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn57:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n7_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_to_β
n8_call_builtin_icon_β:                                                       jmp   n7_to_β
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 408], rax;          jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n11_var_α
.Lx60_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 488], rax;          jmp   n12_to_α
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              rdi, qword ptr [rsp + 464]
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
.Lx64_0:                mov              rax, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 488]
                        cmp              rax, rcx;                            jg    n27_var_α
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   n13_assign_α
n12_to_β:               inc              qword ptr [rsp + 448];               jmp   .Lx64_0
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn67:               .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n12_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_bound_α
n14_call_builtin_icon_β:
                                                                              jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:            mov              qword ptr [rsp + 496], rsp;          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 616], rax;          jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 712], rax;          jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 728], rax;          jmp   n19_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n19_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 5;                              je    .Lx77_1
                        cmp              eax, 3;                              jne   .Lx77_0
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 3;                              jne   .Lx77_0
.Lx77_1:                mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 696], rax;          jmp   n20_coerce_numeric_α
.Lx77_0:                lea              rdi, [rsp + 1152]
                        lea              rsi, [rsp + 1152]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 5;                              je    .Lx79_1
                        cmp              eax, 3;                              jne   .Lx79_0
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 3;                              jne   .Lx79_0
.Lx79_1:                mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 680], rax;          jmp   n21_binop_α
.Lx79_0:                lea              rdi, [rsp + 1152]
                        lea              rsi, [rsp + 1152]
                        lea              rdx, [rsp + 672]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:            mov              eax, dword ptr [rsp + 688]
                        mov              ecx, dword ptr [rsp + 672]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx80_2
                        mov              rax, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 680]
                        add              rax, rdx
                        mov              qword ptr [rsp + 656], 3
                        mov              qword ptr [rsp + 664], rax;          jmp   .Lx80_7
.Lx80_2:                and              edx, 1;                              jz    .Lx80_0
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdi, qword ptr [rsp + 680]
                        cmp              eax, 5;                              je    .Lx80_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx80_4
.Lx80_3:                movq             xmm0, rsi
.Lx80_4:                cmp              ecx, 5;                              je    .Lx80_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx80_6
.Lx80_5:                movq             xmm1, rdi
.Lx80_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 656], 5
                        mov              qword ptr [rsp + 664], rax
.Lx80_7:                                                                      jmp   n22_var_α
.Lx80_0:                mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n26_unmark_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 744], rax;          jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 760], rax;          jmp   n24_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n24_to_by_α:            mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], 3
                        mov              qword ptr [rsp + 664], rax
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], 3
                        mov              qword ptr [rsp + 744], rax
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 640], rax
.Lx86_0:                mov              rax, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 760]
                        cmp              rdx, 0;                              jl    .Lx86_1
                        cmp              rax, rcx;                            jg    n26_unmark_α
                                                                              jmp   .Lx86_2
.Lx86_1:                cmp              rax, rcx;                            jl    n26_unmark_α
.Lx86_2:                mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax;          jmp   n25_call_builtin_icon_α
n24_to_by_β:            mov              rdx, qword ptr [rsp + 760]
                        mov              rax, qword ptr [rsp + 640]
                        add              rax, rdx
                        mov              qword ptr [rsp + 640], rax;          jmp   .Lx86_0
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn88:               .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n24_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_to_by_β
n25_call_builtin_icon_β:
                                                                              jmp   n24_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n26_unmark_α:           mov              rsp, qword ptr [rsp + 496];          jmp   n12_to_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 312], rax;          jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n29_call_builtin_icon_α
.Lx93_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn95:               .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n30_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_lit_string_α
n29_call_builtin_icon_β:
                                                                              jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 10
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n31_var_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "There are "
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 184], rax;          jmp   n32_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_α:             mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 21
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n34_var_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          " primes in the first "
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 216], rax;          jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 10
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n36_call_builtin_icon_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          " integers."
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 200]
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
.Lrkfn105:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rsp + 48]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n36_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n0_disjunction_as
n37_lit_integer_β:                                                            jmp   n0_disjunction_af
.Lx106_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n39_lit_integer_α
n38_var_ref_β:                                                                jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n40_subscript_α
.Lx109_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn113:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n0_disjunction_as
n42_call_builtin_icon_β:
                                                                              jmp   n0_disjunction_af
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
