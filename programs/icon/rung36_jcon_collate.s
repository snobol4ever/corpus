                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__collate:
                        sub              rsp, 3344
                        mov              qword ptr [rsp + 3320], rcx
                        mov              qword ptr [rsp + 3328], rdx
                        mov              rdi, rsp
                        add              rdi, 3136
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
collate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              dword ptr [rsp + 2288], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 2288]
                        cmp              eax, 0;                              jne   .Lx157_0
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n48_disjunction_α
.Lx157_0:                                                                     jmp   n48_disjunction_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 2288];         jmp   n48_disjunction_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 2288], 1
                        mov              eax, dword ptr [rsp + 2288];         jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # collate__INITFLAG__0
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 3072]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        cmp              eax, 0;                              jne   n0_disjunction_af
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n4_assign_var_α
.Lx161_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 3120]
                        mov              rcx, qword ptr [rsp + 3128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 4
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n6_assign_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "abxy"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
                        mov              qword ptr [r9 + 0], rax              # collate__STATIC__llabels
                        mov              qword ptr [r9 + 8], rdx;             jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 4
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n8_assign_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "cduv"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        mov              qword ptr [r9 + 16], rax             # collate__STATIC__rlabels
                        mov              qword ptr [r9 + 24], rdx;            jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [r9 + 0]              # collate__STATIC__llabels
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 3008], rax          # result
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [r9 + 16]             # collate__STATIC__rlabels
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 3024], rax          # result
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              r11, 12
                        mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              rdx, qword ptr [rsp + 3024]
                        mov              rcx, qword ptr [rsp + 3032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 2992]
                        mov              rdx, qword ptr [rsp + 3000]
                        mov              qword ptr [r9 + 48], rax             # collate__STATIC__blabels
                        mov              qword ptr [r9 + 56], rdx;            jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 8
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n14_assign_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "acbdxuyv"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 2976]
                        mov              rdx, qword ptr [rsp + 2984]
                        mov              qword ptr [r9 + 32], rax             # collate__STATIC__clabels
                        mov              qword ptr [r9 + 40], rdx;            jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 2960], 3            # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n16_assign_α
.Lx173_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        mov              qword ptr [r9 + 64], rax             # collate__STATIC__half
                        mov              qword ptr [r9 + 72], rdx;            jmp   n17_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_icon_α:     mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_keyword_icon_α
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n18_keyword_icon_α
n17_keyword_icon_β:     mov              r11, 18;                             jmp   n25_keyword_icon_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_icon_α:     mov              r11, 19
                        mov              rdi, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_keyword_icon_α
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n19_unop_α
n18_keyword_icon_β:     mov              r11, 19;                             jmp   n25_keyword_icon_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_α:             mov              r11, 20
                        mov              rdi, qword ptr [rsp + 2912]
                        mov              rsi, qword ptr [rsp + 2920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 2944], 3            # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n21_coerce_numeric_α
.Lx178_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              r11, 22
                        mov              eax, dword ptr [rsp + 2896]
                        cmp              al, 5;                               je    .Lx180_1
                        cmp              al, 3;                               jne   .Lx180_0
                        mov              eax, dword ptr [rsp + 2944]
                        cmp              al, 3;                               jne   .Lx180_0
.Lx180_1:               mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n22_binop_α
.Lx180_0:               lea              rdi, [rsp + 2896]
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2880]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 23
                        mov              rdi, qword ptr [rsp + 2880]
                        mov              rsi, qword ptr [rsp + 2888]
                        mov              rdx, qword ptr [rsp + 2944]
                        mov              rcx, qword ptr [rsp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n25_keyword_icon_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn183:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n25_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_assign_α
n23_call_builtin_icon_β:
                        mov              r11, 24;                             jmp   n25_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 2768]
                        mov              rdx, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n25_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_keyword_icon_α:     mov              r11, 26
                        mov              rdi, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_α
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n26_keyword_icon_α
n25_keyword_icon_β:     mov              r11, 26;                             jmp   n33_var_α
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n26_keyword_icon_α:     mov              r11, 27
                        mov              rdi, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_α
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n27_unop_α
n26_keyword_icon_β:     mov              r11, 27;                             jmp   n33_var_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n27_unop_α:             mov              r11, 28
                        mov              rdi, qword ptr [rsp + 2720]
                        mov              rsi, qword ptr [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n29_coerce_numeric_α
.Lx188_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:   mov              r11, 30
                        mov              eax, dword ptr [rsp + 2704]
                        cmp              al, 5;                               je    .Lx190_1
                        cmp              al, 3;                               jne   .Lx190_0
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              al, 3;                               jne   .Lx190_0
.Lx190_1:               mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n30_binop_α
.Lx190_0:               lea              rdi, [rsp + 2704]
                        lea              rsi, [rsp + 2752]
                        lea              rdx, [rsp + 2688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:            mov              r11, 31
                        mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              rdx, qword ptr [rsp + 2752]
                        mov              rcx, qword ptr [rsp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n33_var_α
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn193:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n33_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_assign_α
n31_call_builtin_icon_β:
                        mov              r11, 32;                             jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: mov              r11, 36
                        lea              rsi, [rsp + 2544]
                        lea              rdx, [rsp + 2560]
                        call             collate_dcα;                         jmp   .Lx200_2
.Lx200_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx200_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
.Lx200_29:              mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n37_var_α
                                                                              jmp   n36_assign_α
n35_call_proc_staged_β: mov              r11, 36;                             jmp   n37_var_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [r9 + 32], rax             # collate__STATIC__clabels
                        mov              qword ptr [r9 + 40], rdx;            jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [r9 + 0], rax              # collate__STATIC__llabels
                        mov              qword ptr [r9 + 8], rdx;             jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [r9 + 16], rax             # collate__STATIC__rlabels
                        mov              qword ptr [r9 + 24], rdx;            jmp   n41_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_keyword_icon_α:     mov              r11, 42
                        mov              rdi, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_var_α
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n42_call_builtin_icon_α
n41_keyword_icon_β:     mov              r11, 42;                             jmp   n44_var_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax
                        .section         .rodata
.Lrkfn210:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 2384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n44_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_assign_α
n42_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 2368]
                        mov              rdx, qword ptr [rsp + 2376]
                        mov              qword ptr [r9 + 48], rax             # collate__STATIC__blabels
                        mov              qword ptr [r9 + 56], rdx;            jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [r9 + 0]              # collate__STATIC__llabels
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 2352], rax          # result
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n45_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_unop_α:             mov              r11, 46
                        mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [r9 + 64], rax             # collate__STATIC__half
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n47_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_conjunction_α:      mov              r11, 48
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n0_disjunction_as
n47_conjunction_β:      mov              r11, 48;                             jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:      mov              r11, 49
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              dword ptr [rsp + 1456], 0;           jmp   n76_var_α
n48_disjunction_as:     mov              r11, 49
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              jne   .Lx217_0
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n100_var_α
.Lx217_0:               cmp              eax, 1;                              jne   .Lx217_1
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n100_var_α
.Lx217_1:                                                                     jmp   n100_var_α
n48_disjunction_β:      mov              r11, 49
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              je    n100_var_α
                                                                              jmp   n49_disjunction_β
n48_disjunction_af:     mov              r11, 49
                        add              dword ptr [rsp + 1456], 1
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 1;                              je    n49_disjunction_α
                                                                              jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:      mov              r11, 50
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              dword ptr [rsp + 1856], 0;           jmp   n52_var_α
n49_disjunction_as:     mov              r11, 50
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              eax, 0;                              jne   .Lx219_0
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n48_disjunction_as
.Lx219_0:               cmp              eax, 1;                              jne   .Lx219_1
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n48_disjunction_as
.Lx219_1:                                                                     jmp   n48_disjunction_as
n49_disjunction_β:      mov              r11, 50
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              eax, 0;                              je    n100_var_α
                                                                              jmp   n100_var_α
n49_disjunction_af:     mov              r11, 50
                        add              dword ptr [rsp + 1856], 1
                        mov              eax, dword ptr [rsp + 1856]
                        cmp              eax, 1;                              je    n50_lit_string_α
                                                                              jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 0
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n51_assign_α
n50_lit_string_β:       mov              r11, 51;                             jmp   n100_var_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n49_disjunction_as
n51_assign_β:           mov              r11, 52;                             jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 53
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n53_unop_α
n52_var_β:              mov              r11, 53;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:             mov              r11, 54
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n55_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n55_unop_α:             mov              r11, 56
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
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n56_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_test_α:       mov              r11, 57
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              al, 112;                             je    .Lx228_0
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              al, 112;                             je    .Lx228_0
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              al, 3;                               jne   .Lx228_2
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              al, 3;                               jne   .Lx228_2
.Lx228_1:               mov              rax, qword ptr [rsp + 2184]
                        mov              rcx, qword ptr [rsp + 2216]
                        cmp              rax, rcx;                            jle   n49_disjunction_af
                        mov              rcx, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rcx
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rcx;         jmp   n57_var_α
.Lx228_0:               mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              r8d, 7
                        lea              r9, [rsp + 2160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx228_1
                        cmp              eax, 1;                              je    n49_disjunction_af
                                                                              jmp   n57_var_α
.Lx228_2:               mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n49_disjunction_af
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n59_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_unop_α:             mov              r11, 60
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
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n61_coerce_numeric_α
.Lx234_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:   mov              r11, 62
                        mov              eax, dword ptr [rsp + 2096]
                        cmp              al, 5;                               je    .Lx236_1
                        cmp              al, 3;                               jne   .Lx236_0
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              al, 3;                               jne   .Lx236_0
.Lx236_1:               mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n62_binop_α
.Lx236_0:               lea              rdi, [rsp + 2096]
                        lea              rsi, [rsp + 2128]
                        lea              rdx, [rsp + 2080]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            mov              r11, 63
                        mov              eax, dword ptr [rsp + 2080]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx237_2
                        mov              rax, qword ptr [rsp + 2088]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 2064], 3
                        mov              qword ptr [rsp + 2072], rax;         jmp   .Lx237_7
.Lx237_2:               and              edx, 1;                              jz    .Lx237_0
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx237_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx237_4
.Lx237_3:               movq             xmm0, rsi
.Lx237_4:               cmp              cl, 5;                               je    .Lx237_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx237_6
.Lx237_5:               movq             xmm1, rdi
.Lx237_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2064], 5
                        mov              qword ptr [rsp + 2072], rax
