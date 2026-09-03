                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 3440
                        mov              rdi, rsp
                        add              rdi, 3056
                        xor              eax, eax
                        mov              ecx, 128
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
                        mov              esi, 2
                        mov              edx, 11
                        call             rt_icn_zframe_args_install@PLT
dofile_α_body:
                        .type            n0_make_list_bx, @function
n0_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:         mov              r11, 1
                        lea              rdi, [rsp + 3056]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n1_assign_α
                        .size            n0_make_list_bx, .-n0_make_list_bx
                        .type            n1_assign_bx, @function
n1_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              r11, 2
                        mov              rax, qword ptr [rsp + 3040]
                        mov              rdx, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx;         jmp   n2_make_list_α
                        .size            n1_assign_bx, .-n1_assign_bx
                        .type            n2_make_list_bx, @function
n2_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_make_list_α:         mov              r11, 3
                        lea              rdi, [rsp + 3040]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx;         jmp   n3_assign_α
                        .size            n2_make_list_bx, .-n2_make_list_bx
                        .type            n3_assign_bx, @function
n3_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 3024]
                        mov              rdx, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n4_var_α
                        .size            n3_assign_bx, .-n3_assign_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n5_call_icon_α
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              r11, 6
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn147:  .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn147]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n42_var_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:         mov              r11, 6;                              jmp   n42_var_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx;         jmp   n7_var_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n8_scan_enter_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_scan_enter_bx, @function
n8_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:        mov              r11, 9
                        mov              qword ptr [rsp + 2176], r13
                        mov              qword ptr [rsp + 2184], r14
                        mov              qword ptr [rsp + 2192], r15
                        mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n9_lit_charset_α
                        .size            n8_scan_enter_bx, .-n8_scan_enter_bx
                        .type            n9_lit_charset_bx, @function
n9_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              r11, 10
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_153_0]
                        mov              qword ptr [rsp + 2984], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_153_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n10_scan_many_α
.Llit_charset_α_153_0:  .quad            .Llit_charset_α_153_0_s
.Llit_charset_α_153_0_s:
                        .string          " "
                        .size            n9_lit_charset_bx, .-n9_lit_charset_bx
                        .type            n10_scan_many_bx, @function
n10_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:        mov              r11, 11
                        mov              eax, r14d
.Lscan_many_α_155_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_155_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_155_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_155_1
                        add              eax, 1;                              jmp   .Lscan_many_α_155_0
.Lscan_many_α_155_1:    cmp              eax, r14d;                           je    n12_lit_charset_α
                        mov              qword ptr [rsp + 2960], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2968], rcx;         jmp   n11_scan_tab_α
n10_scan_many_β:        mov              r11, 11;                             jmp   n12_lit_charset_α
.Lscan_many_α_155_2:    .quad            .Lscan_many_α_155_2_s
.Lscan_many_α_155_2_s:  .string          " "
                        .size            n10_scan_many_bx, .-n10_scan_many_bx
                        .type            n11_scan_tab_bx, @function
n11_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:         mov              r11, 12
                        mov              rax, qword ptr [rsp + 2968]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_157_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_157_0:     cmp              rax, 1;                              jl    n12_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n12_lit_charset_α
                        mov              qword ptr [rsp + 2944], r14
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n12_lit_charset_α
n11_scan_tab_β:         mov              r11, 12
                        mov              r14, qword ptr [rsp + 2944];         jmp   n12_lit_charset_α
                        .size            n11_scan_tab_bx, .-n11_scan_tab_bx
                        .type            n12_lit_charset_bx, @function
n12_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:      mov              r11, 13
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_158_0]
                        mov              qword ptr [rsp + 2904], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_158_0]
                        mov              rsi, 11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n13_scan_many_α
.Llit_charset_α_158_0:  .quad            .Llit_charset_α_158_0_s
.Llit_charset_α_158_0_s:
                        .string          "-0123456789"
                        .size            n12_lit_charset_bx, .-n12_lit_charset_bx
                        .type            n13_scan_many_bx, @function
n13_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_many_α:        mov              r11, 14
                        mov              eax, r14d
.Lscan_many_α_160_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_160_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_160_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_160_1
                        add              eax, 1;                              jmp   .Lscan_many_α_160_0
.Lscan_many_α_160_1:    cmp              eax, r14d;                           je    n17_lit_charset_α
                        mov              qword ptr [rsp + 2880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2888], rcx;         jmp   n14_scan_tab_α
n13_scan_many_β:        mov              r11, 14;                             jmp   n17_lit_charset_α
.Lscan_many_α_160_2:    .quad            .Lscan_many_α_160_2_s
.Lscan_many_α_160_2_s:  .string          "-0123456789"
                        .size            n13_scan_many_bx, .-n13_scan_many_bx
                        .type            n14_scan_tab_bx, @function
n14_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:         mov              r11, 15
                        mov              rax, qword ptr [rsp + 2888]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_162_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_162_0:     cmp              rax, 1;                              jl    n17_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n17_lit_charset_α
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n15_call_icon_α
n14_scan_tab_β:         mov              r11, 15
                        mov              r14, qword ptr [rsp + 2864];         jmp   n17_lit_charset_α
                        .size            n14_scan_tab_bx, .-n14_scan_tab_bx
                        .type            n15_call_icon_bx, @function
n15_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_icon_α:        mov              r11, 16
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn164:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn164]
                        lea              rsi, [rsp + 2816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n14_scan_tab_β
                                                                              jmp   n16_assign_α
n15_call_icon_β:        mov              r11, 16;                             jmp   n14_scan_tab_β
                        .size            n15_call_icon_bx, .-n15_call_icon_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 2800]
                        mov              rdx, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n17_lit_charset_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_lit_charset_bx, @function
n17_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              r11, 18
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_166_0]
                        mov              qword ptr [rsp + 2776], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_166_0]
                        mov              rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdx
                        pop              rax;                                 jmp   n18_scan_many_α
.Llit_charset_α_166_0:  .quad            .Llit_charset_α_166_0_s
.Llit_charset_α_166_0_s:
                        .string          " "
                        .size            n17_lit_charset_bx, .-n17_lit_charset_bx
                        .type            n18_scan_many_bx, @function
n18_scan_many_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_many_α:        mov              r11, 19
                        mov              eax, r14d
.Lscan_many_α_168_0:    cmp              eax, r15d;                           jge   .Lscan_many_α_168_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lscan_many_α_168_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lscan_many_α_168_1
                        add              eax, 1;                              jmp   .Lscan_many_α_168_0
