                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 3296
                        mov              rdi, rsp
                        add              rdi, 2960
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
dofile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:         mov              r11, 1
                        lea              rdi, [rsp + 2960]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n2_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n2_make_list_α:         mov              r11, 3
                        lea              rdi, [rsp + 2944]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n5_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              r11, 6
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn147:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n42_var_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:         mov              r11, 6;                              jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n8_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:        mov              r11, 9
                        mov              qword ptr [rsp + 2160], r13
                        mov              qword ptr [rsp + 2168], r14
                        mov              qword ptr [rsp + 2176], r15
                        mov              rdi, qword ptr [rsp + 2912]
                        mov              rsi, qword ptr [rsp + 2920]
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
                        mov              r14, 0;                              jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              r11, 10
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], -1
                        mov              rax, qword ptr [rip + .Ldofile_α_153_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n10_scan_many_α
.Ldofile_α_153_0:       .quad            .Ldofile_α_153_0_s
.Ldofile_α_153_0_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:        mov              r11, 11
                        mov              eax, r14d
.Ldofile_α_155_0:       cmp              eax, r15d;                           jge   .Ldofile_α_155_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Ldofile_α_155_2]
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
                        pop              rax;                                 je    .Ldofile_α_155_1
                        add              eax, 1;                              jmp   .Ldofile_α_155_0
.Ldofile_α_155_1:       cmp              eax, r14d;                           je    n12_lit_charset_α
                        mov              qword ptr [rsp + 2880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2888], rcx;         jmp   n11_scan_tab_α
n10_scan_many_β:        mov              r11, 11;                             jmp   n12_lit_charset_α
.Ldofile_α_155_2:       .quad            .Ldofile_α_155_2_s
.Ldofile_α_155_2_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:         mov              r11, 12
                        mov              rax, qword ptr [rsp + 2888]
                        cmp              rax, 1;                              jge   .Ldofile_α_157_0
                        add              rax, r15
                        add              rax, 1
.Ldofile_α_157_0:       cmp              rax, 1;                              jl    n12_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n12_lit_charset_α
                        mov              qword ptr [rsp + 2864], r14
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
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n12_lit_charset_α
n11_scan_tab_β:         mov              r11, 12
                        mov              r14, qword ptr [rsp + 2864];         jmp   n12_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:      mov              r11, 13
                        mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], -1
                        mov              rax, qword ptr [rip + .Ldofile_α_158_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n13_scan_many_α
.Ldofile_α_158_0:       .quad            .Ldofile_α_158_0_s
.Ldofile_α_158_0_s:     .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_many_α:        mov              r11, 14
                        mov              eax, r14d
.Ldofile_α_160_0:       cmp              eax, r15d;                           jge   .Ldofile_α_160_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Ldofile_α_160_2]
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
                        pop              rax;                                 je    .Ldofile_α_160_1
                        add              eax, 1;                              jmp   .Ldofile_α_160_0
.Ldofile_α_160_1:       cmp              eax, r14d;                           je    n17_lit_charset_α
                        mov              qword ptr [rsp + 2816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2824], rcx;         jmp   n14_scan_tab_α
n13_scan_many_β:        mov              r11, 14;                             jmp   n17_lit_charset_α
.Ldofile_α_160_2:       .quad            .Ldofile_α_160_2_s
.Ldofile_α_160_2_s:     .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:         mov              r11, 15
                        mov              rax, qword ptr [rsp + 2824]
                        cmp              rax, 1;                              jge   .Ldofile_α_162_0
                        add              rax, r15
                        add              rax, 1
.Ldofile_α_162_0:       cmp              rax, 1;                              jl    n17_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n17_lit_charset_α
                        mov              qword ptr [rsp + 2800], r14
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
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n15_call_icon_α
n14_scan_tab_β:         mov              r11, 15
                        mov              r14, qword ptr [rsp + 2800];         jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_icon_α:        mov              r11, 16
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2760], rax
                        .section         .rodata
.Lrkfn164:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 2752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    n14_scan_tab_β
                                                                              jmp   n16_assign_α
n15_call_icon_β:        mov              r11, 16;                             jmp   n14_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              r11, 18
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], -1
                        mov              rax, qword ptr [rip + .Ldofile_α_166_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n18_scan_many_α
.Ldofile_α_166_0:       .quad            .Ldofile_α_166_0_s
.Ldofile_α_166_0_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_many_α:        mov              r11, 19
                        mov              eax, r14d
.Ldofile_α_168_0:       cmp              eax, r15d;                           jge   .Ldofile_α_168_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Ldofile_α_168_2]
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
                        pop              rax;                                 je    .Ldofile_α_168_1
                        add              eax, 1;                              jmp   .Ldofile_α_168_0