.Lx237_7:                                                                     jmp   n63_lit_integer_α
.Lx237_0:               mov              rdi, qword ptr [rsp + 2080]
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n66_var_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n64_subscript_α
.Lx238_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2064]
                        mov              rcx, qword ptr [rsp + 2072]
                        mov              r8, qword ptr [rsp + 2144]
                        mov              r9, qword ptr [rsp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n66_var_α
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 66
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 67
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      mov              r11, 68
                        mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n68_var_α
.Lx243_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n69_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:             mov              r11, 70
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
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 71
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n71_coerce_numeric_α
.Lx247_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              r11, 72
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 5;                               je    .Lx249_1
                        cmp              al, 3;                               jne   .Lx249_0
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              al, 3;                               jne   .Lx249_0
.Lx249_1:               mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n72_binop_α
.Lx249_0:               lea              rdi, [rsp + 1984]
                        lea              rsi, [rsp + 2016]
                        lea              rdx, [rsp + 1968]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            mov              r11, 73
                        mov              eax, dword ptr [rsp + 1968]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx250_2
                        mov              rax, qword ptr [rsp + 1976]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1952], 3
                        mov              qword ptr [rsp + 1960], rax;         jmp   .Lx250_7
.Lx250_2:               and              edx, 1;                              jz    .Lx250_0
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx250_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx250_4
.Lx250_3:               movq             xmm0, rsi
.Lx250_4:               cmp              cl, 5;                               je    .Lx250_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx250_6
.Lx250_5:               movq             xmm1, rdi
.Lx250_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1952], 5
                        mov              qword ptr [rsp + 1960], rax
.Lx250_7:                                                                     jmp   n73_subscript_α
.Lx250_0:               mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n100_var_α
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:        mov              r11, 74
                        mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 1936]
                        mov              rcx, qword ptr [rsp + 1944]
                        mov              r8, qword ptr [rsp + 1952]
                        mov              r9, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n100_var_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 75
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n75_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_conjunction_α:      mov              r11, 76
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n49_disjunction_as
n75_conjunction_β:      mov              r11, 76;                             jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n77_unop_α
n76_var_β:              mov              r11, 77;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_unop_α:             mov              r11, 78
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
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              r11, 79
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n79_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_unop_α:             mov              r11, 80
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n80_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_test_α:       mov              r11, 81
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              al, 112;                             je    .Lx260_0
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 112;                             je    .Lx260_0
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              al, 3;                               jne   .Lx260_2
                        mov              eax, dword ptr [rsp + 1808]
                        cmp              al, 3;                               jne   .Lx260_2
.Lx260_1:               mov              rax, qword ptr [rsp + 1784]
                        mov              rcx, qword ptr [rsp + 1816]
                        cmp              rax, rcx;                            jle   n48_disjunction_af
                        mov              rcx, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rcx
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rcx;         jmp   n81_var_α
.Lx260_0:               mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 7
                        lea              r9, [rsp + 1760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx260_1
                        cmp              eax, 1;                              je    n48_disjunction_af
                                                                              jmp   n81_var_α
.Lx260_2:               mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n48_disjunction_af
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 82
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              r11, 83
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n83_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_unop_α:             mov              r11, 84
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n85_coerce_numeric_α
.Lx266_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              al, 5;                               je    .Lx268_1
                        cmp              al, 3;                               jne   .Lx268_0
                        mov              eax, dword ptr [rsp + 1728]
                        cmp              al, 3;                               jne   .Lx268_0
.Lx268_1:               mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n86_binop_α
.Lx268_0:               lea              rdi, [rsp + 1696]
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1680]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              r11, 87
                        mov              eax, dword ptr [rsp + 1680]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx269_2
                        mov              rax, qword ptr [rsp + 1688]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1664], 3
                        mov              qword ptr [rsp + 1672], rax;         jmp   .Lx269_7
.Lx269_2:               and              edx, 1;                              jz    .Lx269_0
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx269_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx269_4
.Lx269_3:               movq             xmm0, rsi
.Lx269_4:               cmp              cl, 5;                               je    .Lx269_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx269_6
.Lx269_5:               movq             xmm1, rdi
.Lx269_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1664], 5
                        mov              qword ptr [rsp + 1672], rax
.Lx269_7:                                                                     jmp   n87_lit_integer_α
.Lx269_0:               mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n90_var_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              r11, 88
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n88_subscript_α
.Lx270_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n88_subscript_α:        mov              r11, 89
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              r8, qword ptr [rsp + 1744]
                        mov              r9, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n90_var_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 90
                        mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              mov              r11, 91
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              r11, 92
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n92_var_α
.Lx275_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 93
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n93_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_unop_α:             mov              r11, 94
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 95
                        mov              qword ptr [rsp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n95_coerce_numeric_α
.Lx279_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              r11, 96
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              al, 5;                               je    .Lx281_1
                        cmp              al, 3;                               jne   .Lx281_0
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              al, 3;                               jne   .Lx281_0
.Lx281_1:               mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n96_binop_α
.Lx281_0:               lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 1616]
                        lea              rdx, [rsp + 1568]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            mov              r11, 97
                        mov              eax, dword ptr [rsp + 1568]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx282_2
                        mov              rax, qword ptr [rsp + 1576]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1552], 3
                        mov              qword ptr [rsp + 1560], rax;         jmp   .Lx282_7
.Lx282_2:               and              edx, 1;                              jz    .Lx282_0
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx282_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx282_4
.Lx282_3:               movq             xmm0, rsi
.Lx282_4:               cmp              cl, 5;                               je    .Lx282_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx282_6
.Lx282_5:               movq             xmm1, rdi
.Lx282_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1552], 5
                        mov              qword ptr [rsp + 1560], rax
.Lx282_7:                                                                     jmp   n97_subscript_α
.Lx282_0:               mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1616]
                        mov              rcx, qword ptr [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n100_var_α
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:        mov              r11, 98
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1544]
                        mov              r8, qword ptr [rsp + 1552]
                        mov              r9, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n100_var_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n99_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_conjunction_α:      mov              r11, 100
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n48_disjunction_as
n99_conjunction_β:      mov              r11, 100;                            jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              r11, 101
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n101_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_α:            mov              r11, 102
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
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              r11, 103
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx;         jmp   n103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n103_disjunction_α:     mov              r11, 104
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n133_var_α
n103_disjunction_as:    mov              r11, 104
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx291_0
                                                                              jmp   collate_γ
.Lx291_0:               cmp              eax, 1;                              jne   .Lx291_1
                                                                              jmp   collate_γ
.Lx291_1:                                                                     jmp   collate_γ
n103_disjunction_β:     mov              r11, 104
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    collate_ω
                                                                              jmp   collate_ω