.Lscan_many_α_168_1:    cmp              eax, r14d;                           je    n20_lit_integer_α
                        mov              qword ptr [rsp + 2752], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2760], rcx;         jmp   n19_scan_tab_α
n18_scan_many_β:        mov              r11, 19;                             jmp   n20_lit_integer_α
.Lscan_many_α_168_2:    .quad            .Lscan_many_α_168_2_s
.Lscan_many_α_168_2_s:  .string          " "
                        .size            n18_scan_many_bx, .-n18_scan_many_bx
                        .type            n19_scan_tab_bx, @function
n19_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:         mov              r11, 20
                        mov              rax, qword ptr [rsp + 2760]
                        cmp              rax, 1;                              jge   .Lscan_tab_α_170_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_170_0:     cmp              rax, 1;                              jl    n20_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n20_lit_integer_α
                        mov              qword ptr [rsp + 2736], r14
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n20_lit_integer_α
n19_scan_tab_β:         mov              r11, 20
                        mov              r14, qword ptr [rsp + 2736];         jmp   n20_lit_integer_α
                        .size            n19_scan_tab_bx, .-n19_scan_tab_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n21_scan_tab_α
.Llit_integer_α_171_0:  .quad            0
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_scan_tab_bx, @function
n21_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:         mov              r11, 22
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_173_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_173_0:     cmp              rax, 1;                              jl    n23_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n23_disjunction_α
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n22_assign_α
n21_scan_tab_β:         mov              r11, 22
                        mov              r14, qword ptr [rsp + 2688];         jmp   n23_disjunction_α
                        .size            n21_scan_tab_bx, .-n21_scan_tab_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n23_disjunction_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_disjunction_bx, @function
n23_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      mov              r11, 24
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              dword ptr [rsp + 2272], 0;           jmp   n36_var_α
.Ldisjunction_γ_23_as:  mov              r11, 24
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_176_0
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n24_conjunction_α
.Ldisjunction_α_176_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_176_1
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n24_conjunction_α
.Ldisjunction_α_176_1:                                                        jmp   n24_conjunction_α
n23_disjunction_β:      mov              r11, 24
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n26_disjunction_β
.Ldisjunction_γ_23_af:  mov              r11, 24
.Ldisjunction_ω_23_af:  mov              r11, 24
                        add              dword ptr [rsp + 2272], 1
                        mov              eax, dword ptr [rsp + 2272]
                        cmp              eax, 1;                              je    n26_disjunction_α
                                                                              jmp   n41_scan_α
                        .size            n23_disjunction_bx, .-n23_disjunction_bx
                        .type            n24_conjunction_bx, @function
n24_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n25_scan_α
n24_conjunction_β:      mov              r11, 25;                             jmp   n41_scan_α
                        .size            n24_conjunction_bx, .-n24_conjunction_bx
                        .type            n25_scan_bx, @function
n25_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_α:             mov              r11, 26
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2176]
                        mov              r14, qword ptr [rsp + 2184]
                        mov              r15, qword ptr [rsp + 2192];         jmp   n4_var_α
n25_scan_β:             mov              r11, 26
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n23_disjunction_β
                                                                              jmp   n4_var_α
                        .size            n25_scan_bx, .-n25_scan_bx
                        .type            n26_disjunction_bx, @function
n26_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              r11, 27
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              dword ptr [rsp + 2400], 0;           jmp   n30_var_α
.Ldisjunction_γ_26_as:  mov              r11, 27
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_181_0
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax;         jmp   .Ldisjunction_γ_23_as
.Ldisjunction_α_181_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_181_1
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2392], rax;         jmp   .Ldisjunction_γ_23_as
.Ldisjunction_α_181_1:                                                        jmp   .Ldisjunction_γ_23_as
n26_disjunction_β:      mov              r11, 27
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n41_scan_α
.Ldisjunction_γ_26_af:  mov              r11, 27
.Ldisjunction_ω_26_af:  mov              r11, 27
                        add              dword ptr [rsp + 2400], 1
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 1;                              je    n27_var_α
                                                                              jmp   n41_scan_α
                        .size            n26_disjunction_bx, .-n26_disjunction_bx
                        .type            n27_var_bx, @function
n27_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n28_var_α
n27_var_β:              mov              r11, 28;                             jmp   n41_scan_α
                        .size            n27_var_bx, .-n27_var_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n29_call_icon_α
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_call_icon_bx, @function
n29_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_icon_α:        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lcall_icon_α_rkfn187:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn187]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n41_scan_α
                                                                              jmp   .Ldisjunction_γ_26_as
n29_call_icon_β:        mov              r11, 30;                             jmp   n41_scan_α
                        .size            n29_call_icon_bx, .-n29_call_icon_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n31_lit_string_α
n30_var_β:              mov              r11, 31;                             jmp   .Ldisjunction_ω_26_af
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_string_bx, @function
n31_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_190_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n32_binop_test_α
.Llit_string_α_190_0:   .quad            .Llit_string_α_190_0_s
.Llit_string_α_190_0_s: .string          "nothing"
                        .size            n31_lit_string_bx, .-n31_lit_string_bx
                        .type            n32_binop_test_bx, @function
n32_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_test_α:       mov              r11, 33
                        mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_26_af
                        mov              rdi, qword ptr [rsp + 2544]
                        mov              rsi, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_var_α
                        .size            n32_binop_test_bx, .-n32_binop_test_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n34_var_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n35_call_icon_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_call_icon_bx, @function
n35_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_icon_α:        mov              r11, 36
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn197:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn197]
                        lea              rsi, [rsp + 2432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n41_scan_α
                                                                              jmp   .Ldisjunction_γ_26_as
n35_call_icon_β:        mov              r11, 36;                             jmp   n41_scan_α
                        .size            n35_call_icon_bx, .-n35_call_icon_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n37_lit_string_α
n36_var_β:              mov              r11, 37;                             jmp   .Ldisjunction_ω_23_af
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n38_binop_test_α
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "overhead"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_binop_test_bx, @function
n38_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              r11, 39
                        mov              rdi, qword ptr [rsp + 3168]
                        mov              rsi, qword ptr [rsp + 3176]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_23_af
                        mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_var_α
                        .size            n38_binop_test_bx, .-n38_binop_test_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n40_assign_α
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_assign_bx, @function
n40_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   .Ldisjunction_γ_23_as
n40_assign_β:           mov              r11, 41;                             jmp   n41_scan_α
                        .size            n40_assign_bx, .-n40_assign_bx
                        .type            n41_scan_bx, @function
n41_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_α:             mov              r11, 42
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2176]
                        mov              r14, qword ptr [rsp + 2184]
                        mov              r15, qword ptr [rsp + 2192];         jmp   n4_var_α