.Ldofile_α_168_1:       cmp              eax, r14d;                           je    n20_lit_integer_α
                        mov              qword ptr [rsp + 2704], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2712], rcx;         jmp   n19_scan_tab_α
n18_scan_many_β:        mov              r11, 19;                             jmp   n20_lit_integer_α
.Ldofile_α_168_2:       .quad            .Ldofile_α_168_2_s
.Ldofile_α_168_2_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:         mov              r11, 20
                        mov              rax, qword ptr [rsp + 2712]
                        cmp              rax, 1;                              jge   .Ldofile_α_170_0
                        add              rax, r15
                        add              rax, 1
.Ldofile_α_170_0:       cmp              rax, 1;                              jl    n20_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n20_lit_integer_α
                        mov              qword ptr [rsp + 2688], r14
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
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n20_lit_integer_α
n19_scan_tab_β:         mov              r11, 20
                        mov              r14, qword ptr [rsp + 2688];         jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_171_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n21_scan_tab_α
.Ldofile_α_171_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:         mov              r11, 22
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Ldofile_α_173_0
                        add              rax, r15
                        add              rax, 1
.Ldofile_α_173_0:       cmp              rax, 1;                              jl    n23_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n23_disjunction_α
                        mov              qword ptr [rsp + 2640], r14
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
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n22_assign_α
n21_scan_tab_β:         mov              r11, 22
                        mov              r14, qword ptr [rsp + 2640];         jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      mov              r11, 24
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n36_var_α
n23_disjunction_as:     mov              r11, 24
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Ldofile_α_176_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n24_conjunction_α
.Ldofile_α_176_0:       cmp              eax, 1;                              jne   .Ldofile_α_176_1
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n24_conjunction_α
.Ldofile_α_176_1:                                                             jmp   n24_conjunction_α
n23_disjunction_β:      mov              r11, 24
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n26_disjunction_β
n23_disjunction_af:     mov              r11, 24
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 1;                              je    n26_disjunction_α
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n25_scan_α
n24_conjunction_β:      mov              r11, 25;                             jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_α:             mov              r11, 26
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2160]
                        mov              r14, qword ptr [rsp + 2168]
                        mov              r15, qword ptr [rsp + 2176];         jmp   n4_var_α
n25_scan_β:             mov              r11, 26;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              r11, 27
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n30_var_α
n26_disjunction_as:     mov              r11, 27
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Ldofile_α_181_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n23_disjunction_as
.Ldofile_α_181_0:       cmp              eax, 1;                              jne   .Ldofile_α_181_1
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n23_disjunction_as
.Ldofile_α_181_1:                                                             jmp   n23_disjunction_as
n26_disjunction_β:      mov              r11, 27
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n41_scan_α
n26_disjunction_af:     mov              r11, 27
                        add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n27_var_α
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n28_var_α
n27_var_β:              mov              r11, 28;                             jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n29_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_icon_α:        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax
                        .section         .rodata
.Lrkfn187:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n41_scan_α
                                                                              jmp   n26_disjunction_as
n29_call_icon_β:        mov              r11, 30;                             jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n31_lit_string_α
n30_var_β:              mov              r11, 31;                             jmp   n26_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 7
                        mov              rax, qword ptr [rip + .Ldofile_α_190_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n32_binop_test_α
.Ldofile_α_190_0:       .quad            .Ldofile_α_190_0_s
.Ldofile_α_190_0_s:     .string          "nothing"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_test_α:       mov              r11, 33
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2520]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n26_disjunction_af
                        mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n35_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_icon_α:        mov              r11, 36
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn197:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n41_scan_α
                                                                              jmp   n26_disjunction_as
n35_call_icon_β:        mov              r11, 36;                             jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n37_lit_string_α
n36_var_β:              mov              r11, 37;                             jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 8
                        mov              rax, qword ptr [rip + .Ldofile_α_200_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n38_binop_test_α
.Ldofile_α_200_0:       .quad            .Ldofile_α_200_0_s
.Ldofile_α_200_0_s:     .string          "overhead"
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              r11, 39
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              rdx, qword ptr [rsp + 2336]
                        mov              rcx, qword ptr [rsp + 2344]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n23_disjunction_af
                        mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n23_disjunction_as
n40_assign_β:           mov              r11, 41;                             jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_α:             mov              r11, 42
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2160]
                        mov              r14, qword ptr [rsp + 2168]
                        mov              r15, qword ptr [rsp + 2176];         jmp   n4_var_α