n103_disjunction_af:    mov              r11, 104
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n104_var_α
                                                                              jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 105
                        mov              rax, qword ptr [r9 + 32]             # collate__STATIC__clabels
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 752], rax           # result
                        mov              qword ptr [rsp + 760], rdx;          jmp   n105_var_α
n104_var_β:             mov              r11, 105;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 106
                        mov              rax, qword ptr [r9 + 48]             # collate__STATIC__blabels
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 768], rax           # result
                        mov              qword ptr [rsp + 776], rdx;          jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 872], rax;          jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 64]             # collate__STATIC__half
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 880], rax           # result
                        mov              qword ptr [rsp + 888], rdx;          jmp   n108_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn298:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_var_α
n108_call_builtin_icon_β:
                        mov              r11, 109;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 968], rax;          jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             mov              r11, 111
                        mov              rax, qword ptr [r9 + 64]             # collate__STATIC__half
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 976], rax           # result
                        mov              qword ptr [rsp + 984], rdx;          jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn303:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_binop_α
n111_call_builtin_icon_β:
                        mov              r11, 112;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           mov              r11, 113
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn306:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rsp + 688]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_var_α
n113_call_builtin_icon_β:
                        mov              r11, 114;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 117
                        mov              rax, qword ptr [r9 + 64]             # collate__STATIC__half
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1200], rax          # result
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n117_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n117_coerce_numeric_α:  mov              r11, 118
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 5;                               je    .Lx313_1
                        cmp              al, 3;                               jne   .Lx313_0
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              al, 3;                               jne   .Lx313_0
.Lx313_1:               mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n118_coerce_numeric_α
.Lx313_0:               lea              rdi, [rsp + 3136]
                        lea              rsi, [rsp + 1200]
                        lea              rdx, [rsp + 1168]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n118_coerce_numeric_α:  mov              r11, 119
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              al, 5;                               je    .Lx315_1
                        cmp              al, 3;                               jne   .Lx315_0
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 3;                               jne   .Lx315_0
.Lx315_1:               mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n119_binop_α
.Lx315_0:               lea              rdi, [rsp + 1200]
                        lea              rsi, [rsp + 3136]
                        lea              rdx, [rsp + 1152]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           mov              r11, 120
                        mov              eax, dword ptr [rsp + 1168]
                        mov              ecx, dword ptr [rsp + 1152]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx316_2
                        mov              rax, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1160]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1136], 3
                        mov              qword ptr [rsp + 1144], rax;         jmp   .Lx316_7
.Lx316_2:               and              edx, 1;                              jz    .Lx316_0
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdi, qword ptr [rsp + 1160]
                        cmp              al, 5;                               je    .Lx316_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx316_4
.Lx316_3:               movq             xmm0, rsi
.Lx316_4:               cmp              cl, 5;                               je    .Lx316_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx316_6
.Lx316_5:               movq             xmm1, rdi
.Lx316_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1136], 5
                        mov              qword ptr [rsp + 1144], rax
.Lx316_7:                                                                     jmp   n120_call_builtin_icon_α
.Lx316_0:               mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    collate_ω
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              r11, 121
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn318:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n121_var_α
n120_call_builtin_icon_β:
                        mov              r11, 121;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             mov              r11, 124
                        mov              rax, qword ptr [r9 + 64]             # collate__STATIC__half
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1360], rax          # result
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n124_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_numeric_α:  mov              r11, 125
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 5;                               je    .Lx325_1
                        cmp              al, 3;                               jne   .Lx325_0
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 3;                               jne   .Lx325_0
.Lx325_1:               mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n125_coerce_numeric_α
.Lx325_0:               lea              rdi, [rsp + 3136]
                        lea              rsi, [rsp + 1360]
                        lea              rdx, [rsp + 1328]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:  mov              r11, 126
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 5;                               je    .Lx327_1
                        cmp              al, 3;                               jne   .Lx327_0
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 3;                               jne   .Lx327_0
.Lx327_1:               mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n126_binop_α
.Lx327_0:               lea              rdi, [rsp + 1360]
                        lea              rsi, [rsp + 3136]
                        lea              rdx, [rsp + 1312]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:           mov              r11, 127
                        mov              eax, dword ptr [rsp + 1328]
                        mov              ecx, dword ptr [rsp + 1312]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx328_2
                        mov              rax, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1320]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1296], 3
                        mov              qword ptr [rsp + 1304], rax;         jmp   .Lx328_7
.Lx328_2:               and              edx, 1;                              jz    .Lx328_0
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdi, qword ptr [rsp + 1320]
                        cmp              al, 5;                               je    .Lx328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx328_4
.Lx328_3:               movq             xmm0, rsi
.Lx328_4:               cmp              cl, 5;                               je    .Lx328_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx328_6
.Lx328_5:               movq             xmm1, rdi
.Lx328_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1296], 5
                        mov              qword ptr [rsp + 1304], rax
.Lx328_7:                                                                     jmp   n127_call_builtin_icon_α
.Lx328_0:               mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    collate_ω
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n127_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        mov              r11, 128
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn330:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_call_proc_staged_α
n127_call_builtin_icon_β:
                        mov              r11, 128;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        mov              r11, 129
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 1216]
                        call             collate_dcα;                         jmp   .Lx332_2
.Lx332_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx332_29
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
.Lx332_29:              mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    collate_ω
                                                                              jmp   n129_binop_α
n128_call_proc_staged_β:
                        mov              r11, 129;                            jmp   collate_ω
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:           mov              r11, 130
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:           mov              r11, 132
                        mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 3152]
                        mov              rcx, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_return_α
#-----------------------------------------------------------------------------------------------------------------------
n132_return_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   collate_γ
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              r11, 134
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 616], rax;          jmp   n134_var_α
n133_var_β:             mov              r11, 134;                            jmp   n103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             mov              r11, 135
                        mov              rax, qword ptr [r9 + 64]             # collate__STATIC__half
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 624], rax           # result
                        mov              qword ptr [rsp + 632], rdx;          jmp   n135_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_test_α:      mov              r11, 136
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 112;                             je    .Lx341_0
                        mov              eax, dword ptr [rsp + 624]
                        cmp              al, 112;                             je    .Lx341_0
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 3;                               jne   .Lx341_2
                        mov              eax, dword ptr [rsp + 624]
                        cmp              al, 3;                               jne   .Lx341_2
.Lx341_1:               mov              rax, qword ptr [rsp + 3144]
                        mov              rcx, qword ptr [rsp + 632]
                        cmp              rax, rcx;                            jg    n103_disjunction_af
                        mov              rcx, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rcx
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rcx;          jmp   n136_var_α
.Lx341_0:               mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              r8d, 6
                        lea              r9, [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx341_1
                        cmp              eax, 1;                              je    n103_disjunction_af
                                                                              jmp   n136_var_α
.Lx341_2:               mov              rdi, qword ptr [rsp + 3136]
                        mov              rsi, qword ptr [rsp + 3144]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n103_disjunction_af
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              r11, 137
                        mov              rax, qword ptr [r9 + 32]             # collate__STATIC__clabels
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 240], rax           # result
                        mov              qword ptr [rsp + 248], rdx;          jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n138_var_α
.Lx343_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             mov              r11, 139
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 312], rax;          jmp   n139_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n139_coerce_numeric_α:  mov              r11, 140
                        mov              eax, dword ptr [rsp + 3136]
                        cmp              al, 5;                               je    .Lx347_1
                        cmp              al, 3;                               jne   .Lx347_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              al, 3;                               jne   .Lx347_0
.Lx347_1:               mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 280], rax;          jmp   n140_binop_α
.Lx347_0:               lea              rdi, [rsp + 3136]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:           mov              r11, 141
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 272]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx348_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 280]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 256], 3
                        mov              qword ptr [rsp + 264], rax;          jmp   .Lx348_7
.Lx348_2:               and              edx, 1;                              jz    .Lx348_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 280]
                        cmp              al, 5;                               je    .Lx348_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx348_4
.Lx348_3:               movq             xmm0, rsi
.Lx348_4:               cmp              cl, 5;                               je    .Lx348_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx348_6
.Lx348_5:               movq             xmm1, rdi
.Lx348_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 256], 5
                        mov              qword ptr [rsp + 264], rax
.Lx348_7:                                                                     jmp   n141_call_builtin_icon_α
.Lx348_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    collate_ω
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn350:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_var_α
n141_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              r11, 143
                        mov              rax, qword ptr [r9 + 0]              # collate__STATIC__llabels
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 400], rax           # result
                        mov              qword ptr [rsp + 408], rdx;          jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 424], rax;          jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn355:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_var_α