n41_scan_β:             mov              r11, 42;                             jmp   n4_var_α
                        .size            n41_scan_bx, .-n41_scan_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n43_unop_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_unop_bx, @function
n43_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             mov              r11, 44
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n44_call_icon_α
                        .size            n43_unop_bx, .-n43_unop_bx
                        .type            n44_call_icon_bx, @function
n44_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_icon_α:        mov              r11, 45
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lcall_icon_α_rkfn211:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn211]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n45_var_α
                                                                              jmp   n45_var_α
n44_call_icon_β:        mov              r11, 45;                             jmp   n45_var_α
                        .size            n44_call_icon_bx, .-n44_call_icon_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n46_lit_integer_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rsp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n47_call_icon_α
.Llit_integer_α_214_0:  .quad            7
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_call_icon_bx, @function
n47_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_icon_α:        mov              r11, 48
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        .section         .rodata
.Lcall_icon_α_rkfn216:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn216]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n49_lit_integer_α
                                                                              jmp   n48_call_icon_α
n47_call_icon_β:        mov              r11, 48;                             jmp   n49_lit_integer_α
                        .size            n47_call_icon_bx, .-n47_call_icon_bx
                        .type            n48_call_icon_bx, @function
n48_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_icon_α:        mov              r11, 49
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lcall_icon_α_rkfn218:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn218]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n49_lit_integer_α
                                                                              jmp   n49_lit_integer_α
n48_call_icon_β:        mov              r11, 49;                             jmp   n49_lit_integer_α
                        .size            n48_call_icon_bx, .-n48_call_icon_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n50_assign_α
.Llit_integer_α_219_0:  .quad            0
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 1856]
                        mov              rdx, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n51_var_α
                        .size            n50_assign_bx, .-n50_assign_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n52_var_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 53
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n53_iterate_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_iterate_bx, @function
n53_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_iterate_α:          mov              r11, 54
                        mov              qword ptr [rsp + 1808], 0
.Literate_α_226_0:      mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n61_var_α
                                                                              jmp   n54_lit_integer_α
n53_iterate_β:          mov              r11, 54
                        inc              qword ptr [rsp + 1808];              jmp   .Literate_α_226_0
                        .size            n53_iterate_bx, .-n53_iterate_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n55_coerce_numeric_α
.Llit_integer_α_227_0:  .quad            2
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              r11, 56
                        mov              eax, dword ptr [rsp + 1792]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_229_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
.Lcoerce_numeric_α_229_1:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n56_binop_α
.Lcoerce_numeric_α_229_0:
                        lea              rdi, [rsp + 1792]
                        lea              rsi, [rsp + 1840]
                        lea              rdx, [rsp + 1776]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_binop_α
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_binop_bx, @function
n56_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n61_var_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n57_coerce_numeric_α
                        .size            n56_binop_bx, .-n56_binop_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              r11, 58
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_232_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
.Lcoerce_numeric_α_232_1:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n58_coerce_numeric_α
.Lcoerce_numeric_α_232_0:
                        lea              rdi, [rsp + 3056]
                        lea              rsi, [rsp + 1760]
                        lea              rdx, [rsp + 1728]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_coerce_numeric_α
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_coerce_numeric_bx, @function
n58_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   mov              r11, 59
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_234_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
.Lcoerce_numeric_α_234_1:
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n59_binop_α
.Lcoerce_numeric_α_234_0:
                        lea              rdi, [rsp + 1760]
                        lea              rsi, [rsp + 3056]
                        lea              rdx, [rsp + 1712]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_binop_α
                        .size            n58_coerce_numeric_bx, .-n58_coerce_numeric_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              r11, 60
                        mov              eax, dword ptr [rsp + 1728]
                        mov              ecx, dword ptr [rsp + 1712]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_235_2
                        mov              rax, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1720]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1696], 3
                        mov              qword ptr [rsp + 1704], rax;         jmp   .Lbinop_α_235_7
.Lbinop_α_235_2:        and              edx, 1;                              jz    .Lbinop_α_235_0
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdi, qword ptr [rsp + 1720]
                        cmp              al, 5;                               je    .Lbinop_α_235_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_235_4
.Lbinop_α_235_3:        movq             xmm0, rsi
.Lbinop_α_235_4:        cmp              cl, 5;                               je    .Lbinop_α_235_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_235_6
.Lbinop_α_235_5:        movq             xmm1, rdi
.Lbinop_α_235_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1696], 5
                        mov              qword ptr [rsp + 1704], rax
.Lbinop_α_235_7:                                                              jmp   n60_assign_α
.Lbinop_α_235_0:        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n61_var_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n60_assign_α
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n53_iterate_β
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 62
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n62_var_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              r11, 63
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n63_unop_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_unop_bx, @function
n63_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:             mov              r11, 64
                        mov              rdi, qword ptr [rsp + 3104]
                        mov              rsi, qword ptr [rsp + 3112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n64_coerce_numeric_α
                        .size            n63_unop_bx, .-n63_unop_bx
                        .type            n64_coerce_numeric_bx, @function
n64_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   mov              r11, 65
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_243_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_243_0
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_243_0
.Lcoerce_numeric_α_243_1:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n65_coerce_numeric_α
.Lcoerce_numeric_α_243_0:
                        lea              rdi, [rsp + 3056]
                        lea              rsi, [rsp + 1648]
                        lea              rdx, [rsp + 1616]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_coerce_numeric_α
                        .size            n64_coerce_numeric_bx, .-n64_coerce_numeric_bx
                        .type            n65_coerce_numeric_bx, @function
n65_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:   mov              r11, 66
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_245_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
.Lcoerce_numeric_α_245_1:
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n66_binop_α
.Lcoerce_numeric_α_245_0:
                        lea              rdi, [rsp + 1648]
                        lea              rsi, [rsp + 3056]
                        lea              rdx, [rsp + 1600]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_binop_α
                        .size            n65_coerce_numeric_bx, .-n65_coerce_numeric_bx
                        .type            n66_binop_bx, @function
n66_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            mov              r11, 67
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              rcx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n73_var_α
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n67_call_icon_α
                        .size            n66_binop_bx, .-n66_binop_bx
                        .type            n67_call_icon_bx, @function
n67_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_icon_α:        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        .section         .rodata
.Lcall_icon_α_rkfn248:  .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn248]
                        lea              rsi, [rsp + 1552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262307
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n73_var_α
                                                                              jmp   n68_lit_real_α
n67_call_icon_β:        mov              r11, 68;                             jmp   n73_var_α
                        .size            n67_call_icon_bx, .-n67_call_icon_bx
                        .type            n68_lit_real_bx, @function
n68_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_real_α:         mov              r11, 69
                        mov              qword ptr [rsp + 1680], 5            # result
                        mov              rax, qword ptr [rip + .Llit_real_α_249_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n69_coerce_numeric_α
.Llit_real_α_249_0:     .quad            4602678819172646912
                        .size            n68_lit_real_bx, .-n68_lit_real_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              r11, 70
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_251_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
.Lcoerce_numeric_α_251_1:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n70_binop_α
.Lcoerce_numeric_α_251_0:
                        lea              rdi, [rsp + 1536]
                        lea              rsi, [rsp + 1680]
                        lea              rdx, [rsp + 1520]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_binop_α
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_binop_bx, @function
n70_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            mov              r11, 71
                        mov              eax, dword ptr [rsp + 1520]
                        mov              ecx, dword ptr [rsp + 1680]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_252_2
                        mov              rax, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1688]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1504], 3
                        mov              qword ptr [rsp + 1512], rax;         jmp   .Lbinop_α_252_7