n41_scan_β:             mov              r11, 42;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             mov              r11, 44
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n44_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_icon_α:        mov              r11, 45
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn211:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 2016]
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
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n45_var_α
                                                                              jmp   n45_var_α
n44_call_icon_β:        mov              r11, 45;                             jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n46_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_214_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n47_call_icon_α
.Ldofile_α_214_0:       .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n47_call_icon_α:        mov              r11, 48
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn216:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1920]
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
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n49_lit_integer_α
                                                                              jmp   n48_call_icon_α
n47_call_icon_β:        mov              r11, 48;                             jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_icon_α:        mov              r11, 49
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn218:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 1872]
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
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n49_lit_integer_α
                                                                              jmp   n49_lit_integer_α
n48_call_icon_β:        mov              r11, 49;                             jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_219_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n50_assign_α
.Ldofile_α_219_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 53
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n53_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n53_iterate_α:          mov              r11, 54
                        mov              qword ptr [rsp + 1792], 0
.Ldofile_α_226_0:       mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n61_var_α
                                                                              jmp   n54_lit_integer_α
n53_iterate_β:          mov              r11, 54
                        inc              qword ptr [rsp + 1792];              jmp   .Ldofile_α_226_0
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_227_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n55_coerce_numeric_α
.Ldofile_α_227_0:       .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              r11, 56
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              al, 5;                               je    .Ldofile_α_229_1
                        cmp              al, 3;                               jne   .Ldofile_α_229_0
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              al, 3;                               jne   .Ldofile_α_229_0
.Ldofile_α_229_1:       mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n56_binop_α
.Ldofile_α_229_0:       lea              rdi, [rsp + 1776]
                        lea              rsi, [rsp + 1824]
                        lea              rdx, [rsp + 1760]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n61_var_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              r11, 58
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Ldofile_α_232_1
                        cmp              al, 3;                               jne   .Ldofile_α_232_0
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              al, 3;                               jne   .Ldofile_α_232_0
.Ldofile_α_232_1:       mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n58_coerce_numeric_α
.Ldofile_α_232_0:       lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 1744]
                        lea              rdx, [rsp + 1712]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   mov              r11, 59
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              al, 5;                               je    .Ldofile_α_234_1
                        cmp              al, 3;                               jne   .Ldofile_α_234_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Ldofile_α_234_0
.Ldofile_α_234_1:       mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n59_binop_α
.Ldofile_α_234_0:       lea              rdi, [rsp + 1744]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 1696]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              r11, 60
                        mov              eax, dword ptr [rsp + 1712]
                        mov              ecx, dword ptr [rsp + 1696]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Ldofile_α_235_2
                        mov              rax, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1704]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1680], 3
                        mov              qword ptr [rsp + 1688], rax;         jmp   .Ldofile_α_235_7
.Ldofile_α_235_2:       and              edx, 1;                              jz    .Ldofile_α_235_0
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdi, qword ptr [rsp + 1704]
                        cmp              al, 5;                               je    .Ldofile_α_235_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldofile_α_235_4
.Ldofile_α_235_3:       movq             xmm0, rsi
.Ldofile_α_235_4:       cmp              cl, 5;                               je    .Ldofile_α_235_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldofile_α_235_6
.Ldofile_α_235_5:       movq             xmm1, rdi
.Ldofile_α_235_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1680], 5
                        mov              qword ptr [rsp + 1688], rax
.Ldofile_α_235_7:                                                             jmp   n60_assign_α
.Ldofile_α_235_0:       mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n61_var_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n53_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 62
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              r11, 63
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n63_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:             mov              r11, 64
                        mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n64_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   mov              r11, 65
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Ldofile_α_243_1
                        cmp              al, 3;                               jne   .Ldofile_α_243_0
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 3;                               jne   .Ldofile_α_243_0
.Ldofile_α_243_1:       mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n65_coerce_numeric_α
.Ldofile_α_243_0:       lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1600]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:   mov              r11, 66
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 5;                               je    .Ldofile_α_245_1
                        cmp              al, 3;                               jne   .Ldofile_α_245_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Ldofile_α_245_0