n144_call_builtin_icon_β:
                        mov              r11, 145;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             mov              r11, 146
                        mov              rax, qword ptr [r9 + 16]             # collate__STATIC__rlabels
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 496], rax           # result
                        mov              qword ptr [rsp + 504], rdx;          jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 520], rax;          jmp   n147_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn360:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n148_binop_α
n147_call_builtin_icon_β:
                        mov              r11, 148;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           mov              r11, 149
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 552], rax;          jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             mov              r11, 151
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 568], rax;          jmp   n151_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           mov              r11, 152
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn368:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rsp + 112]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    collate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_var_α
n152_call_builtin_icon_β:
                        mov              r11, 153;                            jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 584], rax;          jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:           mov              r11, 155
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 3152]
                        mov              rcx, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n155_return_α
#-----------------------------------------------------------------------------------------------------------------------
n155_return_α:          mov              r11, 156
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   collate_γ
#-----------------------------------------------------------------------------------------------------------------------
collate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
collate_β:
                                                                              jmp   collate_ω
#-----------------------------------------------------------------------------------------------------------------------
collate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3320]
                        add              rsp, 3344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
collate_ω:
                        mov              rcx, qword ptr [rsp + 3328]
                        add              rsp, 3344;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
collate_dcα:
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
                        lea              rcx, [rip + .Lx373_2]
                        lea              rdx, [rip + .Lx373_3];               jmp   FN__collate
.Lx373_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx373_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__decollate:
                        sub              rsp, 2224
                        mov              qword ptr [rsp + 2200], rcx
                        mov              qword ptr [rsp + 2208], rdx
                        mov              rdi, rsp
                        add              rdi, 2112
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
decollate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n374_disjunction_α:     mov              r11, 157
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              dword ptr [rsp + 1504], 0;           jmp   n375_var_ref_α
n374_disjunction_as:    mov              r11, 157
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              eax, 0;                              jne   .Lx484_0
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n402_var_α
.Lx484_0:                                                                     jmp   n402_var_α
n374_disjunction_β:     mov              r11, 157
                        mov              eax, dword ptr [rsp + 1504];         jmp   n402_var_α
n374_disjunction_af:    mov              r11, 157
                        add              dword ptr [rsp + 1504], 1
                        mov              eax, dword ptr [rsp + 1504];         jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # decollate__INITFLAG__0
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n376_nulltest_var_α
n375_var_ref_β:         mov              r11, 158;                            jmp   n374_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_nulltest_var_α:    mov              r11, 159
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              al, 104;                             je    n374_disjunction_af
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n374_disjunction_af
                        cmp              eax, 0;                              jne   n374_disjunction_af
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n378_assign_var_α
.Lx488_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_var_α:      mov              r11, 161
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2096]
                        mov              rcx, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n374_disjunction_af
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n379_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n379_keyword_icon_α:    mov              r11, 162
                        mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n380_lit_integer_α
n379_keyword_icon_β:    mov              r11, 162;                            jmp   n395_keyword_icon_α
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n381_lit_integer_α
.Lx491_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n382_subscript_α
.Lx492_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n382_subscript_α:       mov              r11, 165
                        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1776]
                        mov              rcx, qword ptr [rsp + 1784]
                        mov              r8, qword ptr [rsp + 1792]
                        mov              r9, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n383_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n383_keyword_icon_α:    mov              r11, 166
                        mov              rdi, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n384_lit_integer_α
n383_keyword_icon_β:    mov              r11, 166;                            jmp   n395_keyword_icon_α
.Lx494_0:               .quad            .Lx494_0_s
.Lx494_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rsp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n385_subscript_α
.Lx495_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:       mov              r11, 168
                        mov              rdi, qword ptr [rsp + 1872]
                        mov              rsi, qword ptr [rsp + 1880]
                        mov              rdx, qword ptr [rsp + 1904]
                        mov              rcx, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n386_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_deref_α:           mov              r11, 169
                        mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n387_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n387_keyword_icon_α:    mov              r11, 170
                        mov              rdi, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n388_unop_α
n387_keyword_icon_β:    mov              r11, 170;                            jmp   n395_keyword_icon_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n388_unop_α:            mov              r11, 171
                        mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 2032], 3            # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n390_coerce_numeric_α
.Lx500_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n390_coerce_numeric_α:  mov              r11, 173
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 5;                               je    .Lx502_1
                        cmp              al, 3;                               jne   .Lx502_0
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              al, 3;                               jne   .Lx502_0
.Lx502_1:               mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n391_binop_α
.Lx502_0:               lea              rdi, [rsp + 1984]
                        lea              rsi, [rsp + 2032]
                        lea              rdx, [rsp + 1968]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n391_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n391_binop_α:           mov              r11, 174
                        mov              eax, dword ptr [rsp + 1968]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx503_2
                        mov              rax, qword ptr [rsp + 1976]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1952], 3
                        mov              qword ptr [rsp + 1960], rax;         jmp   .Lx503_7
.Lx503_2:               and              edx, 1;                              jz    .Lx503_0
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx503_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx503_4
.Lx503_3:               movq             xmm0, rsi
.Lx503_4:               cmp              cl, 5;                               je    .Lx503_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx503_6
.Lx503_5:               movq             xmm1, rdi
.Lx503_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1952], 5
                        mov              qword ptr [rsp + 1960], rax
.Lx503_7:                                                                     jmp   n392_call_builtin_icon_α
.Lx503_0:               mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn505:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n395_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n393_call_proc_staged_α
n392_call_builtin_icon_β:
                        mov              r11, 175;                            jmp   n395_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_proc_staged_α:
                        mov              r11, 176
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1808]
                        call             collate_dcα;                         jmp   .Lx507_2
.Lx507_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx507_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
.Lx507_29:              mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n395_keyword_icon_α
                                                                              jmp   n394_assign_α
n393_call_proc_staged_β:
                        mov              r11, 176;                            jmp   n395_keyword_icon_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:          mov              r11, 177
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [r9 + 112], rax            # decollate__STATIC__image
                        mov              qword ptr [r9 + 120], rdx;           jmp   n395_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n395_keyword_icon_α:    mov              r11, 178
                        mov              rdi, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n398_var_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n396_call_builtin_icon_α
n395_keyword_icon_β:    mov              r11, 178;                            jmp   n398_var_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              r11, 179
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn511:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n398_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n397_assign_α
n396_call_builtin_icon_β:
                        mov              r11, 179;                            jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:          mov              r11, 180
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
                        mov              qword ptr [r9 + 128], rax            # decollate__STATIC__object
                        mov              qword ptr [r9 + 136], rdx;           jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:             mov              r11, 181
                        mov              rax, qword ptr [r9 + 112]            # decollate__STATIC__image
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 1568], rax          # result
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n399_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n399_unop_α:            mov              r11, 182
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n400_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:          mov              r11, 183
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [r9 + 96], rax             # decollate__STATIC__dsize
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n401_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n401_conjunction_α:     mov              r11, 184
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n374_disjunction_as
n401_conjunction_β:     mov              r11, 184;                            jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n403_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n404_coerce_numeric_α
.Lx519_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n404_coerce_numeric_α:  mov              r11, 187
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx521_1
                        cmp              al, 3;                               jne   .Lx521_0
                        mov              eax, dword ptr [rsp + 1472]
                        cmp              al, 3;                               jne   .Lx521_0
.Lx521_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n405_binop_α
.Lx521_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1440]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n405_binop_α:           mov              r11, 188
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1472]
                        mov              rcx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        cmp              al, 104;                             je    n407_var_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n406_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n408_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n408_unop_α:            mov              r11, 191
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
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n409_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n410_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n410_disjunction_α:     mov              r11, 193
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n453_var_α
n410_disjunction_as:    mov              r11, 193
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx529_0
                                                                              jmp   decollate_γ
.Lx529_0:               cmp              eax, 1;                              jne   .Lx529_1
                                                                              jmp   decollate_γ
.Lx529_1:                                                                     jmp   decollate_γ
n410_disjunction_β:     mov              r11, 193
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    decollate_ω
                                                                              jmp   decollate_ω
n410_disjunction_af:    mov              r11, 193
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n411_var_α
                                                                              jmp   decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:             mov              r11, 194
                        mov              rax, qword ptr [r9 + 128]            # decollate__STATIC__object
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 720], rax           # result
                        mov              qword ptr [rsp + 728], rdx;          jmp   n412_lit_integer_α
