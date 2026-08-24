                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__wordcount:
                        sub              rsp, 1424
                        mov              rdi, rsp
                        add              rdi, 1232
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
wordcount_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1088], 0;           jmp   n1_var_ref_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 0;                              jne   .Lx59_0
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Lx59_0:                                                                      jmp   n9_lit_integer_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1088];         jmp   n9_lit_integer_α
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 1088], 1
                        mov              eax, dword ptr [rsp + 1088]
                        add              rsp, 16;                             jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # wordcount__INITFLAG__0
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n2_nulltest_var_α
n1_var_ref_β:           mov              r11, 2;                              jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
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
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n4_assign_var_α
.Lx63_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:       mov              r11, 6
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n6_lit_charset_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_charset_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], -1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n7_binop_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n7_binop_α:             mov              r11, 8
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n9_lit_integer_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [r9 + 0], rax              # wordcount__STATIC__letters
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n0_disjunction_as
n8_assign_β:            mov              r11, 9;                              jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n10_call_builtin_icon_α
.Lx69_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn71:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n12_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_assign_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        .section         .rodata
.Lrkfn74:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rsp + 672]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n29_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_assign_α
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n15_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
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
                        mov              r14, 0;                              jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # wordcount__STATIC__letters
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 816], rax           # result
                        mov              qword ptr [rsp + 824], rdx;          jmp   n17_scan_upto_α
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_upto_α:        mov              r11, 18
                        mov              qword ptr [rsp + 800], r14
.Lx82_0:                mov              rax, qword ptr [rsp + 800]
                        cmp              rax, r15;                            jge   n28_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 824]
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
                        pop              rax;                                 je    .Lx82_1
                        mov              qword ptr [rsp + 784], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 792], rax;          jmp   n18_scan_tab_α
.Lx82_1:                inc              qword ptr [rsp + 800];               jmp   .Lx82_0
n17_scan_upto_β:        mov              r11, 18
                        inc              qword ptr [rsp + 800];               jmp   .Lx82_0
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:         mov              r11, 19
                        mov              rax, qword ptr [rsp + 792]
                        cmp              rax, 1;                              jge   .Lx84_0
                        add              rax, r15
                        add              rax, 1
.Lx84_0:                cmp              rax, 1;                              jl    n17_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n17_scan_upto_β
                        mov              qword ptr [rsp + 768], r14
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
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n19_var_ref_α
n18_scan_tab_β:         mov              r11, 19
                        mov              r14, qword ptr [rsp + 768];          jmp   n17_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [r9 + 0]              # wordcount__STATIC__letters
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n21_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_many_α:        mov              r11, 22
                        mov              eax, r14d
.Lx89_0:                cmp              eax, r15d;                           jge   .Lx89_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 904]
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
                        pop              rax;                                 je    .Lx89_1
                        add              eax, 1;                              jmp   .Lx89_0
.Lx89_1:                cmp              eax, r14d;                           je    n16_var_α
                        mov              qword ptr [rsp + 880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 888], rcx;          jmp   n22_scan_tab_α
n21_scan_many_β:        mov              r11, 22;                             jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_tab_α:         mov              r11, 23
                        mov              rax, qword ptr [rsp + 888]
                        cmp              rax, 1;                              jge   .Lx91_0
                        add              rax, r15
                        add              rax, 1
.Lx91_0:                cmp              rax, 1;                              jl    n16_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n16_var_α
                        mov              qword ptr [rsp + 864], r14
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
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n23_subscript_α
n22_scan_tab_β:         mov              r11, 23
                        mov              r14, qword ptr [rsp + 864];          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              r11, 24
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_var_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n24_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_deref_α:            mov              r11, 25
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_var_α
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n26_binop_α
.Lx94_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            mov              r11, 27
                        mov              eax, dword ptr [rsp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx95_2
                        mov              rax, qword ptr [rsp + 968]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   .Lx95_7
.Lx95_2:                and              edx, 1;                              jz    .Lx95_0
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx95_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx95_4
.Lx95_3:                movq             xmm0, rsi
.Lx95_4:                cmp              cl, 5;                               je    .Lx95_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx95_6
.Lx95_5:                movq             xmm1, rdi
.Lx95_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 944], 5
                        mov              qword ptr [rsp + 952], rax
.Lx95_7:                                                                      jmp   n27_assign_var_α
.Lx95_0:                mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n16_var_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:       mov              r11, 28
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_var_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_scan_α:             mov              r11, 29
                        lea              rdi, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 704]
                        mov              r14, qword ptr [rsp + 712]
                        mov              r15, qword ptr [rsp + 720];          jmp   n12_call_builtin_icon_α