.Ldofile_α_245_1:       mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n66_binop_α
.Ldofile_α_245_0:       lea              rdi, [rsp + 1632]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 1584]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            mov              r11, 67
                        mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n73_var_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n67_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_icon_α:        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn248:              .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262307
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n73_var_α
                                                                              jmp   n68_lit_real_α
n67_call_icon_β:        mov              r11, 68;                             jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_real_α:         mov              r11, 69
                        mov              qword ptr [rsp + 1664], 5            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_249_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n69_coerce_numeric_α
.Ldofile_α_249_0:       .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              r11, 70
                        mov              eax, dword ptr [rsp + 1520]
                        cmp              al, 5;                               je    .Ldofile_α_251_1
                        cmp              al, 3;                               jne   .Ldofile_α_251_0
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              al, 3;                               jne   .Ldofile_α_251_0
.Ldofile_α_251_1:       mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n70_binop_α
.Ldofile_α_251_0:       lea              rdi, [rsp + 1520]
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1504]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            mov              r11, 71
                        mov              eax, dword ptr [rsp + 1504]
                        mov              ecx, dword ptr [rsp + 1664]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Ldofile_α_252_2
                        mov              rax, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1672]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1488], 3
                        mov              qword ptr [rsp + 1496], rax;         jmp   .Ldofile_α_252_7
.Ldofile_α_252_2:       and              edx, 1;                              jz    .Ldofile_α_252_0
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdi, qword ptr [rsp + 1672]
                        cmp              al, 5;                               je    .Ldofile_α_252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldofile_α_252_4
.Ldofile_α_252_3:       movq             xmm0, rsi
.Ldofile_α_252_4:       cmp              cl, 5;                               je    .Ldofile_α_252_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldofile_α_252_6
.Ldofile_α_252_5:       movq             xmm1, rdi
.Ldofile_α_252_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1488], 5
                        mov              qword ptr [rsp + 1496], rax
.Ldofile_α_252_7:                                                             jmp   n71_call_icon_α
.Ldofile_α_252_0:       mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n73_var_α
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n71_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_icon_α:        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn254:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n73_var_α
                                                                              jmp   n72_assign_α
n71_call_icon_β:        mov              r11, 72;                             jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 75
                        mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_258_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n75_call_icon_α
.Ldofile_α_258_0:       .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n75_call_icon_α:        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn260:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 1360]
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
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n77_var_α
                                                                              jmp   n76_call_icon_α
n75_call_icon_β:        mov              r11, 76;                             jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_icon_α:        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn262:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 1312]
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
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n77_var_α
                                                                              jmp   n77_var_α
n76_call_icon_β:        mov              r11, 77;                             jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 78
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n78_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn266:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n79_assign_α
n78_call_icon_β:        mov              r11, 79;                             jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2976]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 82
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n82_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_unop_α:             mov              r11, 83
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_273_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n84_coerce_numeric_α
.Ldofile_α_273_0:       .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              r11, 85
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              al, 5;                               je    .Ldofile_α_275_1
                        cmp              al, 3;                               jne   .Ldofile_α_275_0
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 3;                               jne   .Ldofile_α_275_0
.Ldofile_α_275_1:       mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n85_binop_α
.Ldofile_α_275_0:       lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1168]
                        lea              rdx, [rsp + 1120]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            mov              r11, 86
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_277_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n87_coerce_numeric_α
.Ldofile_α_277_0:       .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   mov              r11, 88
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              al, 5;                               je    .Ldofile_α_279_1
                        cmp              al, 3;                               jne   .Ldofile_α_279_0
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              al, 3;                               jne   .Ldofile_α_279_0
.Ldofile_α_279_1:       mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n88_binop_α
.Ldofile_α_279_0:       lea              rdi, [rsp + 1104]
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1088]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            mov              r11, 89
                        mov              eax, dword ptr [rsp + 1088]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Ldofile_α_280_2
                        mov              rax, qword ptr [rsp + 1096]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1072], 3
                        mov              qword ptr [rsp + 1080], rax;         jmp   .Ldofile_α_280_7
.Ldofile_α_280_2:       and              edx, 1;                              jz    .Ldofile_α_280_0
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Ldofile_α_280_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldofile_α_280_4
.Ldofile_α_280_3:       movq             xmm0, rsi
.Ldofile_α_280_4:       cmp              cl, 5;                               je    .Ldofile_α_280_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldofile_α_280_6
.Ldofile_α_280_5:       movq             xmm1, rdi
.Ldofile_α_280_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1072], 5
                        mov              qword ptr [rsp + 1080], rax