n411_var_β:             mov              r11, 194;                            jmp   decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n413_var_α
.Lx531_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:             mov              r11, 196
                        mov              rax, qword ptr [r9 + 96]             # decollate__STATIC__dsize
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 816], rax           # result
                        mov              qword ptr [rsp + 824], rdx;          jmp   n414_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n415_coerce_numeric_α
.Lx533_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n415_coerce_numeric_α:  mov              r11, 198
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 5;                               je    .Lx535_1
                        cmp              al, 3;                               jne   .Lx535_0
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 3;                               jne   .Lx535_0
.Lx535_1:               mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 808], rax;          jmp   n416_binop_α
.Lx535_0:               lea              rdi, [rsp + 816]
                        lea              rsi, [rsp + 832]
                        lea              rdx, [rsp + 800]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:           mov              r11, 199
                        mov              eax, dword ptr [rsp + 800]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx536_2
                        mov              rax, qword ptr [rsp + 808]
                        mov              rdx, 2
                        sub              rax, rdx
                        mov              qword ptr [rsp + 784], 3
                        mov              qword ptr [rsp + 792], rax;          jmp   .Lx536_7
.Lx536_2:               and              edx, 1;                              jz    .Lx536_0
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx536_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx536_4
.Lx536_3:               movq             xmm0, rsi
.Lx536_4:               cmp              cl, 5;                               je    .Lx536_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx536_6
.Lx536_5:               movq             xmm1, rdi
.Lx536_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 784], 5
                        mov              qword ptr [rsp + 792], rax
.Lx536_7:                                                                     jmp   n417_lit_integer_α
.Lx536_0:               mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n418_coerce_numeric_α
.Lx537_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:  mov              r11, 201
                        mov              eax, dword ptr [rsp + 784]
                        cmp              al, 5;                               je    .Lx539_1
                        cmp              al, 3;                               jne   .Lx539_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 3;                               jne   .Lx539_0
.Lx539_1:               mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax;          jmp   n419_binop_α
.Lx539_0:               lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 768]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:           mov              r11, 202
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n420_binop_α:           mov              r11, 203
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 752]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx541_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 760]
                        add              rax, rdx
                        mov              qword ptr [rsp + 864], 3
                        mov              qword ptr [rsp + 872], rax;          jmp   .Lx541_7
.Lx541_2:               and              edx, 1;                              jz    .Lx541_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 760]
                        cmp              al, 5;                               je    .Lx541_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx541_4
.Lx541_3:               movq             xmm0, rsi
.Lx541_4:               cmp              cl, 5;                               je    .Lx541_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx541_6
.Lx541_5:               movq             xmm1, rdi
.Lx541_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 864], 5
                        mov              qword ptr [rsp + 872], rax
.Lx541_7:                                                                     jmp   n421_subscript_α
.Lx541_0:               mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n421_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:       mov              r11, 204
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              r8, qword ptr [rsp + 864]
                        mov              r9, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:             mov              r11, 205
                        mov              rax, qword ptr [r9 + 112]            # decollate__STATIC__image
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 952], rax;          jmp   n424_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n425_coerce_numeric_α
.Lx546_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n425_coerce_numeric_α:  mov              r11, 208
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx548_1
                        cmp              al, 3;                               jne   .Lx548_0
                        mov              eax, dword ptr [rsp + 960]
                        cmp              al, 3;                               jne   .Lx548_0
.Lx548_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n426_binop_α
.Lx548_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 960]
                        lea              rdx, [rsp + 928]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:           mov              r11, 209
                        mov              eax, dword ptr [rsp + 928]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx549_2
                        mov              rax, qword ptr [rsp + 936]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 912], 3
                        mov              qword ptr [rsp + 920], rax;          jmp   .Lx549_7
.Lx549_2:               and              edx, 1;                              jz    .Lx549_0
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx549_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx549_4
.Lx549_3:               movq             xmm0, rsi
.Lx549_4:               cmp              cl, 5;                               je    .Lx549_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx549_6
.Lx549_5:               movq             xmm1, rdi
.Lx549_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 912], 5
                        mov              qword ptr [rsp + 920], rax
.Lx549_7:                                                                     jmp   n427_var_α
.Lx549_0:               mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:             mov              r11, 210
                        mov              rax, qword ptr [r9 + 96]             # decollate__STATIC__dsize
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1008], rax          # result
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n428_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:     mov              r11, 211
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n429_coerce_numeric_α
.Lx551_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n429_coerce_numeric_α:  mov              r11, 212
                        mov              eax, dword ptr [rsp + 1008]
                        cmp              al, 5;                               je    .Lx553_1
                        cmp              al, 3;                               jne   .Lx553_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              al, 3;                               jne   .Lx553_0
.Lx553_1:               mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n430_binop_α
.Lx553_0:               lea              rdi, [rsp + 1008]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n430_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:           mov              r11, 213
                        mov              eax, dword ptr [rsp + 992]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx554_2
                        mov              rax, qword ptr [rsp + 1000]
                        mov              rdx, 2
                        sub              rax, rdx
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   .Lx554_7
.Lx554_2:               and              edx, 1;                              jz    .Lx554_0
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx554_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx554_4
.Lx554_3:               movq             xmm0, rsi
.Lx554_4:               cmp              cl, 5;                               je    .Lx554_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx554_6
.Lx554_5:               movq             xmm1, rdi
.Lx554_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 976], 5
                        mov              qword ptr [rsp + 984], rax
.Lx554_7:                                                                     jmp   n431_binop_α
.Lx554_0:               mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n431_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n431_binop_α:           mov              r11, 214
                        mov              eax, dword ptr [rsp + 912]
                        mov              ecx, dword ptr [rsp + 976]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx555_2
                        mov              rax, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 984]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   .Lx555_7
.Lx555_2:               and              edx, 1;                              jz    .Lx555_0
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdi, qword ptr [rsp + 984]
                        cmp              al, 5;                               je    .Lx555_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx555_4
.Lx555_3:               movq             xmm0, rsi
.Lx555_4:               cmp              cl, 5;                               je    .Lx555_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx555_6
.Lx555_5:               movq             xmm1, rdi
.Lx555_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1040], 5
                        mov              qword ptr [rsp + 1048], rax
.Lx555_7:                                                                     jmp   n432_subscript_α
.Lx555_0:               mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n432_subscript_α:       mov              r11, 215
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        mov              r8, qword ptr [rsp + 1040]
                        mov              r9, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n435_var_α
.Lx559_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             mov              r11, 218
                        mov              rax, qword ptr [r9 + 96]             # decollate__STATIC__dsize
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1136], rax          # result
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n436_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:     mov              r11, 219
                        mov              qword ptr [rsp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n437_coerce_numeric_α
.Lx561_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n437_coerce_numeric_α:  mov              r11, 220
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              al, 5;                               je    .Lx563_1
                        cmp              al, 3;                               jne   .Lx563_0
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              al, 3;                               jne   .Lx563_0
.Lx563_1:               mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n438_binop_α
.Lx563_0:               lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1152]
                        lea              rdx, [rsp + 1120]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n438_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n438_binop_α:           mov              r11, 221
                        mov              eax, dword ptr [rsp + 1120]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx564_2
                        mov              rax, qword ptr [rsp + 1128]
                        mov              rdx, 2
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1104], 3
                        mov              qword ptr [rsp + 1112], rax;         jmp   .Lx564_7
.Lx564_2:               and              edx, 1;                              jz    .Lx564_0
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx564_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx564_4
.Lx564_3:               movq             xmm0, rsi
.Lx564_4:               cmp              cl, 5;                               je    .Lx564_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx564_6
.Lx564_5:               movq             xmm1, rdi
.Lx564_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1104], 5
                        mov              qword ptr [rsp + 1112], rax
.Lx564_7:                                                                     jmp   n439_binop_α
.Lx564_0:               mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n439_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n439_binop_α:           mov              r11, 222
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1104]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx565_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 1112]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1168], 3
                        mov              qword ptr [rsp + 1176], rax;         jmp   .Lx565_7
.Lx565_2:               and              edx, 1;                              jz    .Lx565_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 1112]
                        cmp              al, 5;                               je    .Lx565_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx565_4
.Lx565_3:               movq             xmm0, rsi
.Lx565_4:               cmp              cl, 5;                               je    .Lx565_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx565_6
.Lx565_5:               movq             xmm1, rdi
.Lx565_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1168], 5
                        mov              qword ptr [rsp + 1176], rax
.Lx565_7:                                                                     jmp   n440_subscript_α
.Lx565_0:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n440_subscript_α:       mov              r11, 223
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8, qword ptr [rsp + 1168]
                        mov              r9, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n441_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_icon_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn568:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 640]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    decollate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n442_var_α