.Lbinop_α_252_2:        and              edx, 1;                              jz    .Lbinop_α_252_0
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdi, qword ptr [rsp + 1688]
                        cmp              al, 5;                               je    .Lbinop_α_252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_252_4
.Lbinop_α_252_3:        movq             xmm0, rsi
.Lbinop_α_252_4:        cmp              cl, 5;                               je    .Lbinop_α_252_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_252_6
.Lbinop_α_252_5:        movq             xmm1, rdi
.Lbinop_α_252_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1504], 5
                        mov              qword ptr [rsp + 1512], rax
.Lbinop_α_252_7:                                                              jmp   n71_call_icon_α
.Lbinop_α_252_0:        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n73_var_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n71_call_icon_α
                        .size            n70_binop_bx, .-n70_binop_bx
                        .type            n71_call_icon_bx, @function
n71_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_icon_α:        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lcall_icon_α_rkfn254:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn254]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n73_var_α
                                                                              jmp   n72_assign_α
n71_call_icon_β:        mov              r11, 72;                             jmp   n73_var_α
                        .size            n71_call_icon_bx, .-n71_call_icon_bx
                        .type            n72_assign_bx, @function
n72_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n73_var_α
                        .size            n72_assign_bx, .-n72_assign_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n74_lit_integer_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 75
                        mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n75_call_icon_α
.Llit_integer_α_258_0:  .quad            7
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_call_icon_bx, @function
n75_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_icon_α:        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lcall_icon_α_rkfn260:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn260]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n77_var_α
                                                                              jmp   n76_call_icon_α
n75_call_icon_β:        mov              r11, 76;                             jmp   n77_var_α
                        .size            n75_call_icon_bx, .-n75_call_icon_bx
                        .type            n76_call_icon_bx, @function
n76_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_icon_α:        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lcall_icon_α_rkfn262:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn262]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n77_var_α
                                                                              jmp   n77_var_α
n76_call_icon_β:        mov              r11, 77;                             jmp   n77_var_α
                        .size            n76_call_icon_bx, .-n76_call_icon_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 78
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n78_call_icon_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lcall_icon_α_rkfn266:  .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn266]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n80_var_ref_α
                                                                              jmp   n79_assign_α
n78_call_icon_β:        mov              r11, 79;                             jmp   n80_var_ref_α
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n80_var_ref_α
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3072]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n81_var_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 82
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n82_unop_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_unop_bx, @function
n82_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_unop_α:             mov              r11, 83
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n83_lit_integer_α
                        .size            n82_unop_bx, .-n82_unop_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n84_coerce_numeric_α
.Llit_integer_α_273_0:  .quad            2
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_coerce_numeric_bx, @function
n84_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              r11, 85
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_275_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
.Lcoerce_numeric_α_275_1:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n85_binop_α
.Lcoerce_numeric_α_275_0:
                        lea              rdi, [rsp + 1152]
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1136]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_binop_α
                        .size            n84_coerce_numeric_bx, .-n84_coerce_numeric_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            mov              r11, 86
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n86_lit_integer_α
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n87_coerce_numeric_α
.Llit_integer_α_277_0:  .quad            1
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_coerce_numeric_bx, @function
n87_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   mov              r11, 88
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_279_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
                        mov              eax, dword ptr [rsp + 1200]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
.Lcoerce_numeric_α_279_1:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n88_binop_α
.Lcoerce_numeric_α_279_0:
                        lea              rdi, [rsp + 1120]
                        lea              rsi, [rsp + 1200]
                        lea              rdx, [rsp + 1104]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_binop_α
                        .size            n87_coerce_numeric_bx, .-n87_coerce_numeric_bx
                        .type            n88_binop_bx, @function
n88_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            mov              r11, 89
                        mov              eax, dword ptr [rsp + 1104]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_280_2
                        mov              rax, qword ptr [rsp + 1112]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1088], 3
                        mov              qword ptr [rsp + 1096], rax;         jmp   .Lbinop_α_280_7
.Lbinop_α_280_2:        and              edx, 1;                              jz    .Lbinop_α_280_0
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_280_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_280_4
.Lbinop_α_280_3:        movq             xmm0, rsi
.Lbinop_α_280_4:        cmp              cl, 5;                               je    .Lbinop_α_280_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_280_6
.Lbinop_α_280_5:        movq             xmm1, rdi
.Lbinop_α_280_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1088], 5
                        mov              qword ptr [rsp + 1096], rax
.Lbinop_α_280_7:                                                              jmp   n89_subscript_α
.Lbinop_α_280_0:        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n89_subscript_α
                        .size            n88_binop_bx, .-n88_binop_bx
                        .type            n89_subscript_bx, @function
n89_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n90_deref_α
                        .size            n89_subscript_bx, .-n89_subscript_bx
                        .type            n90_deref_bx, @function
n90_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:            mov              r11, 91
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n92_var_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n91_assign_α
                        .size            n90_deref_bx, .-n90_deref_bx
                        .type            n91_assign_bx, @function