n28_scan_β:             mov              r11, 29;                             jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 30
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 632], rax;          jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n31_call_builtin_icon_α
.Lx101_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn103:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n33_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_assign_α
n31_call_builtin_icon_β:
                        mov              r11, 32;                             jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 33
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n34_var_α
.Lx105_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 152], rax;          jmp   n35_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n35_unop_α:             mov              r11, 36
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n37_coerce_numeric_α
.Lx109_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:   mov              r11, 38
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 5;                               je    .Lx111_1
                        cmp              al, 3;                               jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 3;                               jne   .Lx111_0
.Lx111_1:               mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax;          jmp   n38_binop_α
.Lx111_0:               lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 112]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            mov              r11, 39
                        mov              eax, dword ptr [rsp + 112]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx112_2
                        mov              rax, qword ptr [rsp + 120]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax;          jmp   .Lx112_7
.Lx112_2:               and              edx, 1;                              jz    .Lx112_0
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx112_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx112_4
.Lx112_3:               movq             xmm0, rsi
.Lx112_4:               cmp              cl, 5;                               je    .Lx112_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx112_6
.Lx112_5:               movq             xmm1, rdi
.Lx112_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 96], 5
                        mov              qword ptr [rsp + 104], rax
.Lx112_7:                                                                     jmp   n39_lit_integer_α
.Lx112_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    wordcount_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n40_to_by_α
.Lx113_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n40_to_by_α:            mov              r11, 41
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
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 64], rax
.Lx115_0:               mov              rax, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 184]
                        cmp              rdx, 0;                              jl    .Lx115_1
                        cmp              rax, rcx;                            jg    wordcount_ω
                                                                              jmp   .Lx115_2
.Lx115_1:               cmp              rax, rcx;                            jl    wordcount_ω
.Lx115_2:               mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n41_assign_α
n40_to_by_β:            mov              r11, 41
                        mov              rdx, qword ptr [rsp + 184]
                        mov              rax, qword ptr [rsp + 64]
                        add              rax, rdx
                        mov              qword ptr [rsp + 64], rax;           jmp   .Lx115_0
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 42
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n42_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n42_bound_α:            mov              r11, 43
                        mov              qword ptr [rsp + 192], rsp;          jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 392], rax;          jmp   n45_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:        mov              r11, 46
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:            mov              r11, 47
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn128:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_var_ref_α
n48_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n57_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 504], rax;          jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              r11, 52
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n52_coerce_numeric_α
.Lx133_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   mov              r11, 53
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              al, 5;                               je    .Lx135_1
                        cmp              al, 3;                               jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx135_0
.Lx135_1:               mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 488], rax;          jmp   n53_binop_α
.Lx135_0:               lea              rdi, [rsp + 1232]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            mov              r11, 54
                        mov              eax, dword ptr [rsp + 480]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx136_2
                        mov              rax, qword ptr [rsp + 488]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   .Lx136_7
.Lx136_2:               and              edx, 1;                              jz    .Lx136_0
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx136_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx136_4
.Lx136_3:               movq             xmm0, rsi
.Lx136_4:               cmp              cl, 5;                               je    .Lx136_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx136_6
.Lx136_5:               movq             xmm1, rdi
.Lx136_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 464], 5
                        mov              qword ptr [rsp + 472], rax
.Lx136_7:                                                                     jmp   n54_subscript_α
.Lx136_0:               mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n55_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:            mov              r11, 56
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n56_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              r11, 57
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn140:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n57_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_unmark_α
n56_call_builtin_icon_β:
                        mov              r11, 57;                             jmp   n57_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unmark_α:           mov              r11, 58
                        mov              rsp, qword ptr [rsp + 192];          jmp   n40_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
wordcount_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wordcount_β:
                                                                              jmp   wordcount_ω
#-----------------------------------------------------------------------------------------------------------------------
wordcount_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1424;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
wordcount_ω:
                        add              rsp, 1424;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
wordcount_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx143_3]
                        push             rcx
                        lea              rcx, [rip + .Lx143_2]
                        push             rcx;                                 jmp   FN__wordcount
.Lx143_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx143_3:               add              rsp, 24
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "wordcount__STATIC__letters"
.Lgvan1:                .string          "wordcount__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 112
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_call_proc_staged_α
.Lx146_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 60
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             wordcount_dcα;                       jmp   .Lx148_2
.Lx148_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx148_29
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
.Lx148_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx148_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lx148_240:             add              rsp, 32;                             jmp   main_γ
n145_call_proc_staged_β:
                        mov              r11, 60;                             jmp   main_ω
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "wordcount"
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
.Lstartup_pname0:       .string          "wordcount"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__wordcount
                        .quad            wordcount_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1296
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