n441_call_builtin_icon_β:
                        mov              r11, 224;                            jmp   decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:             mov              r11, 225
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              r11, 226
                        mov              rax, qword ptr [r9 + 96]             # decollate__STATIC__dsize
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 1312], rax          # result
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:     mov              r11, 227
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n445_coerce_numeric_α
.Lx572_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n445_coerce_numeric_α:  mov              r11, 228
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              al, 5;                               je    .Lx574_1
                        cmp              al, 3;                               jne   .Lx574_0
                        mov              eax, dword ptr [rsp + 1328]
                        cmp              al, 3;                               jne   .Lx574_0
.Lx574_1:               mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n446_binop_α
.Lx574_0:               lea              rdi, [rsp + 1312]
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 1296]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:           mov              r11, 229
                        mov              eax, dword ptr [rsp + 1296]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx575_2
                        mov              rax, qword ptr [rsp + 1304]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 1280], 3
                        mov              qword ptr [rsp + 1288], rax;         jmp   .Lx575_7
.Lx575_2:               and              edx, 1;                              jz    .Lx575_0
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx575_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx575_4
.Lx575_3:               movq             xmm0, rsi
.Lx575_4:               cmp              cl, 5;                               je    .Lx575_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx575_6
.Lx575_5:               movq             xmm1, rdi
.Lx575_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1280], 5
                        mov              qword ptr [rsp + 1288], rax
.Lx575_7:                                                                     jmp   n447_lit_integer_α
.Lx575_0:               mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:     mov              r11, 230
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n448_subscript_α
.Lx576_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n448_subscript_α:       mov              r11, 231
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              r8, qword ptr [rsp + 1344]
                        mov              r9, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n450_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_proc_staged_α:
                        mov              r11, 233
                        lea              rsi, [rsp + 1248]
                        lea              rdx, [rsp + 1360]
                        call             decollate_dcα;                       jmp   .Lx581_2
.Lx581_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx581_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
.Lx581_29:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    decollate_ω
                                                                              jmp   n451_binop_α
n450_call_proc_staged_β:
                        mov              r11, 233;                            jmp   decollate_ω
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:           mov              r11, 234
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_return_α
#-----------------------------------------------------------------------------------------------------------------------
n452_return_α:          mov              r11, 235
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   decollate_γ
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:             mov              r11, 236
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 568], rax;          jmp   n454_var_α
n453_var_β:             mov              r11, 236;                            jmp   n410_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 584], rax;          jmp   n455_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n455_coerce_numeric_α:  mov              r11, 238
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 5;                               je    .Lx589_1
                        cmp              al, 3;                               jne   .Lx589_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx589_0
.Lx589_1:               mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 552], rax;          jmp   n456_coerce_numeric_α
.Lx589_0:               lea              rdi, [rsp + 2112]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 544]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n456_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n456_coerce_numeric_α:  mov              r11, 239
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx591_1
                        cmp              al, 3;                               jne   .Lx591_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lx591_0
.Lx591_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 536], rax;          jmp   n457_binop_α
.Lx591_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 528]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n457_binop_α:           mov              r11, 240
                        mov              eax, dword ptr [rsp + 544]
                        mov              ecx, dword ptr [rsp + 528]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx592_2
                        mov              rax, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 536]
                        add              rax, rdx
                        mov              qword ptr [rsp + 512], 3
                        mov              qword ptr [rsp + 520], rax;          jmp   .Lx592_7
.Lx592_2:               and              edx, 1;                              jz    .Lx592_0
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdi, qword ptr [rsp + 536]
                        cmp              al, 5;                               je    .Lx592_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx592_4
.Lx592_3:               movq             xmm0, rsi
.Lx592_4:               cmp              cl, 5;                               je    .Lx592_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx592_6
.Lx592_5:               movq             xmm1, rdi
.Lx592_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 512], 5
                        mov              qword ptr [rsp + 520], rax
.Lx592_7:                                                                     jmp   n458_var_α
.Lx592_0:               mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n410_disjunction_af
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n458_var_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:             mov              r11, 241
                        mov              rax, qword ptr [r9 + 96]             # decollate__STATIC__dsize
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 592], rax           # result
                        mov              qword ptr [rsp + 600], rdx;          jmp   n459_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_test_α:      mov              r11, 242
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 112;                             je    .Lx594_0
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 112;                             je    .Lx594_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx594_2
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 3;                               jne   .Lx594_2
.Lx594_1:               mov              rax, qword ptr [rsp + 520]
                        mov              rcx, qword ptr [rsp + 600]
                        cmp              rax, rcx;                            jg    n410_disjunction_af
                        mov              rcx, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 496], rcx
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 504], rcx;          jmp   n460_var_α
.Lx594_0:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8d, 6
                        lea              r9, [rsp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx594_1
                        cmp              eax, 1;                              je    n410_disjunction_af
                                                                              jmp   n460_var_α
.Lx594_2:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
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
                        test             eax, eax;                            jz    n410_disjunction_af
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 504], rax;          jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:             mov              r11, 243
                        mov              rax, qword ptr [r9 + 128]            # decollate__STATIC__object
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 176], rax           # result
                        mov              qword ptr [rsp + 184], rdx;          jmp   n461_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n462_var_α
.Lx596_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:             mov              r11, 245
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 296], rax;          jmp   n463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 312], rax;          jmp   n464_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n464_coerce_numeric_α:  mov              r11, 247
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 5;                               je    .Lx602_1
                        cmp              al, 3;                               jne   .Lx602_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lx602_0
.Lx602_1:               mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 280], rax;          jmp   n465_coerce_numeric_α
.Lx602_0:               lea              rdi, [rsp + 2112]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 272]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n465_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n465_coerce_numeric_α:  mov              r11, 248
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx604_1
                        cmp              al, 3;                               jne   .Lx604_0
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              al, 3;                               jne   .Lx604_0
.Lx604_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n466_binop_α
.Lx604_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n466_binop_α:           mov              r11, 249
                        mov              eax, dword ptr [rsp + 272]
                        mov              ecx, dword ptr [rsp + 256]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx605_2
                        mov              rax, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 264]
                        add              rax, rdx
                        mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   .Lx605_7
.Lx605_2:               and              edx, 1;                              jz    .Lx605_0
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdi, qword ptr [rsp + 264]
                        cmp              al, 5;                               je    .Lx605_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx605_4
.Lx605_3:               movq             xmm0, rsi
.Lx605_4:               cmp              cl, 5;                               je    .Lx605_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx605_6
.Lx605_5:               movq             xmm1, rdi
.Lx605_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 240], 5
                        mov              qword ptr [rsp + 248], rax
.Lx605_7:                                                                     jmp   n467_lit_integer_α
.Lx605_0:               mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n467_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:     mov              r11, 250
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n468_coerce_numeric_α
.Lx606_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n468_coerce_numeric_α:  mov              r11, 251
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 5;                               je    .Lx608_1
                        cmp              al, 3;                               jne   .Lx608_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lx608_0
.Lx608_1:               mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 232], rax;          jmp   n469_binop_α
.Lx608_0:               lea              rdi, [rsp + 240]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n469_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n469_binop_α:           mov              r11, 252
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n470_binop_α:           mov              r11, 253
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx610_2
                        mov              rax, 1
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax;          jmp   .Lx610_7
.Lx610_2:               and              edx, 1;                              jz    .Lx610_0
                        mov              rsi, 1
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              al, 5;                               je    .Lx610_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx610_4
.Lx610_3:               movq             xmm0, rsi
.Lx610_4:               cmp              cl, 5;                               je    .Lx610_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx610_6
.Lx610_5:               movq             xmm1, rdi
.Lx610_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 336], 5
                        mov              qword ptr [rsp + 344], rax
.Lx610_7:                                                                     jmp   n471_subscript_α
.Lx610_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n471_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n471_subscript_α:       mov              r11, 254
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8, qword ptr [rsp + 336]
                        mov              r9, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:             mov              r11, 255
                        mov              rax, qword ptr [r9 + 112]            # decollate__STATIC__image
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 368], rax           # result
                        mov              qword ptr [rsp + 376], rdx;          jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax;          jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n475_coerce_numeric_α
.Lx615_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n475_coerce_numeric_α:  mov              r11, 258
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 5;                               je    .Lx617_1
                        cmp              al, 3;                               jne   .Lx617_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 3;                               jne   .Lx617_0
.Lx617_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n476_binop_α
.Lx617_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n476_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n476_binop_α:           mov              r11, 259
                        mov              eax, dword ptr [rsp + 400]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx618_2
                        mov              rax, qword ptr [rsp + 408]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   .Lx618_7