n91_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 92
                        mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n92_var_α
                        .size            n91_assign_bx, .-n91_assign_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 93
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n93_lit_integer_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_286_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n94_call_icon_α
.Llit_integer_α_286_0:  .quad            7
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_call_icon_bx, @function
n94_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_icon_α:        mov              r11, 95
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn288:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn288]
                        lea              rsi, [rsp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n96_lit_real_α
                                                                              jmp   n95_call_icon_α
n94_call_icon_β:        mov              r11, 95;                             jmp   n96_lit_real_α
                        .size            n94_call_icon_bx, .-n94_call_icon_bx
                        .type            n95_call_icon_bx, @function
n95_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_icon_α:        mov              r11, 96
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lcall_icon_α_rkfn290:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn290]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n96_lit_real_α
                                                                              jmp   n96_lit_real_α
n95_call_icon_β:        mov              r11, 96;                             jmp   n96_lit_real_α
                        .size            n95_call_icon_bx, .-n95_call_icon_bx
                        .type            n96_lit_real_bx, @function
n96_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_real_α:         mov              r11, 97
                        mov              qword ptr [rsp + 912], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_291_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n97_assign_α
.Llit_real_α_291_0:     .quad            0
                        .size            n96_lit_real_bx, .-n96_lit_real_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              r11, 98
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n98_var_α
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              r11, 99
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 632], rax;          jmp   n99_iterate_α
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_iterate_bx, @function
n99_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_iterate_α:          mov              r11, 100
                        mov              qword ptr [rsp + 608], 0
.Literate_α_296_0:      mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n00001_kw_icon_α
                                                                              jmp   n00002_assign_α
n99_iterate_β:          mov              r11, 100
                        inc              qword ptr [rsp + 608];               jmp   .Literate_α_296_0
                        .size            n99_iterate_bx, .-n99_iterate_bx
                        .type            n00002_assign_bx, @function
n00002_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n00003_bound_α
                        .size            n00002_assign_bx, .-n00002_assign_bx
                        .type            n00003_bound_bx, @function
n00003_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_bound_α:           mov              r11, 102
                        mov              qword ptr [rsp + 640], rsp;          jmp   n00004_var_α
                        .size            n00003_bound_bx, .-n00003_bound_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00005_disjunction_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00005_disjunction_bx, @function
n00005_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_disjunction_α:     mov              r11, 104
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              dword ptr [rsp + 768], 0;            jmp   n00006_var_α
.Ldisjunction_γ_103_as: mov              r11, 104
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_303_0
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00007_coerce_numeric_α
.Ldisjunction_α_303_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_303_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00007_coerce_numeric_α
.Ldisjunction_α_303_1:                                                        jmp   n00007_coerce_numeric_α
n00005_disjunction_β:     mov              r11, 104
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 0;                              je    n00008_unmark_α
                                                                              jmp   n00008_unmark_α
.Ldisjunction_γ_103_af: mov              r11, 104
.Ldisjunction_ω_103_af: mov              r11, 104
                        add              dword ptr [rsp + 768], 1
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 1;                              je    n00009_var_α
                                                                              jmp   n00008_unmark_α
                        .size            n00005_disjunction_bx, .-n00005_disjunction_bx
                        .type            n00007_coerce_numeric_bx, @function
n00007_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_coerce_numeric_α:  mov              r11, 105
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_305_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_305_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_305_0
.Lcoerce_numeric_α_305_1:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00010_coerce_numeric_α
.Lcoerce_numeric_α_305_0:
                        lea              rdi, [rsp + 3056]
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 720]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00010_coerce_numeric_α
                        .size            n00007_coerce_numeric_bx, .-n00007_coerce_numeric_bx
                        .type            n00010_coerce_numeric_bx, @function
n00010_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_coerce_numeric_α:  mov              r11, 106
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_307_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_307_0
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_307_0
.Lcoerce_numeric_α_307_1:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00011_binop_α
.Lcoerce_numeric_α_307_0:
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 3056]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00011_binop_α
                        .size            n00010_coerce_numeric_bx, .-n00010_coerce_numeric_bx
                        .type            n00011_binop_bx, @function
n00011_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_α:           mov              r11, 107
                        mov              eax, dword ptr [rsp + 720]
                        mov              ecx, dword ptr [rsp + 704]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_308_2
                        mov              rax, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 712]
                        add              rax, rdx
                        mov              qword ptr [rsp + 688], 3
                        mov              qword ptr [rsp + 696], rax;          jmp   .Lbinop_α_308_7
.Lbinop_α_308_2:        and              edx, 1;                              jz    .Lbinop_α_308_0
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdi, qword ptr [rsp + 712]
                        cmp              al, 5;                               je    .Lbinop_α_308_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_308_4
.Lbinop_α_308_3:        movq             xmm0, rsi
.Lbinop_α_308_4:        cmp              cl, 5;                               je    .Lbinop_α_308_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_308_6
.Lbinop_α_308_5:        movq             xmm1, rdi
.Lbinop_α_308_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 688], 5
                        mov              qword ptr [rsp + 696], rax
.Lbinop_α_308_7:                                                              jmp   n00012_assign_α
.Lbinop_α_308_0:        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00008_unmark_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00012_assign_α
                        .size            n00011_binop_bx, .-n00011_binop_bx
                        .type            n00012_assign_bx, @function
n00012_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n00008_unmark_α
                        .size            n00012_assign_bx, .-n00012_assign_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00013_call_icon_α
n00009_var_β:             mov              r11, 109;                            jmp   n00008_unmark_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00013_call_icon_bx, @function
n00013_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_call_icon_α:       mov              r11, 110
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lcall_icon_α_rkfn313:  .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn313]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n00008_unmark_α
                                                                              jmp   .Ldisjunction_γ_103_as
n00013_call_icon_β:       mov              r11, 110;                            jmp   n00008_unmark_α
                        .size            n00013_call_icon_bx, .-n00013_call_icon_bx
                        .type            n00006_var_bx, @function
n00006_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00014_lit_integer_α
n00006_var_β:             mov              r11, 111;                            jmp   .Ldisjunction_ω_103_af
                        .size            n00006_var_bx, .-n00006_var_bx
                        .type            n00014_lit_integer_bx, @function
n00014_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00015_binop_test_α
.Llit_integer_α_316_0:  .quad            0
                        .size            n00014_lit_integer_bx, .-n00014_lit_integer_bx
                        .type            n00015_binop_test_bx, @function