.Ldofile_α_280_7:                                                             jmp   n89_subscript_α
.Ldofile_α_280_0:       mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n90_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:            mov              r11, 91
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 92
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 93
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Ldofile_α_286_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n94_call_icon_α
.Ldofile_α_286_0:       .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_icon_α:        mov              r11, 95
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 976]
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
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n96_lit_real_α
                                                                              jmp   n95_call_icon_α
n94_call_icon_β:        mov              r11, 95;                             jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_icon_α:        mov              r11, 96
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn290:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 928]
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
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n96_lit_real_α
                                                                              jmp   n96_lit_real_α
n95_call_icon_β:        mov              r11, 96;                             jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_real_α:         mov              r11, 97
                        mov              qword ptr [rsp + 896], 5             # result
                        mov              rax, qword ptr [rip + .Ldofile_α_291_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n97_assign_α
.Ldofile_α_291_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              r11, 99
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 616], rax;          jmp   n99_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n99_iterate_α:          mov              r11, 100
                        mov              qword ptr [rsp + 592], 0
.Ldofile_α_296_0:       mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n00001_kw_icon_α
                                                                              jmp   n00002_assign_α
n99_iterate_β:          mov              r11, 100
                        inc              qword ptr [rsp + 592];               jmp   .Ldofile_α_296_0
#-----------------------------------------------------------------------------------------------------------------------
n00002_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n00003_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           mov              r11, 102
                        mov              qword ptr [rsp + 624], rsp;          jmp   n00004_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00005_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00005_disjunction_α:     mov              r11, 104
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              dword ptr [rsp + 752], 0;            jmp   n00006_var_α
n00005_disjunction_as:    mov              r11, 104
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              jne   .Ldofile_α_303_0
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00007_coerce_numeric_α
.Ldofile_α_303_0:       cmp              eax, 1;                              jne   .Ldofile_α_303_1
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00007_coerce_numeric_α
.Ldofile_α_303_1:                                                             jmp   n00007_coerce_numeric_α
n00005_disjunction_β:     mov              r11, 104
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              je    n00008_unmark_α
                                                                              jmp   n00008_unmark_α
n00005_disjunction_af:    mov              r11, 104
                        add              dword ptr [rsp + 752], 1
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 1;                              je    n00009_var_α
                                                                              jmp   n00008_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00007_coerce_numeric_α:  mov              r11, 105
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Ldofile_α_305_1
                        cmp              al, 3;                               jne   .Ldofile_α_305_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 3;                               jne   .Ldofile_α_305_0
.Ldofile_α_305_1:       mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00010_coerce_numeric_α
.Ldofile_α_305_0:       lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00010_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00010_coerce_numeric_α:  mov              r11, 106
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 5;                               je    .Ldofile_α_307_1
                        cmp              al, 3;                               jne   .Ldofile_α_307_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Ldofile_α_307_0
.Ldofile_α_307_1:       mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00011_binop_α
.Ldofile_α_307_0:       lea              rdi, [rsp + 736]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00011_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_α:           mov              r11, 107
                        mov              eax, dword ptr [rsp + 704]
                        mov              ecx, dword ptr [rsp + 688]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Ldofile_α_308_2
                        mov              rax, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 696]
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Ldofile_α_308_7
.Ldofile_α_308_2:       and              edx, 1;                              jz    .Ldofile_α_308_0
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdi, qword ptr [rsp + 696]
                        cmp              al, 5;                               je    .Ldofile_α_308_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldofile_α_308_4
.Ldofile_α_308_3:       movq             xmm0, rsi
.Ldofile_α_308_4:       cmp              cl, 5;                               je    .Ldofile_α_308_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldofile_α_308_6
.Ldofile_α_308_5:       movq             xmm1, rdi
.Ldofile_α_308_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Ldofile_α_308_7:                                                             jmp   n00012_assign_α
.Ldofile_α_308_0:       mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00012_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00012_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00008_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00013_call_icon_α
n00009_var_β:             mov              r11, 109;                            jmp   n00008_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00013_call_icon_α:       mov              r11, 110
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn313:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n00008_unmark_α
                                                                              jmp   n00005_disjunction_as