.Lx618_2:               and              edx, 1;                              jz    .Lx618_0
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx618_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx618_4
.Lx618_3:               movq             xmm0, rsi
.Lx618_4:               cmp              cl, 5;                               je    .Lx618_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx618_6
.Lx618_5:               movq             xmm1, rdi
.Lx618_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 384], 5
                        mov              qword ptr [rsp + 392], rax
.Lx618_7:                                                                     jmp   n477_var_α
.Lx618_0:               mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n477_var_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 456], rax;          jmp   n478_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n478_binop_α:           mov              r11, 261
                        mov              eax, dword ptr [rsp + 384]
                        mov              ecx, dword ptr [rsp + 2112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx621_2
                        mov              rax, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 2120]
                        add              rax, rdx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   .Lx621_7
.Lx621_2:               and              edx, 1;                              jz    .Lx621_0
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdi, qword ptr [rsp + 2120]
                        cmp              al, 5;                               je    .Lx621_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx621_4
.Lx621_3:               movq             xmm0, rsi
.Lx621_4:               cmp              cl, 5;                               je    .Lx621_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx621_6
.Lx621_5:               movq             xmm1, rdi
.Lx621_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 464], 5
                        mov              qword ptr [rsp + 472], rax
.Lx621_7:                                                                     jmp   n479_subscript_α
.Lx621_0:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n479_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n479_subscript_α:       mov              r11, 262
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              r8, qword ptr [rsp + 464]
                        mov              r9, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    decollate_ω
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:             mov              r11, 263
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 488], rax;          jmp   n481_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_icon_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn626:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn626]
                        lea              rsi, [rsp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    decollate_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n482_return_α
n481_call_builtin_icon_β:
                        mov              r11, 264;                            jmp   decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_return_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   decollate_γ
#-----------------------------------------------------------------------------------------------------------------------
decollate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
decollate_β:
                                                                              jmp   decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
decollate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2200]
                        add              rsp, 2224;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
decollate_ω:
                        mov              rcx, qword ptr [rsp + 2208]
                        add              rsp, 2224;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
decollate_dcα:
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
                        lea              rcx, [rip + .Lx628_2]
                        lea              rdx, [rip + .Lx628_3];               jmp   FN__decollate
.Lx628_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx628_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__perm:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              rdi, rsp
                        add              rdi, 464
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
perm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_icon_α:
                        mov              r11, 266
                        .section         .rodata
.Lrkfn645:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rsp + 448]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n631_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n630_assign_α
n629_call_builtin_icon_β:
                        mov              r11, 266;                            jmp   n631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n630_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_integer_α:     mov              r11, 268
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n632_lit_integer_α
.Lx647_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n633_to_α
.Lx648_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n633_to_α:              mov              r11, 270
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
.Lx650_0:               mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jg    n640_var_α
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n634_bound_α
n633_to_β:              mov              r11, 270
                        inc              qword ptr [rsp + 160];               jmp   .Lx650_0
#-----------------------------------------------------------------------------------------------------------------------
n634_bound_α:           mov              r11, 271
                        mov              qword ptr [rsp + 208], rsp;          jmp   n635_var_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 328], rax;          jmp   n636_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n637_proc_gen_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "ogram"
#-----------------------------------------------------------------------------------------------------------------------
n637_proc_gen_α:        mov              r11, 274
                        mov              qword ptr [rsp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx657_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx657_21
.Lx657_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx657_21:              lea              rax, [rip + .Lx657_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx657_1
                        lea              rcx, [rip + .Lx657_3]
                        lea              rdx, [rip + .Lx657_4];               jmp   rax
.Lx657_3:               mov              qword ptr [rsp + 376], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx657_5
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx657_2
.Lx657_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx657_2
.Lx657_4:               mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx657_6
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx657_2
.Lx657_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx657_2
.Lx657_1:               call             rt_faildescr@PLT
.Lx657_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx657_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx657_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n639_unmark_α
                                                                              jmp   n638_call_builtin_icon_α
n637_proc_gen_β:        mov              r11, 274
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 376];          jmp   qword ptr [rsp]
.Lx657_7:               add              rsp, 8
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n639_unmark_α
                                                                              jmp   n638_call_builtin_icon_α
.Lx657_0:               .quad            .Lx657_0_s
.Lx657_0_s:             .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n638_call_builtin_icon_α:
                        mov              r11, 275
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn659:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n637_proc_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n637_proc_gen_β
n638_call_builtin_icon_β:
                        mov              r11, 275;                            jmp   n637_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n639_unmark_α:          mov              r11, 276
                        mov              rsp, qword ptr [rsp + 208];          jmp   n633_to_β
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 136], rax;          jmp   n641_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_icon_α:
                        mov              r11, 278
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn665:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    perm_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n642_iterate_α
n641_call_builtin_icon_β:
                        mov              r11, 278;                            jmp   perm_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_iterate_α:         mov              r11, 279
                        mov              qword ptr [rsp + 64], 0
.Lx667_0:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              rax, 104;                            je    perm_ω
                                                                              jmp   n643_call_builtin_icon_α
n642_iterate_β:         mov              r11, 279
                        inc              qword ptr [rsp + 64];                jmp   .Lx667_0
#-----------------------------------------------------------------------------------------------------------------------
n643_call_builtin_icon_α:
                        mov              r11, 280
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn669:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n642_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n642_iterate_β
n643_call_builtin_icon_β:
                        mov              r11, 280;                            jmp   n642_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
perm_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
perm_β:
                                                                              jmp   perm_ω
#-----------------------------------------------------------------------------------------------------------------------
perm_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perm_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perm_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx670_2]
                        lea              rdx, [rip + .Lx670_3];               jmp   FN__perm
.Lx670_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx670_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__permute:
permute_α_body:
                        lea              rax, [rip + n694_suspend_β]
                        mov              qword ptr [rsp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              dword ptr [rsp + 464], 0;            jmp   n696_var_α
n671_disjunction_as:    mov              r11, 281
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 0;                              jne   .Lx702_0
                                                                              jmp   n672_lit_integer_α
.Lx702_0:                                                                     jmp   n672_lit_integer_α
n671_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 464];          jmp   n672_lit_integer_α
n671_disjunction_af:    mov              r11, 281
                        add              dword ptr [rsp + 464], 1
                        mov              eax, dword ptr [rsp + 464];          jmp   n672_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n673_var_α
.Lx703_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:             mov              r11, 283
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n674_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n674_unop_α:            mov              r11, 284
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
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n675_to_α
#-----------------------------------------------------------------------------------------------------------------------
n675_to_α:              mov              r11, 285
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx708_0:               mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        cmp              rax, rcx;                            jg    permute_ω
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n676_assign_α
n675_to_β:              mov              r11, 285
                        inc              qword ptr [rsp + 64];                jmp   .Lx708_0
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n677_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n677_bound_α:           mov              r11, 287
                        mov              qword ptr [rsp + 128], rsp;          jmp   n678_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n678_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:             mov              r11, 289
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 408], rax;          jmp   n680_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n680_subscript_α:       mov              r11, 290
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n683_var_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n681_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n681_deref_α:           mov              r11, 291
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n683_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n682_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n683_var_α
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:             mov              r11, 293
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n684_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n685_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:         mov              r11, 295
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n686_var_α
#-----------------------------------------------------------------------------------------------------------------------
n686_var_α:             mov              r11, 296
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 312], rax;          jmp   n687_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n687_subscript_α:       mov              r11, 297
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n690_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n688_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 0
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n689_assign_var_α
.Lx727_0:               .quad            .Lx727_0_s
.Lx727_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_var_α:      mov              r11, 299
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 352]
                        mov              rcx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n690_var_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n690_var_α:             mov              r11, 300
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 200], rax;          jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:             mov              r11, 301
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 280], rax;          jmp   n692_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n692_proc_gen_α:        mov              r11, 302
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx734_20
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx734_21
.Lx734_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx734_21:              lea              rax, [rip + .Lx734_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx734_1
                        lea              rcx, [rip + .Lx734_3]
                        lea              rdx, [rip + .Lx734_4];               jmp   rax
.Lx734_3:               mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx734_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx734_2
.Lx734_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx734_2
.Lx734_4:               mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx734_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx734_2
.Lx734_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx734_2
.Lx734_1:               call             rt_faildescr@PLT
.Lx734_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx734_29
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
.Lx734_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n695_unmark_α
                                                                              jmp   n693_binop_α
n692_proc_gen_β:        mov              r11, 302
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 248];          jmp   qword ptr [rsp]
.Lx734_7:               add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n695_unmark_α
                                                                              jmp   n693_binop_α