n00015_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_test_α:      mov              r11, 113
                        mov              eax, dword ptr [rsp + 3088]
                        cmp              al, 112;                             je    .Lbinop_test_α_317_0
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 112;                             je    .Lbinop_test_α_317_0
                        mov              eax, dword ptr [rsp + 3088]
                        cmp              al, 3;                               jne   .Lbinop_test_α_317_2
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 3;                               jne   .Lbinop_test_α_317_2
.Lbinop_test_α_317_1:   mov              rax, qword ptr [rsp + 3096]
                        mov              rcx, qword ptr [rsp + 840]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_103_af
                        mov              rcx, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rcx
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rcx;          jmp   n00016_lit_integer_α
.Lbinop_test_α_317_0:   mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              r8d, 6
                        lea              r9, [rsp + 800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_317_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_103_af
                                                                              jmp   n00016_lit_integer_α
.Lbinop_test_α_317_2:   mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_103_af
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00016_lit_integer_α
                        .size            n00015_binop_test_bx, .-n00015_binop_test_bx
                        .type            n00016_lit_integer_bx, @function
n00016_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   .Ldisjunction_γ_103_as
n00016_lit_integer_β:     mov              r11, 114;                            jmp   n00008_unmark_α
.Llit_integer_α_318_0:  .quad            0
                        .size            n00016_lit_integer_bx, .-n00016_lit_integer_bx
                        .type            n00008_unmark_bx, @function
n00008_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_unmark_α:          mov              r11, 115
                        mov              rsp, qword ptr [rsp + 640];          jmp   n99_iterate_β
                        .size            n00008_unmark_bx, .-n00008_unmark_bx
                        .type            n00001_kw_icon_bx, @function
n00001_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_kw_icon_α:         mov              r11, 116
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00018_var_α
n00001_kw_icon_β:         mov              r11, 116;                            jmp   n00017_var_α
.Lkw_icon_α_321_0:      .quad            .Lkw_icon_α_321_0_s
.Lkw_icon_α_321_0_s:    .string          "&e"
                        .size            n00001_kw_icon_bx, .-n00001_kw_icon_bx
                        .type            n00018_var_bx, @function
n00018_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00019_var_α
                        .size            n00018_var_bx, .-n00018_var_bx
                        .type            n00019_var_bx, @function
n00019_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00020_unop_α
                        .size            n00019_var_bx, .-n00019_var_bx
                        .type            n00020_unop_bx, @function
n00020_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_unop_α:            mov              r11, 119
                        mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00021_coerce_numeric_α
                        .size            n00020_unop_bx, .-n00020_unop_bx
                        .type            n00021_coerce_numeric_bx, @function
n00021_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_coerce_numeric_α:  mov              r11, 120
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_328_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
                        mov              eax, dword ptr [rsp + 544]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
.Lcoerce_numeric_α_328_1:
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00022_coerce_numeric_α
.Lcoerce_numeric_α_328_0:
                        lea              rdi, [rsp + 3056]
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 512]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00022_coerce_numeric_α
                        .size            n00021_coerce_numeric_bx, .-n00021_coerce_numeric_bx
                        .type            n00022_coerce_numeric_bx, @function
n00022_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_coerce_numeric_α:  mov              r11, 121
                        mov              eax, dword ptr [rsp + 544]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_330_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_330_0
                        mov              eax, dword ptr [rsp + 3056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_330_0
.Lcoerce_numeric_α_330_1:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00023_binop_α
.Lcoerce_numeric_α_330_0:
                        lea              rdi, [rsp + 544]
                        lea              rsi, [rsp + 3056]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00023_binop_α
                        .size            n00022_coerce_numeric_bx, .-n00022_coerce_numeric_bx
                        .type            n00023_binop_bx, @function
n00023_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_α:           mov              r11, 122
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n00024_coerce_numeric_α
                        .size            n00023_binop_bx, .-n00023_binop_bx
                        .type            n00024_coerce_numeric_bx, @function
n00024_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  mov              r11, 123
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_333_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_333_0
.Lcoerce_numeric_α_333_1:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00025_coerce_numeric_α
.Lcoerce_numeric_α_333_0:
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 432]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00025_coerce_numeric_α
                        .size            n00024_coerce_numeric_bx, .-n00024_coerce_numeric_bx
                        .type            n00025_coerce_numeric_bx, @function
n00025_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_coerce_numeric_α:  mov              r11, 124
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_335_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
.Lcoerce_numeric_α_335_1:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00026_binop_α
.Lcoerce_numeric_α_335_0:
                        lea              rdi, [rsp + 480]
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00026_binop_α
                        .size            n00025_coerce_numeric_bx, .-n00025_coerce_numeric_bx
                        .type            n00026_binop_bx, @function
n00026_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_α:           mov              r11, 125
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00027_lit_real_α
                        .size            n00026_binop_bx, .-n00026_binop_bx
                        .type            n00027_lit_real_bx, @function
n00027_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_real_α:        mov              r11, 126
                        mov              qword ptr [rsp + 576], 5             # result
                        mov              rax, qword ptr [rip + .Llit_real_α_337_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00028_coerce_numeric_α
.Llit_real_α_337_0:     .quad            4602678819172646912
                        .size            n00027_lit_real_bx, .-n00027_lit_real_bx
                        .type            n00028_coerce_numeric_bx, @function
n00028_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_coerce_numeric_α:  mov              r11, 127
                        mov              eax, dword ptr [rsp + 400]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_339_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_339_0
                        mov              eax, dword ptr [rsp + 576]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_339_0
.Lcoerce_numeric_α_339_1:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00029_binop_α
.Lcoerce_numeric_α_339_0:
                        lea              rdi, [rsp + 400]
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00029_binop_α
                        .size            n00028_coerce_numeric_bx, .-n00028_coerce_numeric_bx
                        .type            n00029_binop_bx, @function
n00029_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_binop_α:           mov              r11, 128
                        mov              eax, dword ptr [rsp + 384]
                        mov              ecx, dword ptr [rsp + 576]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_340_2
                        mov              rax, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 584]
                        add              rax, rdx
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   .Lbinop_α_340_7
.Lbinop_α_340_2:        and              edx, 1;                              jz    .Lbinop_α_340_0
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdi, qword ptr [rsp + 584]
                        cmp              al, 5;                               je    .Lbinop_α_340_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_340_4