n00013_call_icon_β:       mov              r11, 110;                            jmp   n00008_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00014_lit_integer_α
n00006_var_β:             mov              r11, 111;                            jmp   n00005_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Ldofile_α_316_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00015_binop_test_α
.Ldofile_α_316_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_test_α:      mov              r11, 113
                        mov              eax, dword ptr [rsp + 2992]
                        cmp              al, 112;                             je    .Ldofile_α_317_0
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 112;                             je    .Ldofile_α_317_0
                        mov              eax, dword ptr [rsp + 2992]
                        cmp              al, 3;                               jne   .Ldofile_α_317_2
                        mov              eax, dword ptr [rsp + 816]
                        cmp              al, 3;                               jne   .Ldofile_α_317_2
.Ldofile_α_317_1:       mov              rax, qword ptr [rsp + 3000]
                        mov              rcx, qword ptr [rsp + 824]
                        cmp              rax, rcx;                            jg    n00005_disjunction_af
                        mov              rcx, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rcx
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rcx;          jmp   n00016_lit_integer_α
.Ldofile_α_317_0:       mov              rdi, qword ptr [rsp + 2992]
                        mov              rsi, qword ptr [rsp + 3000]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 6
                        lea              r9, [rsp + 784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Ldofile_α_317_1
                        cmp              eax, 1;                              je    n00005_disjunction_af
                                                                              jmp   n00016_lit_integer_α
.Ldofile_α_317_2:       mov              rdi, qword ptr [rsp + 2992]
                        mov              rsi, qword ptr [rsp + 3000]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00005_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00016_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Ldofile_α_318_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00005_disjunction_as
n00016_lit_integer_β:     mov              r11, 114;                            jmp   n00008_unmark_α
.Ldofile_α_318_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00008_unmark_α:          mov              r11, 115
                        mov              rsp, qword ptr [rsp + 624];          jmp   n99_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00001_kw_icon_α:         mov              r11, 116
                        mov              rdi, qword ptr [rip + .Ldofile_α_321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00018_var_α
n00001_kw_icon_β:         mov              r11, 116;                            jmp   n00017_var_α
.Ldofile_α_321_0:       .quad            .Ldofile_α_321_0_s
.Ldofile_α_321_0_s:     .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00019_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00020_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_unop_α:            mov              r11, 119
                        mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00021_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_coerce_numeric_α:  mov              r11, 120
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Ldofile_α_328_1
                        cmp              al, 3;                               jne   .Ldofile_α_328_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 3;                               jne   .Ldofile_α_328_0
.Ldofile_α_328_1:       mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00022_coerce_numeric_α
.Ldofile_α_328_0:       lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00022_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00022_coerce_numeric_α:  mov              r11, 121
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 5;                               je    .Ldofile_α_330_1
                        cmp              al, 3;                               jne   .Ldofile_α_330_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Ldofile_α_330_0
.Ldofile_α_330_1:       mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00023_binop_α
.Ldofile_α_330_0:       lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00023_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_α:           mov              r11, 122
                        mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n00024_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  mov              r11, 123
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 5;                               je    .Ldofile_α_333_1
                        cmp              al, 3;                               jne   .Ldofile_α_333_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 3;                               jne   .Ldofile_α_333_0
.Ldofile_α_333_1:       mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00025_coerce_numeric_α
.Ldofile_α_333_0:       lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00025_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_coerce_numeric_α:  mov              r11, 124
                        mov              eax, dword ptr [rsp + 464]
                        cmp              al, 5;                               je    .Ldofile_α_335_1
                        cmp              al, 3;                               jne   .Ldofile_α_335_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 3;                               jne   .Ldofile_α_335_0
.Ldofile_α_335_1:       mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00026_binop_α
.Ldofile_α_335_0:       lea              rdi, [rsp + 464]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00026_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_α:           mov              r11, 125
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00027_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_real_α:        mov              r11, 126
                        mov              qword ptr [rsp + 560], 5             # result
                        mov              rax, qword ptr [rip + .Ldofile_α_337_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00028_coerce_numeric_α
.Ldofile_α_337_0:       .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n00028_coerce_numeric_α:  mov              r11, 127
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 5;                               je    .Ldofile_α_339_1
                        cmp              al, 3;                               jne   .Ldofile_α_339_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              al, 3;                               jne   .Ldofile_α_339_0
.Ldofile_α_339_1:       mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00029_binop_α
.Ldofile_α_339_0:       lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00029_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_binop_α:           mov              r11, 128
                        mov              eax, dword ptr [rsp + 368]
                        mov              ecx, dword ptr [rsp + 560]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Ldofile_α_340_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 568]
                        add              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Ldofile_α_340_7
.Ldofile_α_340_2:       and              edx, 1;                              jz    .Ldofile_α_340_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rsp + 568]
                        cmp              al, 5;                               je    .Ldofile_α_340_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Ldofile_α_340_4
.Ldofile_α_340_3:       movq             xmm0, rsi
.Ldofile_α_340_4:       cmp              cl, 5;                               je    .Ldofile_α_340_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Ldofile_α_340_6
.Ldofile_α_340_5:       movq             xmm1, rdi
.Ldofile_α_340_6:       addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Ldofile_α_340_7:                                                             jmp   n00030_call_icon_α
.Ldofile_α_340_0:       mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00030_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_call_icon_α:       mov              r11, 129
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn342:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n00017_var_α
                                                                              jmp   n00031_assign_α
n00030_call_icon_β:       mov              r11, 129;                            jmp   n00017_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00017_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00032_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Ldofile_α_346_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00033_call_icon_α
.Ldofile_α_346_0:       .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n00033_call_icon_α:       mov              r11, 133
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn348:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 208]
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
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n00034_lit_string_α
                                                                              jmp   n00035_call_icon_α