.Lx734_0:               .quad            .Lx734_0_s
.Lx734_0_s:             .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n693_binop_α:           mov              r11, 303
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n694_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n694_suspend_α:         mov              r11, 304
                        lea              rax, [rip + n694_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 8], rax;            jmp   permute_γ
n694_suspend_β:         mov              r11, 304;                            jmp   n692_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n695_unmark_α:          mov              r11, 305
                        mov              rsp, qword ptr [rsp + 128];          jmp   n675_to_β
#-----------------------------------------------------------------------------------------------------------------------
n696_var_α:             mov              r11, 306
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 520], rax;          jmp   n697_lit_string_α
n696_var_β:             mov              r11, 306;                            jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 0
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n698_binop_test_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n698_binop_test_α:      mov              r11, 308
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n671_disjunction_af
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 0
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n700_return_α
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n700_return_α:          mov              r11, 310
                        lea              rax, [rip + permute_ω]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   permute_γ
#-----------------------------------------------------------------------------------------------------------------------
permute_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
permute_β:
                                                                              jmp   n694_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
permute_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
permute_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 10
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 10
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "collate__STATIC__llabels"
.Lgvan1:                .string          "collate__STATIC__rlabels"
.Lgvan2:                .string          "collate__STATIC__clabels"
.Lgvan3:                .string          "collate__STATIC__blabels"
.Lgvan4:                .string          "collate__STATIC__half"
.Lgvan5:                .string          "collate__INITFLAG__0"
.Lgvan6:                .string          "decollate__STATIC__dsize"
.Lgvan7:                .string          "decollate__STATIC__image"
.Lgvan8:                .string          "decollate__STATIC__object"
.Lgvan9:                .string          "decollate__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              rdi, rsp
                        add              rdi, 1168
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n746_keyword_icon_α:    mov              r11, 311
                        mov              rdi, qword ptr [rip + .Lx777_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n747_keyword_icon_α
n746_keyword_icon_β:    mov              r11, 311;                            jmp   n750_keyword_icon_α
.Lx777_0:               .quad            .Lx777_0_s
.Lx777_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n747_keyword_icon_α:    mov              r11, 312
                        mov              rdi, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n748_call_proc_staged_α
n747_keyword_icon_β:    mov              r11, 312;                            jmp   n750_keyword_icon_α
.Lx778_0:               .quad            .Lx778_0_s
.Lx778_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        mov              r11, 313
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1136]
                        call             collate_dcα;                         jmp   .Lx780_2
.Lx780_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx780_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx780_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n750_keyword_icon_α
                                                                              jmp   n749_assign_α
n748_call_proc_staged_β:
                        mov              r11, 313;                            jmp   n750_keyword_icon_α
.Lx780_0:               .quad            .Lx780_0_s
.Lx780_0_s:             .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:          mov              r11, 314
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n750_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n750_keyword_icon_α:    mov              r11, 315
                        mov              rdi, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n756_var_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n751_call_builtin_icon_α
n750_keyword_icon_β:    mov              r11, 315;                            jmp   n756_var_α
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_icon_α:
                        mov              r11, 316
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn784:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458908
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n756_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n752_keyword_icon_α
n751_call_builtin_icon_β:
                        mov              r11, 316;                            jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n752_keyword_icon_α:    mov              r11, 317
                        mov              rdi, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n756_var_α
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n753_call_builtin_icon_α
n752_keyword_icon_β:    mov              r11, 317;                            jmp   n756_var_α
.Lx785_0:               .quad            .Lx785_0_s
.Lx785_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_icon_α:
                        mov              r11, 318
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn787:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn787]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458908
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n756_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n754_call_proc_staged_α
n753_call_builtin_icon_β:
                        mov              r11, 318;                            jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        mov              r11, 319
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 960]
                        call             collate_dcα;                         jmp   .Lx789_2
.Lx789_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx789_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
.Lx789_29:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n756_var_α
                                                                              jmp   n755_assign_α
n754_call_proc_staged_β:
                        mov              r11, 319;                            jmp   n756_var_α
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n755_assign_α:          mov              r11, 320
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:             mov              r11, 321
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 776], rax;          jmp   n757_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_integer_α:     mov              r11, 322
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n758_call_proc_staged_α
.Lx793_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n758_call_proc_staged_α:
                        mov              r11, 323
                        lea              rsi, [rsp + 768]
                        lea              rdx, [rsp + 784]
                        call             decollate_dcα;                       jmp   .Lx795_2
.Lx795_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx795_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx795_29:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n761_var_α
                                                                              jmp   n759_call_builtin_icon_α
n758_call_proc_staged_β:
                        mov              r11, 323;                            jmp   n761_var_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_icon_α:
                        mov              r11, 324
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn797:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n761_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n760_call_builtin_icon_α
n759_call_builtin_icon_β:
                        mov              r11, 324;                            jmp   n761_var_α
#-----------------------------------------------------------------------------------------------------------------------
n760_call_builtin_icon_α:
                        mov              r11, 325
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn799:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn799]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n761_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n761_var_α
n760_call_builtin_icon_β:
                        mov              r11, 325;                            jmp   n761_var_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:             mov              r11, 326
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 584], rax;          jmp   n762_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:     mov              r11, 327
                        mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n763_call_proc_staged_α
.Lx802_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        mov              r11, 328
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 592]
                        call             decollate_dcα;                       jmp   .Lx804_2
.Lx804_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx804_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx804_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n766_var_α
                                                                              jmp   n764_call_builtin_icon_α
n763_call_proc_staged_β:
                        mov              r11, 328;                            jmp   n766_var_α
.Lx804_0:               .quad            .Lx804_0_s
.Lx804_0_s:             .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n764_call_builtin_icon_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn806:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n766_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n765_call_builtin_icon_α
n764_call_builtin_icon_β:
                        mov              r11, 329;                            jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_icon_α:
                        mov              r11, 330
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn808:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn808]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n766_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n766_var_α
n765_call_builtin_icon_β:
                        mov              r11, 330;                            jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_α:             mov              r11, 331
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 392], rax;          jmp   n767_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:     mov              r11, 332
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n768_call_proc_staged_α
.Lx811_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        mov              r11, 333
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             decollate_dcα;                       jmp   .Lx813_2
.Lx813_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx813_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx813_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n771_var_α
                                                                              jmp   n769_call_builtin_icon_α
n768_call_proc_staged_β:
                        mov              r11, 333;                            jmp   n771_var_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_icon_α:
                        mov              r11, 334
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn815:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n771_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n770_call_builtin_icon_α
n769_call_builtin_icon_β:
                        mov              r11, 334;                            jmp   n771_var_α
#-----------------------------------------------------------------------------------------------------------------------
n770_call_builtin_icon_α:
                        mov              r11, 335
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn817:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn817]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n771_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n771_var_α
n770_call_builtin_icon_β:
                        mov              r11, 335;                            jmp   n771_var_α
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:             mov              r11, 336
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 200], rax;          jmp   n772_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_integer_α:     mov              r11, 337
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n773_call_proc_staged_α
.Lx820_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n773_call_proc_staged_α:
                        mov              r11, 338
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             decollate_dcα;                       jmp   .Lx822_2
.Lx822_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx822_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx822_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n776_call_proc_staged_α
                                                                              jmp   n774_call_builtin_icon_α
n773_call_proc_staged_β:
                        mov              r11, 338;                            jmp   n776_call_proc_staged_α
.Lx822_0:               .quad            .Lx822_0_s
.Lx822_0_s:             .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n774_call_builtin_icon_α:
                        mov              r11, 339
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn824:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n776_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n775_call_builtin_icon_α
n774_call_builtin_icon_β:
                        mov              r11, 339;                            jmp   n776_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_icon_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn826:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn826]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n776_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n776_call_proc_staged_α
n775_call_builtin_icon_β:
                        mov              r11, 340;                            jmp   n776_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n776_call_proc_staged_α:
                        mov              r11, 341
                        call             perm_dcα;                            jmp   .Lx828_2
.Lx828_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx828_29
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
.Lx828_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n776_call_proc_staged_β:
                        mov              r11, 341;                            jmp   main_ω
.Lx828_0:               .quad            .Lx828_0_s
.Lx828_0_s:             .string          "perm"
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
.Lstartup_pname0:       .string          "collate"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__collate
                        .quad            collate_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3200
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "decollate"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__decollate
                        .quad            decollate_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2128
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "perm"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__perm
                        .quad            perm_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            480
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "permute"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__permute
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