.Lbinop_α_340_3:        movq             xmm0, rsi
.Lbinop_α_340_4:        cmp              cl, 5;                               je    .Lbinop_α_340_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_340_6
.Lbinop_α_340_5:        movq             xmm1, rdi
.Lbinop_α_340_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 368], 5
                        mov              qword ptr [rsp + 376], rax
.Lbinop_α_340_7:                                                              jmp   n00030_call_icon_α
.Lbinop_α_340_0:        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00017_var_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00030_call_icon_α
                        .size            n00029_binop_bx, .-n00029_binop_bx
                        .type            n00030_call_icon_bx, @function
n00030_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_call_icon_α:       mov              r11, 129
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn342:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn342]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00017_var_α
                                                                              jmp   n00031_assign_α
n00030_call_icon_β:       mov              r11, 129;                            jmp   n00017_var_α
                        .size            n00030_call_icon_bx, .-n00030_call_icon_bx
                        .type            n00031_assign_bx, @function
n00031_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n00017_var_α
                        .size            n00031_assign_bx, .-n00031_assign_bx
                        .type            n00017_var_bx, @function
n00017_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00032_lit_integer_α
                        .size            n00017_var_bx, .-n00017_var_bx
                        .type            n00032_lit_integer_bx, @function
n00032_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_346_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00033_call_icon_α
.Llit_integer_α_346_0:  .quad            7
                        .size            n00032_lit_integer_bx, .-n00032_lit_integer_bx
                        .type            n00033_call_icon_bx, @function
n00033_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_call_icon_α:       mov              r11, 133
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lcall_icon_α_rkfn348:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn348]
                        lea              rsi, [rsp + 224]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00034_lit_string_α
                                                                              jmp   n00035_call_icon_α
n00033_call_icon_β:       mov              r11, 133;                            jmp   n00034_lit_string_α
                        .size            n00033_call_icon_bx, .-n00033_call_icon_bx
                        .type            n00035_call_icon_bx, @function
n00035_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_call_icon_α:       mov              r11, 134
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn350:  .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn350]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00034_lit_string_α
                                                                              jmp   n00034_lit_string_α
n00035_call_icon_β:       mov              r11, 134;                            jmp   n00034_lit_string_α
                        .size            n00035_call_icon_bx, .-n00035_call_icon_bx
                        .type            n00034_lit_string_bx, @function
n00034_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00036_var_α
.Llit_string_α_351_0:   .quad            .Llit_string_α_351_0_s
.Llit_string_α_351_0_s: .string          "   "
                        .size            n00034_lit_string_bx, .-n00034_lit_string_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00037_call_icon_α
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00037_call_icon_bx, @function
n00037_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_call_icon_α:       mov              r11, 137
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn355:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn355]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n00038_return_α
                                                                              jmp   n00038_return_α
n00037_call_icon_β:       mov              r11, 137;                            jmp   n00038_return_α
                        .size            n00037_call_icon_bx, .-n00037_call_icon_bx
                        .type            n00038_return_bx, @function
n00038_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_return_α:          mov              r11, 138
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   dofile_γ
                        .size            n00038_return_bx, .-n00038_return_bx
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
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 3440;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 3440;                           jmp   qword ptr [rsp + 8]
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
                        sub              rsp, 65544
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
                        xor              r14d, r14d
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 912
                        mov              rdi, rsp
                        add              rdi, 752
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
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n00039_lit_string_bx, @function
n00039_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 42
                        mov              rax, qword ptr [rip + .Llit_string_α_384_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00040_call_icon_α
.Llit_string_α_384_0:   .quad            .Llit_string_α_384_0_s
.Llit_string_α_384_0_s: .string          "  N ovhead rmserr median  gmean   filename"
                        .size            n00039_lit_string_bx, .-n00039_lit_string_bx
                        .type            n00040_call_icon_bx, @function
n00040_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_icon_α:       mov              r11, 140
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lcall_icon_α_rkfn386:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn386]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n00041_disjunction_α
                                                                              jmp   n00041_disjunction_α
n00040_call_icon_β:       mov              r11, 140;                            jmp   n00041_disjunction_α
                        .size            n00040_call_icon_bx, .-n00040_call_icon_bx
                        .type            n00041_disjunction_bx, @function
n00041_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_disjunction_α:     mov              r11, 141
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00042_var_α
.Ldisjunction_γ_360_as: mov              r11, 141
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_388_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   main_ω
.Ldisjunction_α_388_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_388_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 40], rax;           jmp   main_ω
.Ldisjunction_α_388_1:                                                        jmp   main_ω
n00041_disjunction_β:     mov              r11, 141
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00043_goto_β
.Ldisjunction_γ_360_af: mov              r11, 141
.Ldisjunction_ω_360_af: mov              r11, 141
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00044_var_α
                                                                              jmp   main_ω
                        .size            n00041_disjunction_bx, .-n00041_disjunction_bx
                        .type            n00045_var_bx, @function
n00045_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_var_α:             mov              r11, 142
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 264], rax;          jmp   .Ldisjunction_γ_360_as
n00045_var_β:             mov              r11, 142;                            jmp   main_ω
                        .size            n00045_var_bx, .-n00045_var_bx
                        .type            n00044_var_bx, @function
n00044_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:             mov              r11, 143
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00046_call_icon_α
n00044_var_β:             mov              r11, 143;                            jmp   main_ω
                        .size            n00044_var_bx, .-n00044_var_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 144
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn394:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn394]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00047_assign_α
n00046_call_icon_β:       mov              r11, 144;                            jmp   main_ω
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
                        .type            n00047_assign_bx, @function
n00047_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_assign_α:          mov              r11, 145
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00048_disjunction_α
                        .size            n00047_assign_bx, .-n00047_assign_bx
                        .type            n00048_disjunction_bx, @function
n00048_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_disjunction_α:     mov              r11, 146
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00049_var_α
.Ldisjunction_γ_365_as: mov              r11, 146
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_397_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00050_assign_α
.Ldisjunction_α_397_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_397_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00050_assign_α
.Ldisjunction_α_397_1:                                                        jmp   n00050_assign_α
n00048_disjunction_β:     mov              r11, 146
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_365_af
                                                                              jmp   .Ldisjunction_ω_365_af
.Ldisjunction_γ_365_af: mov              r11, 146
.Ldisjunction_ω_365_af: mov              r11, 146
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00051_lit_string_α
                                                                              jmp   n00052_var_α
                        .size            n00048_disjunction_bx, .-n00048_disjunction_bx
                        .type            n00050_assign_bx, @function