n00033_call_icon_β:       mov              r11, 133;                            jmp   n00034_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_call_icon_α:       mov              r11, 134
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn350:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 160]
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
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n00034_lit_string_α
                                                                              jmp   n00034_lit_string_α
n00035_call_icon_β:       mov              r11, 134;                            jmp   n00034_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 3
                        mov              rax, qword ptr [rip + .Ldofile_α_351_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00036_var_α
.Ldofile_α_351_0:       .quad            .Ldofile_α_351_0_s
.Ldofile_α_351_0_s:     .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00037_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_call_icon_α:       mov              r11, 137
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn355:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00038_return_α
                                                                              jmp   n00038_return_α
n00037_call_icon_β:       mov              r11, 137;                            jmp   n00038_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_return_α:          mov              r11, 138
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   dofile_γ
#-----------------------------------------------------------------------------------------------------------------------
dofile_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
dofile_β:
                                                                              jmp   dofile_ω
#-----------------------------------------------------------------------------------------------------------------------
dofile_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 3296;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        add              rsp, 3296;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
dofile_dcα:
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
                        lea              rcx, [rip + .Ldofile_α_357_3]
                        push             rcx
                        lea              rcx, [rip + .Ldofile_α_357_2]
                        push             rcx;                                 jmp   FN__dofile
.Ldofile_α_357_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Ldofile_α_357_3:       add              rsp, 24
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
                        sub              rsp, 816
                        mov              rdi, rsp
                        add              rdi, 688
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 42
                        mov              rax, qword ptr [rip + .Lmain_α_383_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00040_call_icon_α
.Lmain_α_383_0:         .quad            .Lmain_α_383_0_s
.Lmain_α_383_0_s:       .string          "  N ovhead rmserr median  gmean   filename"
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_icon_α:       mov              r11, 140
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn385:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]
                        lea              rsi, [rsp + 640]
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
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n00041_disjunction_α
                                                                              jmp   n00041_disjunction_α
n00040_call_icon_β:       mov              r11, 140;                            jmp   n00041_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_disjunction_α:     mov              r11, 141
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00042_var_α
n00041_disjunction_as:    mov              r11, 141
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lmain_α_387_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   main_γ
.Lmain_α_387_0:         cmp              eax, 1;                              jne   .Lmain_α_387_1
                                                                              jmp   main_γ
.Lmain_α_387_1:                                                               jmp   main_γ
n00041_disjunction_β:     mov              r11, 141
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00043_goto_β
n00041_disjunction_af:    mov              r11, 141
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00044_var_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:             mov              r11, 142
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00045_call_icon_α
n00044_var_β:             mov              r11, 142;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00045_call_icon_α:       mov              r11, 143
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn391:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00046_assign_α
n00045_call_icon_β:       mov              r11, 143;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00047_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_disjunction_α:     mov              r11, 145
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              dword ptr [rsp + 448], 0;            jmp   n00048_var_α
n00047_disjunction_as:    mov              r11, 145
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 0;                              jne   .Lmain_α_394_0
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00049_assign_α
.Lmain_α_394_0:         cmp              eax, 1;                              jne   .Lmain_α_394_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00049_assign_α
.Lmain_α_394_1:                                                               jmp   n00049_assign_α
n00047_disjunction_β:     mov              r11, 145
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 0;                              je    n00047_disjunction_af
                                                                              jmp   n00047_disjunction_af
n00047_disjunction_af:    mov              r11, 145
                        add              dword ptr [rsp + 448], 1
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 1;                              je    n00050_lit_string_α
                                                                              jmp   n00051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00053_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_proc_staged_α:
                        mov              r11, 149
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 416]
                        call             dofile_dcα;                          jmp   .Lmain_α_401_2