n00050_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00052_var_α
                        .size            n00050_assign_bx, .-n00050_assign_bx
                        .type            n00052_var_bx, @function
n00052_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00053_var_α
                        .size            n00052_var_bx, .-n00052_var_bx
                        .type            n00053_var_bx, @function
n00053_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00054_call_proc_staged_α
                        .size            n00053_var_bx, .-n00053_var_bx
                        .type            n00054_call_proc_staged_bx, @function
n00054_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_call_proc_staged_α:
                        mov              r11, 150
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 448]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_404_2
.Lcall_proc_staged_α_404_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_404_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lcall_proc_staged_α_404_29:
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00044_var_α
                                                                              jmp   n00055_conjunction_α
n00054_call_proc_staged_β:
                        mov              r11, 150;                            jmp   n00044_var_α
.Lcall_proc_staged_β_404_0:
                        .quad            .Lcall_proc_staged_β_404_0_s
.Lcall_proc_staged_β_404_0_s:
                        .string          "dofile"
                        .size            n00054_call_proc_staged_bx, .-n00054_call_proc_staged_bx
                        .type            n00055_conjunction_bx, @function
n00055_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_conjunction_α:     mov              r11, 151
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00044_var_α
n00055_conjunction_β:     mov              r11, 151;                            jmp   n00044_var_α
                        .size            n00055_conjunction_bx, .-n00055_conjunction_bx
                        .type            n00043_goto_bx, @function
n00043_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_goto_α:            mov              r11, 152;                            jmp   n00044_var_α
n00043_goto_β:            mov              r11, 152;                            jmp   n00044_var_α
                        .size            n00043_goto_bx, .-n00043_goto_bx
                        .type            n00051_lit_string_bx, @function
n00051_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_407_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00056_var_α
n00051_lit_string_β:      mov              r11, 153;                            jmp   .Ldisjunction_ω_365_af
.Llit_string_α_407_0:   .quad            .Llit_string_α_407_0_s
.Llit_string_α_407_0_s: .string          "cannot open "
                        .size            n00051_lit_string_bx, .-n00051_lit_string_bx
                        .type            n00056_var_bx, @function
n00056_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00057_call_icon_α
                        .size            n00056_var_bx, .-n00056_var_bx
                        .type            n00057_call_icon_bx, @function
n00057_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_call_icon_α:       mov              r11, 155
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lcall_icon_α_rkfn411:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn411]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_365_af
                                                                              jmp   .Ldisjunction_γ_365_as
n00057_call_icon_β:       mov              r11, 155;                            jmp   .Ldisjunction_ω_365_af
                        .size            n00057_call_icon_bx, .-n00057_call_icon_bx
                        .type            n00049_var_bx, @function
n00049_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00058_call_icon_α
n00049_var_β:             mov              r11, 156;                            jmp   .Ldisjunction_ω_365_af
                        .size            n00049_var_bx, .-n00049_var_bx
                        .type            n00058_call_icon_bx, @function
n00058_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_icon_α:       mov              r11, 157
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lcall_icon_α_rkfn415:  .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn415]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_365_af
                                                                              jmp   .Ldisjunction_γ_365_as
n00058_call_icon_β:       mov              r11, 157;                            jmp   .Ldisjunction_ω_365_af
                        .size            n00058_call_icon_bx, .-n00058_call_icon_bx
                        .type            n00042_var_bx, @function
n00042_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00059_unop_α
n00042_var_β:             mov              r11, 158;                            jmp   .Ldisjunction_ω_360_af
                        .size            n00042_var_bx, .-n00042_var_bx
                        .type            n00059_unop_bx, @function
n00059_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_unop_α:            mov              r11, 159
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n00060_lit_integer_α
                        .size            n00059_unop_bx, .-n00059_unop_bx
                        .type            n00060_lit_integer_bx, @function
n00060_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_419_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00061_binop_test_α
.Llit_integer_α_419_0:  .quad            0
                        .size            n00060_lit_integer_bx, .-n00060_lit_integer_bx
                        .type            n00061_binop_test_bx, @function
n00061_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_binop_test_α:      mov              r11, 161
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 112;                             je    .Lbinop_test_α_420_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 112;                             je    .Lbinop_test_α_420_0
                        mov              eax, dword ptr [rsp + 208]
                        cmp              al, 3;                               jne   .Lbinop_test_α_420_2
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lbinop_test_α_420_2
.Lbinop_test_α_420_1:   mov              rax, qword ptr [rsp + 216]
                        mov              rcx, qword ptr [rsp + 248]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_360_af
                        mov              rcx, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rcx
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rcx;          jmp   n00062_kw_icon_α
.Lbinop_test_α_420_0:   mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              r8d, 9
                        lea              r9, [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_420_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_360_af
                                                                              jmp   n00062_kw_icon_α
.Lbinop_test_α_420_2:   mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_360_af
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00062_kw_icon_α
                        .size            n00061_binop_test_bx, .-n00061_binop_test_bx
                        .type            n00062_kw_icon_bx, @function
n00062_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_kw_icon_α:         mov              r11, 162
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_421_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00063_lit_string_α
n00062_kw_icon_β:         mov              r11, 162;                            jmp   main_ω
.Lkw_icon_α_421_0:      .quad            .Lkw_icon_α_421_0_s
.Lkw_icon_α_421_0_s:    .string          "&input"
                        .size            n00062_kw_icon_bx, .-n00062_kw_icon_bx
                        .type            n00063_lit_string_bx, @function
n00063_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_422_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00064_call_proc_staged_α
.Llit_string_α_422_0:   .quad            .Llit_string_α_422_0_s
.Llit_string_α_422_0_s: .string          "stdin"
                        .size            n00063_lit_string_bx, .-n00063_lit_string_bx
                        .type            n00064_call_proc_staged_bx, @function
n00064_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_call_proc_staged_α:
                        mov              r11, 164
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 160]
                        call             dofile_dcα;                          jmp   .Lcall_proc_staged_α_424_2
.Lcall_proc_staged_α_424_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_424_29
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lcall_proc_staged_α_424_29:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   .Ldisjunction_γ_360_as
n00064_call_proc_staged_β:
                        mov              r11, 164;                            jmp   main_ω
.Lcall_proc_staged_β_424_0:
                        .quad            .Lcall_proc_staged_β_424_0_s
.Lcall_proc_staged_β_424_0_s:
                        .string          "dofile"
                        .size            n00064_call_proc_staged_bx, .-n00064_call_proc_staged_bx
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
                        .long            3184
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