.Lmain_α_401_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_401_29
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
.Lmain_α_401_29:        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n00044_var_α
                                                                              jmp   n00054_conjunction_α
n00053_call_proc_staged_β:
                        mov              r11, 149;                            jmp   n00044_var_α
.Lmain_β_401_0:         .quad            .Lmain_β_401_0_s
.Lmain_β_401_0_s:       .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
n00054_conjunction_α:     mov              r11, 150
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00044_var_α
n00054_conjunction_β:     mov              r11, 150;                            jmp   n00044_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_goto_α:            mov              r11, 151;                            jmp   n00044_var_α
n00043_goto_β:            mov              r11, 151;                            jmp   n00044_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 12
                        mov              rax, qword ptr [rip + .Lmain_α_404_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00055_var_α
n00050_lit_string_β:      mov              r11, 152;                            jmp   n00047_disjunction_af
.Lmain_α_404_0:         .quad            .Lmain_α_404_0_s
.Lmain_α_404_0_s:       .string          "cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              r11, 153
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00056_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_call_icon_α:       mov              r11, 154
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn408:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n00047_disjunction_af
                                                                              jmp   n00047_disjunction_as
n00056_call_icon_β:       mov              r11, 154;                            jmp   n00047_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00057_call_icon_α
n00048_var_β:             mov              r11, 155;                            jmp   n00047_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00057_call_icon_α:       mov              r11, 156
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn412:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n00047_disjunction_af
                                                                              jmp   n00047_disjunction_as
n00057_call_icon_β:       mov              r11, 156;                            jmp   n00047_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00058_unop_α
n00042_var_β:             mov              r11, 157;                            jmp   n00041_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00058_unop_α:            mov              r11, 158
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
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00059_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_416_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00060_binop_test_α
.Lmain_α_416_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00060_binop_test_α:      mov              r11, 160
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 112;                             je    .Lmain_α_417_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 112;                             je    .Lmain_α_417_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              al, 3;                               jne   .Lmain_α_417_2
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lmain_α_417_2
.Lmain_α_417_1:         mov              rax, qword ptr [rsp + 200]
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              rax, rcx;                            jne   n00041_disjunction_af
                        mov              rcx, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rcx
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rcx;          jmp   n00061_kw_icon_α
.Lmain_α_417_0:         mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 9
                        lea              r9, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lmain_α_417_1
                        cmp              eax, 1;                              je    n00041_disjunction_af
                                                                              jmp   n00061_kw_icon_α
.Lmain_α_417_2:         mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00041_disjunction_af
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00061_kw_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_kw_icon_α:         mov              r11, 161
                        mov              rdi, qword ptr [rip + .Lmain_α_418_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00062_lit_string_α
n00061_kw_icon_β:         mov              r11, 161;                            jmp   main_ω
.Lmain_α_418_0:         .quad            .Lmain_α_418_0_s
.Lmain_α_418_0_s:       .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 5
                        mov              rax, qword ptr [rip + .Lmain_α_419_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00063_call_proc_staged_α
.Lmain_α_419_0:         .quad            .Lmain_α_419_0_s
.Lmain_α_419_0_s:       .string          "stdin"
#-----------------------------------------------------------------------------------------------------------------------
n00063_call_proc_staged_α:
                        mov              r11, 163
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 160]
                        call             dofile_dcα;                          jmp   .Lmain_α_421_2
.Lmain_α_421_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_421_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lmain_α_421_29:        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00041_disjunction_as
n00063_call_proc_staged_β:
                        mov              r11, 163;                            jmp   main_ω
.Lmain_β_421_0:         .quad            .Lmain_β_421_0_s
.Lmain_β_421_0_s:       .string          "dofile"
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__dofile
                        .quad            dofile_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3088
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
