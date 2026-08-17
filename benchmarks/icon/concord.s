                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tabulate:
                        sub              rsp, 1504
                        mov              qword ptr [rsp + 1480], rcx
                        mov              qword ptr [rsp + 1488], rdx
                        mov              rdi, rsp
                        add              rdi, 1328
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
tabulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn72:               .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n3_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_assign_α
n1_call_builtin_icon_β:                                                       jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 0
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n4_assign_α
.Lx74_0:                .quad            .Lx74_0_s
.Lx74_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:         mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    tabulate_ω
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:             mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    tabulate_ω
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n9_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_enter_α:        mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
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
                        mov              r14, 0;                              jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 952], rax;          jmp   n11_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n12_scan_upto_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_upto_α:        mov              qword ptr [rsp + 1008], r14
.Lx88_0:                mov              rax, qword ptr [rsp + 1008]
                        cmp              rax, r15;                            jge   n25_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx88_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx88_1
                        mov              qword ptr [rsp + 992], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1000], rax;         jmp   n13_scan_tab_α
.Lx88_1:                inc              qword ptr [rsp + 1008];              jmp   .Lx88_0
n12_scan_upto_β:        inc              qword ptr [rsp + 1008];              jmp   .Lx88_0
.Lx88_2:                .quad            .Lx88_2_s
.Lx88_2_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_tab_α:         mov              rax, qword ptr [rsp + 1000]
                        cmp              rax, 1;                              jge   .Lx90_0
                        add              rax, r15
                        add              rax, 1
.Lx90_0:                cmp              rax, 1;                              jl    n12_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n12_scan_upto_β
                        mov              qword ptr [rsp + 976], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n14_binop_α
n13_scan_tab_β:         mov              r14, qword ptr [rsp + 976];          jmp   n12_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n16_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_charset_α:      mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n17_scan_many_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_many_α:        mov              eax, r14d
.Lx95_0:                cmp              eax, r15d;                           jge   .Lx95_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx95_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx95_1
                        add              eax, 1;                              jmp   .Lx95_0
.Lx95_1:                cmp              eax, r14d;                           je    n20_var_α
                        mov              qword ptr [rsp + 1152], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1160], rcx;         jmp   n18_scan_tab_α
n17_scan_many_β:                                                              jmp   n20_var_α
.Lx95_2:                .quad            .Lx95_2_s
.Lx95_2_s:              .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_tab_α:         mov              rax, qword ptr [rsp + 1160]
                        cmp              rax, 1;                              jge   .Lx97_0
                        add              rax, r15
                        add              rax, 1
.Lx97_0:                cmp              rax, 1;                              jl    n20_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n20_var_α
                        mov              qword ptr [rsp + 1136], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n19_assign_α
n18_scan_tab_β:         mov              r14, qword ptr [rsp + 1136];         jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n24_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n10_var_α
n24_conjunction_β:                                                            jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              dword ptr [rsp + 160], 0;            jmp   n53_disjunction_α
n25_disjunction_as:     mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              jne   .Lx00001_0
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax;          jmp   n26_conjunction_α
.Lx00001_0:               cmp              eax, 1;                              jne   .Lx00001_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 152], rax;          jmp   n26_conjunction_α
.Lx00001_1:                                                                     jmp   n26_conjunction_α
n25_disjunction_β:      mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 0;                              je    n63_scan_α
                                                                              jmp   n63_scan_α
n25_disjunction_af:     add              dword ptr [rsp + 160], 1
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 1;                              je    n28_disjunction_α
                                                                              jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:      mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n27_scan_α
n26_conjunction_β:                                                            jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_α:             mov              rax, qword ptr [rsp + 128]
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
                        mov              r15, qword ptr [rsp + 80];           jmp   tabulate_γ
n27_scan_β:                                                                   jmp   tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n46_lit_string_α
n28_disjunction_as:     mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lx00002_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n29_var_ref_α
.Lx00002_0:               cmp              eax, 1;                              jne   .Lx00002_1
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 680], rax;          jmp   n29_var_ref_α
.Lx00002_1:                                                                     jmp   n29_var_ref_α
n28_disjunction_β:      mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n50_scan_upto_β
                                                                              jmp   n29_var_ref_α
n28_disjunction_af:     add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n44_lit_integer_α
                                                                              jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n31_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:        mov              rdi, qword ptr [rsp + 448]
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
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 568], rax;          jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n34_binop_α
.Lx00003_0:               .quad            .Lx00003_0_s
.Lx00003_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 632], rax;          jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n37_coerce_numeric_α
.Lx00004_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 5;                              je    .Lx00005_1
                        cmp              eax, 3;                              jne   .Lx00005_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 3;                              jne   .Lx00005_0
.Lx00005_1:               mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 616], rax;          jmp   n38_binop_α
.Lx00005_0:               lea              rdi, [rsp + 1360]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            mov              eax, dword ptr [rsp + 608]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00006_2
                        mov              rax, qword ptr [rsp + 616]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 592], 3
                        mov              qword ptr [rsp + 600], rax;          jmp   .Lx00006_7
.Lx00006_2:               and              edx, 1;                              jz    .Lx00006_0
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00006_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00006_4
.Lx00006_3:               movq             xmm0, rsi
.Lx00006_4:               cmp              ecx, 5;                              je    .Lx00006_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00006_6
.Lx00006_5:               movq             xmm1, rdi
.Lx00006_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 592], 5
                        mov              qword ptr [rsp + 600], rax
.Lx00006_7:                                                                     jmp   n39_binop_α
.Lx00006_0:               mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 640]
                        mov              rcx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n41_binop_α
.Lx00007_0:               .quad            .Lx00007_0_s
.Lx00007_0_s:             .string          "), "
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n43_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax;          jmp   n25_disjunction_as
n43_conjunction_β:                                                            jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n45_assign_α
n44_lit_integer_β:                                                            jmp   n29_var_ref_α
.Lx00008_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n28_disjunction_as
n45_assign_β:                                                                 jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n47_scan_match_α
n46_lit_string_β:                                                             jmp   n28_disjunction_af
.Lx00009_0:               .quad            .Lx00009_0_s
.Lx00009_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_match_α:       mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n28_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00010_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n28_disjunction_af
                        mov              qword ptr [rsp + 832], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 840], rax;          jmp   n48_scan_tab_α
.Lx00010_0:               .quad            .Lx00010_0_s
.Lx00010_0_s:             .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_tab_α:         mov              rax, qword ptr [rsp + 840]
                        cmp              rax, 1;                              jge   .Lx00011_0
                        add              rax, r15
                        add              rax, 1
.Lx00011_0:               cmp              rax, 1;                              jl    n28_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n28_disjunction_af
                        mov              qword ptr [rsp + 816], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n49_lit_charset_α
n48_scan_tab_β:         mov              r14, qword ptr [rsp + 816];          jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_charset_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n50_scan_upto_α
.Lx00012_0:               .quad            .Lx00012_0_s
.Lx00012_0_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n50_scan_upto_α:        mov              qword ptr [rsp + 768], r14
.Lx00013_0:               mov              rax, qword ptr [rsp + 768]
                        cmp              rax, r15;                            jge   n29_var_ref_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00013_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx00013_1
                        mov              qword ptr [rsp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n51_scan_tab_α
.Lx00013_1:               inc              qword ptr [rsp + 768];               jmp   .Lx00013_0
n50_scan_upto_β:        inc              qword ptr [rsp + 768];               jmp   .Lx00013_0
.Lx00013_2:               .quad            .Lx00013_2_s
.Lx00013_2_s:             .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_tab_α:         mov              rax, qword ptr [rsp + 760]
                        cmp              rax, 1;                              jge   .Lx00014_0
                        add              rax, r15
                        add              rax, 1
.Lx00014_0:               cmp              rax, 1;                              jl    n50_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n50_scan_upto_β
                        mov              qword ptr [rsp + 736], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n52_assign_α
n51_scan_tab_β:         mov              r14, qword ptr [rsp + 736];          jmp   n50_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n28_disjunction_as
n52_assign_β:                                                                 jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n67_var_α
n53_disjunction_as:     mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx00015_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n54_var_ref_α
.Lx00015_0:               cmp              eax, 1;                              jne   .Lx00015_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax;          jmp   n54_var_ref_α
.Lx00015_1:                                                                     jmp   n54_var_ref_α
n53_disjunction_β:      mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n53_disjunction_af
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n64_var_α
                                                                              jmp   n25_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # uses
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n55_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n56_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n57_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:            mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 296], rax;          jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n60_binop_α
.Lx00016_0:               .quad            .Lx00016_0_s
.Lx00016_0_s:             .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:       mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n63_scan_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n25_disjunction_as
n62_assign_var_β:                                                             jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_α:             lea              rdi, [rsp + 64]
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
                        mov              r15, qword ptr [rsp + 80];           jmp   tabulate_ω
n63_scan_β:                                                                   jmp   tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 408], rax;          jmp   n65_var_α
n64_var_β:                                                                    jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 424], rax;          jmp   n66_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_test_α:       mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n53_disjunction_af
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_disjunction_as
n66_binop_test_β:                                                             jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 376], rax;          jmp   n68_unop_test_α
n67_var_β:                                                                    jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_test_α:        mov              eax, dword ptr [rsp + 1328]
                        cmp              eax, 104;                            je    n53_disjunction_af
                        cmp              eax, 0;                              jne   n53_disjunction_af
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0;            jmp   n53_disjunction_as
n68_unop_test_β:                                                              jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
tabulate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tabulate_β:
                                                                              jmp   tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
tabulate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1480]
                        add              rsp, 1504;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tabulate_ω:
                        mov              rcx, qword ptr [rsp + 1488]
                        add              rsp, 1504;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tabulate_dcα:
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
                        lea              rcx, [rip + .Lx00017_2]
                        lea              rdx, [rip + .Lx00017_3];               jmp   FN__tabulate
.Lx00017_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00017_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__format:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              rdi, rsp
                        add              rdi, 864
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
format_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00019_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_unop_α:            mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00020_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 224], rax           # result
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00021_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00023_coerce_numeric_α
.Lx00022_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00023_coerce_numeric_α:  mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 5;                              je    .Lx00024_1
                        cmp              eax, 3;                              jne   .Lx00024_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 3;                              jne   .Lx00024_0
.Lx00024_1:               mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00025_binop_α
.Lx00024_0:               lea              rdi, [rsp + 224]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00025_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           mov              eax, dword ptr [rsp + 208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00026_2
                        mov              rax, qword ptr [rsp + 216]
                        mov              rdx, 2
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lx00026_7
.Lx00026_2:               and              edx, 1;                              jz    .Lx00026_0
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx00026_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00026_4
.Lx00026_3:               movq             xmm0, rsi
.Lx00026_4:               cmp              ecx, 5;                              je    .Lx00026_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00026_6
.Lx00026_5:               movq             xmm1, rdi
.Lx00026_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lx00026_7:                                                                     jmp   n00027_binop_test_α
.Lx00026_0:               mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00028_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00027_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_binop_test_α:      mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 112;                            je    .Lx00029_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 112;                            je    .Lx00029_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 3;                              jne   .Lx00029_2
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx00029_2
.Lx00029_1:               mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jle   n00028_var_α
                        mov              rcx, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rcx
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rcx;          jmp   n00030_var_α
.Lx00029_0:               mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        lea              r9, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00029_1
                        cmp              eax, 1;                              je    n00028_var_α
                                                                              jmp   n00030_var_α
.Lx00029_2:               mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00028_var_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00030_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              rax, qword ptr [r9 + 16]             # colmax
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 832], rax           # result
                        mov              qword ptr [rsp + 840], rdx;          jmp   n00031_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_lit_integer_α:     mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00033_coerce_numeric_α
.Lx00032_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00033_coerce_numeric_α:  mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 5;                              je    .Lx00034_1
                        cmp              eax, 3;                              jne   .Lx00034_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 3;                              jne   .Lx00034_0
.Lx00034_1:               mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00035_binop_α
.Lx00034_0:               lea              rdi, [rsp + 832]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 816]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00035_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_binop_α:           mov              eax, dword ptr [rsp + 816]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00036_2
                        mov              rax, qword ptr [rsp + 824]
                        mov              rdx, 2
                        add              rax, rdx
                        mov              qword ptr [rsp + 800], 3
                        mov              qword ptr [rsp + 808], rax;          jmp   .Lx00036_7
.Lx00036_2:               and              edx, 1;                              jz    .Lx00036_0
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdi, 2
                        cmp              eax, 5;                              je    .Lx00036_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00036_4
.Lx00036_3:               movq             xmm0, rsi
.Lx00036_4:               cmp              ecx, 5;                              je    .Lx00036_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00036_6
.Lx00036_5:               movq             xmm1, rdi
.Lx00036_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 800], 5
                        mov              qword ptr [rsp + 808], rax
.Lx00036_7:                                                                     jmp   n00037_assign_α
.Lx00036_0:               mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00038_var_ref_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00037_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_assign_α:          mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00038_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00040_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx00041_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00042_coerce_numeric_α
.Lx00041_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00042_coerce_numeric_α:  mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 5;                              je    .Lx00043_1
                        cmp              eax, 3;                              jne   .Lx00043_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx00043_0
.Lx00043_1:               mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00044_binop_α
.Lx00043_0:               lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00044_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_α:           mov              eax, dword ptr [rsp + 688]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00045_2
                        mov              rax, qword ptr [rsp + 696]
                        mov              rdx, 1
                        sub              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lx00045_7
.Lx00045_2:               and              edx, 1;                              jz    .Lx00045_0
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00045_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00045_4
.Lx00045_3:               movq             xmm0, rsi
.Lx00045_4:               cmp              ecx, 5;                              je    .Lx00045_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00045_6
.Lx00045_5:               movq             xmm1, rdi
.Lx00045_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lx00045_7:                                                                     jmp   n00046_assign_α
.Lx00045_0:               mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n00038_var_ref_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00046_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00047_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_subscript_α:       mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00038_var_ref_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00048_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:           mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00038_var_ref_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n00049_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx00050_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00051_binop_test_α
.Lx00050_0:               .quad            .Lx00050_0_s
.Lx00050_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_test_α:      mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00038_var_ref_α
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00052_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00053_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_integer_α:     mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx00054_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00055_var_α
.Lx00054_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00056_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_subscript_α:       mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8, qword ptr [rsp + 608]
                        mov              r9, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00057_lit_string_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00058_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn251:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n00057_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00057_lit_string_α
n00058_call_builtin_icon_β:
                                                                              jmp   n00057_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 1
                        mov              rax, qword ptr [rip + .Lx00059_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00060_var_α
.Lx00059_0:               .quad            .Lx00059_0_s
.Lx00059_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00060_var_α:             mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00061_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn255:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n00018_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00062_var_α
n00061_call_builtin_icon_β:
                                                                              jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00064_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_lit_integer_α:     mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx00065_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00066_coerce_numeric_α
.Lx00065_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00066_coerce_numeric_α:  mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 5;                              je    .Lx00067_1
                        cmp              eax, 3;                              jne   .Lx00067_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 3;                              jne   .Lx00067_0
.Lx00067_1:               mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00068_binop_α
.Lx00067_0:               lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00068_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_binop_α:           mov              eax, dword ptr [rsp + 448]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00069_2
                        mov              rax, qword ptr [rsp + 456]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   .Lx00069_7
.Lx00069_2:               and              edx, 1;                              jz    .Lx00069_0
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00069_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00069_4
.Lx00069_3:               movq             xmm0, rsi
.Lx00069_4:               cmp              ecx, 5;                              je    .Lx00069_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00069_6
.Lx00069_5:               movq             xmm1, rdi
.Lx00069_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 432], 5
                        mov              qword ptr [rsp + 440], rax
.Lx00069_7:                                                                     jmp   n00070_lit_integer_α
.Lx00069_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00018_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00070_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_integer_α:     mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx00071_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00072_subscript_α
.Lx00071_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00072_subscript_α:       mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8, qword ptr [rsp + 496]
                        mov              r9, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00018_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00073_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_binop_α:           mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00074_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_assign_α:          mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00075_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_conjunction_α:     mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00018_var_α
n00075_conjunction_β:                                                           jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:     mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00078_lit_integer_α
.Lx00077_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_integer_α:     mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx00079_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00080_subscript_α
.Lx00079_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n00080_subscript_α:       mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8, qword ptr [rsp + 128]
                        mov              r9, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    format_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00081_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn275:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    format_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   format_γ
n00081_call_builtin_icon_β:
                                                                              jmp   format_ω
#-----------------------------------------------------------------------------------------------------------------------
format_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
format_β:
                                                                              jmp   format_ω
#-----------------------------------------------------------------------------------------------------------------------
format_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 936]
                        add              rsp, 960;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
format_ω:
                        mov              rcx, qword ptr [rsp + 944]
                        add              rsp, 960;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
format_dcα:
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
                        lea              rcx, [rip + .Lx00082_2]
                        lea              rdx, [rip + .Lx00082_3];               jmp   FN__format
.Lx00082_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00082_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__item:
item_α_body:
                        lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rsp + 768], rax
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn314:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rsp + 48]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    item_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00085_assign_α
n00084_call_builtin_icon_β:
                                                                              jmp   item_ω
#-----------------------------------------------------------------------------------------------------------------------
n00085_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_α:             mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 736], rax           # result
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00087_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_integer_α:     mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00089_coerce_numeric_α
.Lx00088_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00089_coerce_numeric_α:  mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 5;                              je    .Lx00090_1
                        cmp              eax, 3;                              jne   .Lx00090_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 3;                              jne   .Lx00090_0
.Lx00090_1:               mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00091_binop_α
.Lx00090_0:               lea              rdi, [rsp + 736]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00091_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:           mov              eax, dword ptr [rsp + 720]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00092_2
                        mov              rax, qword ptr [rsp + 728]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax;          jmp   .Lx00092_7
.Lx00092_2:               and              edx, 1;                              jz    .Lx00092_0
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00092_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00092_4
.Lx00092_3:               movq             xmm0, rsi
.Lx00092_4:               cmp              ecx, 5;                              je    .Lx00092_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00092_6
.Lx00092_5:               movq             xmm1, rdi
.Lx00092_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 704], 5
                        mov              qword ptr [rsp + 712], rax
.Lx00092_7:                                                                     jmp   n00093_assign_α
.Lx00092_0:               mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00094_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00093_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_assign_α:          mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00094_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:             mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 640], rax           # result
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00095_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_lit_integer_α:     mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00097_call_builtin_icon_α
.Lx00096_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn325:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rsp + 592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n00098_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00099_lit_string_α
n00097_call_builtin_icon_β:
                                                                              jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 2
                        mov              rax, qword ptr [rip + .Lx00100_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00101_var_α
.Lx00100_0:               .quad            .Lx00100_0_s
.Lx00100_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:             mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn330:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rsp + 512]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00098_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00098_var_α
n00102_call_builtin_icon_β:
                                                                              jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_α:             mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00103_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn334:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00104_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00105_assign_α
n00103_call_builtin_icon_β:
                                                                              jmp   n00104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_assign_α:          mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00106_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00107_assign_α
.Lx00106_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:          mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00109_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_enter_α:      mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
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
                        mov              r14, 0;                              jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:     mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], -1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00112_scan_upto_α
.Lx00111_0:               .quad            .Lx00111_0_s
.Lx00111_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00112_scan_upto_α:       mov              qword ptr [rsp + 176], r14
.Lx00113_0:               mov              rax, qword ptr [rsp + 176]
                        cmp              rax, r15;                            jge   n00114_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00113_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx00113_1
                        mov              qword ptr [rsp + 160], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 168], rax;          jmp   n00115_scan_tab_α
.Lx00113_1:               inc              qword ptr [rsp + 176];               jmp   .Lx00113_0
n00112_scan_upto_β:       inc              qword ptr [rsp + 176];               jmp   .Lx00113_0
.Lx00113_2:               .quad            .Lx00113_2_s
.Lx00113_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_tab_α:        mov              rax, qword ptr [rsp + 168]
                        cmp              rax, 1;                              jge   .Lx00116_0
                        add              rax, r15
                        add              rax, 1
.Lx00116_0:               cmp              rax, 1;                              jl    n00112_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00112_scan_upto_β
                        mov              qword ptr [rsp + 144], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00117_lit_charset_α
n00115_scan_tab_β:        mov              r14, qword ptr [rsp + 144];          jmp   n00112_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_charset_α:     mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], -1
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00119_scan_many_α
.Lx00118_0:               .quad            .Lx00118_0_s
.Lx00118_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00119_scan_many_α:       mov              eax, r14d
.Lx00120_0:               cmp              eax, r15d;                           jge   .Lx00120_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00120_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx00120_1
                        add              eax, 1;                              jmp   .Lx00120_0
.Lx00120_1:               cmp              eax, r14d;                           je    n00121_disjunction_α
                        mov              qword ptr [rsp + 368], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 376], rcx;          jmp   n00122_scan_tab_α
n00119_scan_many_β:                                                             jmp   n00121_disjunction_α
.Lx00120_2:               .quad            .Lx00120_2_s
.Lx00120_2_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00122_scan_tab_α:        mov              rax, qword ptr [rsp + 376]
                        cmp              rax, 1;                              jge   .Lx00123_0
                        add              rax, r15
                        add              rax, 1
.Lx00123_0:               cmp              rax, 1;                              jl    n00121_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00121_disjunction_α
                        mov              qword ptr [rsp + 352], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00124_assign_α
n00122_scan_tab_β:        mov              r14, qword ptr [rsp + 352];          jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:          mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_disjunction_α:     mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n00125_var_α
n00121_disjunction_as:    mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx00126_0
                                                                              jmp   n00127_conjunction_α
.Lx00126_0:                                                                     jmp   n00127_conjunction_α
n00121_disjunction_β:     mov              eax, dword ptr [rsp + 240];          jmp   n00110_lit_charset_α
n00121_disjunction_af:    add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240];          jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_conjunction_α:     mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00110_lit_charset_α
n00127_conjunction_β:                                                           jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_var_α:             mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00128_unop_α
n00125_var_β:                                                                   jmp   n00121_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_unop_α:            mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_integer_α:     mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx00130_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00131_binop_test_α
.Lx00130_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_test_α:      mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 112;                            je    .Lx00132_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 112;                            je    .Lx00132_0
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 3;                              jne   .Lx00132_2
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 3;                              jne   .Lx00132_2
.Lx00132_1:               mov              rax, qword ptr [rsp + 296]
                        mov              rcx, qword ptr [rsp + 328]
                        cmp              rax, rcx;                            jl    n00121_disjunction_af
                        mov              rcx, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rcx
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rcx;          jmp   n00133_var_α
.Lx00132_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 8
                        lea              r9, [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00132_1
                        cmp              eax, 1;                              je    n00121_disjunction_af
                                                                              jmp   n00133_var_α
.Lx00132_2:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00121_disjunction_af
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_α:             mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00083_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_suspend_α:         lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   item_γ
n00083_suspend_β:         push             rax
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
                        pop              rax;                                 jmp   n00121_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_α:            lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 80]
                        mov              r14, qword ptr [rsp + 88]
                        mov              r15, qword ptr [rsp + 96];           jmp   n00084_call_builtin_icon_α
n00114_scan_β:                                                                  jmp   n00084_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
item_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
item_β:
                                                                              jmp   n00083_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
item_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
item_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 2928
                        mov              qword ptr [rsp + 2904], rcx
                        mov              qword ptr [rsp + 2912], rdx
                        mov              rdi, rsp
                        add              rdi, 2608
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00134_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00135_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_nulltest_var_α:    mov              eax, dword ptr [rsp + 2496]
                        cmp              eax, 104;                            je    n00136_call_builtin_icon_α
                        mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00136_call_builtin_icon_α
                        cmp              eax, 0;                              jne   n00136_call_builtin_icon_α
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n00137_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_lit_charset_α:     mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00138_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00139_call_builtin_icon_α
.Lx00138_0:               .quad            .Lx00138_0_s
.Lx00138_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn478:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              eax, 104;                            je    n00136_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00140_assign_var_α
n00139_call_builtin_icon_β:
                                                                              jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_assign_var_α:      mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              rdx, qword ptr [rsp + 2544]
                        mov              rcx, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00136_call_builtin_icon_α
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn481:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              eax, 104;                            je    n00141_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00142_assign_α
n00136_call_builtin_icon_β:
                                                                              jmp   n00141_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:          mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00141_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_make_list_α:       lea              rdi, [rsp + 2464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_α:          mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn489:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn489]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00146_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00147_assign_α
n00145_call_builtin_icon_β:
                                                                              jmp   n00146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_assign_α:          mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n00148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_α:             mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00149_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_scan_enter_α:      mov              rdi, qword ptr [rsp + 2432]
                        mov              rsi, qword ptr [rsp + 2440]
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
                        mov              r14, 0;                              jmp   n00150_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_disjunction_α:     mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n00151_lit_string_α
n00150_disjunction_as:    mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx00152_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00153_scan_α
.Lx00152_0:               cmp              eax, 1;                              jne   .Lx00152_1
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00153_scan_α
.Lx00152_1:                                                                     jmp   n00153_scan_α
n00150_disjunction_β:     mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n00154_disjunction_β
                                                                              jmp   n00155_scan_α
n00150_disjunction_af:    add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n00156_var_α
                                                                              jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_α:            mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00144_var_α
n00153_scan_β:            mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r14, rax;                            jmp   n00150_disjunction_β
                                                                              jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_conjunction_α:                                                           jmp   n00150_disjunction_as
n00157_conjunction_β:                                                           jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_var_α:             mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00158_var_α
n00156_var_β:                                                                   jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n00159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn505:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104;                            je    n00155_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00150_disjunction_as
n00159_call_builtin_icon_β:
                                                                              jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_string_α:      mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00160_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00161_scan_match_α
n00151_lit_string_β:                                                            jmp   n00150_disjunction_af
.Lx00160_0:               .quad            .Lx00160_0_s
.Lx00160_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00150_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00162_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n00150_disjunction_af
                        mov              qword ptr [rsp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00163_scan_tab_α
.Lx00162_0:               .quad            .Lx00162_0_s
.Lx00162_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_tab_α:        mov              rax, qword ptr [rsp + 2296]
                        cmp              rax, 1;                              jge   .Lx00164_0
                        add              rax, r15
                        add              rax, 1
.Lx00164_0:               cmp              rax, 1;                              jl    n00150_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00150_disjunction_af
                        mov              qword ptr [rsp + 2272], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00165_lit_integer_α
n00163_scan_tab_β:        mov              r14, qword ptr [rsp + 2272];         jmp   n00150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx00166_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00167_scan_pos_α
.Lx00166_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00167_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00168_0
                        add              rax, r15
                        add              rax, 1
.Lx00168_0:               cmp              rax, 1;                              jl    n00169_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00169_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00169_var_α
                        mov              qword ptr [rsp + 2224], 3
                        mov              qword ptr [rsp + 2232], rax;         jmp   n00163_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:             mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0;           jmp   n00170_conjunction_α
n00169_var_β:                                                                   jmp   n00163_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00170_conjunction_α:     mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00171_disjunction_α
n00170_conjunction_β:                                                           jmp   n00150_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00171_disjunction_α:     mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              dword ptr [rsp + 2048], 0;           jmp   n00172_lit_string_α
n00171_disjunction_as:    mov              eax, dword ptr [rsp + 2048]
                        cmp              eax, 0;                              jne   .Lx00173_0
                                                                              jmp   n00174_lit_integer_α
.Lx00173_0:                                                                     jmp   n00174_lit_integer_α
n00171_disjunction_β:     mov              eax, dword ptr [rsp + 2048];         jmp   n00174_lit_integer_α
n00171_disjunction_af:    add              dword ptr [rsp + 2048], 1
                        mov              eax, dword ptr [rsp + 2048];         jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_integer_α:     mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx00175_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00176_scan_move_α
.Lx00175_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00176_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00155_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00155_scan_α
                        mov              qword ptr [rsp + 432], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00177_assign_α
n00176_scan_move_β:       mov              r14, qword ptr [rsp + 432];          jmp   n00155_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_assign_α:          mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_disjunction_α:     mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00178_var_α
n00154_disjunction_as:    mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx00179_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00174_lit_integer_α
.Lx00179_0:               cmp              eax, 1;                              jne   .Lx00179_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00174_lit_integer_α
.Lx00179_1:                                                                     jmp   n00174_lit_integer_α
n00154_disjunction_β:     mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00180_disjunction_β
                                                                              jmp   n00174_lit_integer_α
n00154_disjunction_af:    add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00181_lit_string_α
                                                                              jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_string_α:      mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00182_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00183_var_α
n00181_lit_string_β:                                                            jmp   n00174_lit_integer_α
.Lx00182_0:               .quad            .Lx00182_0_s
.Lx00182_0_s:             .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00183_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00184_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00184_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn528:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104;                            je    n00174_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00154_disjunction_as
n00184_call_builtin_icon_β:
                                                                              jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00185_var_α
n00178_var_β:                                                                   jmp   n00154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00186_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        mov              qword ptr [rsp + 1872], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00187_60:              .section         .rodata
.Lbynamegenfn188:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn188]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 2
                        lea              rcx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 104;                            je    n00154_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00188_lit_integer_α
n00186_call_builtin_gen_β:
                                                                              jmp   .Lx00187_60
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_integer_α:     mov              qword ptr [rsp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00190_coerce_numeric_α
.Lx00189_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00190_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 5;                              je    .Lx00191_1
                        cmp              eax, 3;                              jne   .Lx00191_0
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 3;                              jne   .Lx00191_0
.Lx00191_1:               mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00192_binop_α
.Lx00191_0:               lea              rdi, [rsp + 1824]
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1808]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00192_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00192_binop_α:           mov              eax, dword ptr [rsp + 1808]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00193_2
                        mov              rax, qword ptr [rsp + 1816]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1792], 3
                        mov              qword ptr [rsp + 1800], rax;         jmp   .Lx00193_7
.Lx00193_2:               and              edx, 1;                              jz    .Lx00193_0
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00193_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00193_4
.Lx00193_3:               movq             xmm0, rsi
.Lx00193_4:               cmp              ecx, 5;                              je    .Lx00193_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00193_6
.Lx00193_5:               movq             xmm1, rdi
.Lx00193_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1792], 5
                        mov              qword ptr [rsp + 1800], rax
.Lx00193_7:                                                                     jmp   n00194_assign_α
.Lx00193_0:               mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00154_disjunction_af
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00194_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:          mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n00195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n00196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00197_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_subscript_α:       mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00174_lit_integer_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00180_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_disjunction_α:     mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00198_lit_charset_α
n00180_disjunction_as:    mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx00199_0
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00200_assign_var_α
.Lx00199_0:               cmp              eax, 1;                              jne   .Lx00199_1
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00200_assign_var_α
.Lx00199_1:                                                                     jmp   n00200_assign_var_α
n00180_disjunction_β:     mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              je    n00174_lit_integer_α
                                                                              jmp   n00174_lit_integer_α
n00180_disjunction_af:    add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 1;                              je    n00201_lit_integer_α
                                                                              jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_var_α:      mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00174_lit_integer_α
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00154_disjunction_as
n00200_assign_var_β:                                                            jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_lit_integer_α:     mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx00202_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00180_disjunction_as
n00201_lit_integer_β:                                                           jmp   n00174_lit_integer_α
.Lx00202_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_charset_α:     mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00203_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00204_var_ref_α
n00198_lit_charset_β:                                                           jmp   n00180_disjunction_af
.Lx00203_0:               .quad            .Lx00203_0_s
.Lx00203_0_s:             .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n00205_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:             mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n00206_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00206_subscript_α:       mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00180_disjunction_af
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00207_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_deref_α:           mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00180_disjunction_af
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n00208_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00208_assign_α:          mov              rax, qword ptr [rsp + 1760]
                        mov              rdx, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn205:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn205]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        push             rax
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
                        cmp              eax, 104;                            je    n00180_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00210_disjunction_α
n00209_call_builtin_icon_β:
                                                                              jmp   n00180_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00210_disjunction_α:     mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n00211_lit_string_α
n00210_disjunction_as:    mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx00212_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00213_assign_α
.Lx00212_0:               cmp              eax, 1;                              jne   .Lx00212_1
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00213_assign_α
.Lx00212_1:               cmp              eax, 2;                              jne   .Lx00212_2
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n00213_assign_α
.Lx00212_2:                                                                     jmp   n00213_assign_α
n00210_disjunction_β:     mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n00210_disjunction_af
                        cmp              eax, 1;                              je    n00210_disjunction_af
                                                                              jmp   n00210_disjunction_af
n00210_disjunction_af:    add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n00214_var_α
                        cmp              eax, 2;                              je    n00215_lit_string_α
                                                                              jmp   n00216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_assign_α:          mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n00216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00216_var_α:             mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00218_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n00219_call_builtin_α
.Lx00218_0:               .quad            .Lx00218_0_s
.Lx00218_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00219_call_builtin_α:    mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn564:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n00220_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00221_var_α
n00219_call_builtin_β:                                                          jmp   n00220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n00222_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_assign_α:          mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00224_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00225_call_builtin_α
.Lx00224_0:               .quad            .Lx00224_0_s
.Lx00224_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_builtin_α:    mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn570:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n00226_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00227_disjunction_α
n00225_call_builtin_β:                                                          jmp   n00226_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_disjunction_α:     mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              dword ptr [rsp + 976], 0;            jmp   n00228_var_α
n00227_disjunction_as:    mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              jne   .Lx00229_0
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00230_assign_α
.Lx00229_0:               cmp              eax, 1;                              jne   .Lx00229_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00230_assign_α
.Lx00229_1:                                                                     jmp   n00230_assign_α
n00227_disjunction_β:     mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 0;                              je    n00227_disjunction_af
                                                                              jmp   n00227_disjunction_af
n00227_disjunction_af:    add              dword ptr [rsp + 976], 1
                        mov              eax, dword ptr [rsp + 976]
                        cmp              eax, 1;                              je    n00231_lit_string_α
                                                                              jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_assign_α:          mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00232_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00233_var_α
n00231_lit_string_β:                                                            jmp   n00227_disjunction_af
.Lx00232_0:               .quad            .Lx00232_0_s
.Lx00232_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00233_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_string_α:      mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00236_call_builtin_icon_α
.Lx00235_0:               .quad            .Lx00235_0_s
.Lx00235_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn579:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n00227_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00227_disjunction_as
n00236_call_builtin_icon_β:
                                                                              jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00237_call_builtin_icon_α
n00228_var_β:                                                                   jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00237_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn583:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn583]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n00227_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00227_disjunction_as
n00237_call_builtin_icon_β:
                                                                              jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00238_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00239_call_builtin_α
.Lx00238_0:               .quad            .Lx00238_0_s
.Lx00238_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00239_call_builtin_α:    mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn586:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn586]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n00174_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00240_disjunction_α
n00239_call_builtin_β:                                                          jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00240_disjunction_α:     mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              dword ptr [rsp + 672], 0;            jmp   n00241_var_α
n00240_disjunction_as:    mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              jne   .Lx00242_0
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00243_assign_α
.Lx00242_0:               cmp              eax, 1;                              jne   .Lx00242_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00243_assign_α
.Lx00242_1:                                                                     jmp   n00243_assign_α
n00240_disjunction_β:     mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 0;                              je    n00240_disjunction_af
                                                                              jmp   n00240_disjunction_af
n00240_disjunction_af:    add              dword ptr [rsp + 672], 1
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 1;                              je    n00244_lit_string_α
                                                                              jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00243_assign_α:          mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:             mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00245_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_conjunction_α:     mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00180_disjunction_as
n00245_conjunction_β:                                                           jmp   n00174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_string_α:      mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00246_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00247_var_α
n00244_lit_string_β:                                                            jmp   n00240_disjunction_af
.Lx00246_0:               .quad            .Lx00246_0_s
.Lx00246_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00248_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00249_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00250_call_builtin_icon_α
.Lx00249_0:               .quad            .Lx00249_0_s
.Lx00249_0_s:             .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn598:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]
                        lea              rsi, [rsp + 768]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n00240_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00240_disjunction_as
n00250_call_builtin_icon_β:
                                                                              jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00241_var_α:             mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00251_call_builtin_icon_α
n00241_var_β:                                                                   jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn602:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn602]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n00240_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00240_disjunction_as
n00251_call_builtin_icon_β:
                                                                              jmp   n00240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00252_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n00253_var_α
n00215_lit_string_β:                                                            jmp   n00210_disjunction_af
.Lx00252_0:               .quad            .Lx00252_0_s
.Lx00252_0_s:             .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00254_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn607:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104;                            je    n00210_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00210_disjunction_as
n00254_call_builtin_icon_β:
                                                                              jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n00255_call_builtin_icon_α
n00214_var_β:                                                                   jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00255_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn611:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn611]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n00210_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00210_disjunction_as
n00255_call_builtin_icon_β:
                                                                              jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00211_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00256_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00257_lit_integer_α
n00211_lit_string_β:                                                            jmp   n00210_disjunction_af
.Lx00256_0:               .quad            .Lx00256_0_s
.Lx00256_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_integer_α:     mov              qword ptr [rsp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Lx00258_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00259_scan_tab_α
.Lx00258_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00259_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00260_0
                        add              rax, r15
                        add              rax, 1
.Lx00260_0:               cmp              rax, 1;                              jl    n00210_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00210_disjunction_af
                        mov              qword ptr [rsp + 1424], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00261_binop_test_α
n00259_scan_tab_β:        mov              r14, qword ptr [rsp + 1424];         jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00261_binop_test_α:      mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00210_disjunction_af
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00210_disjunction_as
n00261_binop_test_β:                                                            jmp   n00210_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_α:            lea              rdi, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00144_var_α
n00155_scan_β:                                                                  jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00262_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00263_scan_match_α
n00172_lit_string_β:                                                            jmp   n00171_disjunction_af
.Lx00262_0:               .quad            .Lx00262_0_s
.Lx00262_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00263_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00171_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx00264_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            jne   n00171_disjunction_af
                        mov              qword ptr [rsp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00265_scan_tab_α
.Lx00264_0:               .quad            .Lx00264_0_s
.Lx00264_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00265_scan_tab_α:        mov              rax, qword ptr [rsp + 2152]
                        cmp              rax, 1;                              jge   .Lx00266_0
                        add              rax, r15
                        add              rax, 1
.Lx00266_0:               cmp              rax, 1;                              jl    n00171_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00171_disjunction_af
                        mov              qword ptr [rsp + 2128], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n00267_lit_integer_α
n00265_scan_tab_β:        mov              r14, qword ptr [rsp + 2128];         jmp   n00171_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00267_lit_integer_α:     mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx00268_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n00269_scan_pos_α
.Lx00268_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00269_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00270_0
                        add              rax, r15
                        add              rax, 1
.Lx00270_0:               cmp              rax, 1;                              jl    n00265_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00265_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00265_scan_tab_β
                        mov              qword ptr [rsp + 2080], 3
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00271_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_conjunction_α:     mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n00146_var_α
n00271_conjunction_β:                                                           jmp   n00171_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00272_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_α:             mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00273_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn633:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn633]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n00274_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00275_call_builtin_icon_α
n00273_call_builtin_icon_β:
                                                                              jmp   n00274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn635:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rsp + 80]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n00274_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00146_var_α
n00275_call_builtin_icon_β:
                                                                              jmp   n00274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_var_α:             mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00276_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00276_return_α:          mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   options_γ
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2904]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        mov              rcx, qword ptr [rsp + 2912]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
options_dcα:
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
                        lea              rcx, [rip + .Lx00277_2]
                        lea              rdx, [rip + .Lx00277_3];               jmp   FN__options
.Lx00277_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00277_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              rdi, rsp
                        add              rdi, 400
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00279_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00279_assign_α:          mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [r9 + 96], rax             # Name__
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00280_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00280_call_proc_staged_α:
                        call             Signature___dcα;                     jmp   .Lx00281_2
.Lx00281_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00281_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx00281_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n00282_call_proc_staged_α
                                                                              jmp   n00282_call_proc_staged_α
n00280_call_proc_staged_β:
                                                                              jmp   n00282_call_proc_staged_α
.Lx00281_0:               .quad            .Lx00281_0_s
.Lx00281_0_s:             .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00282_call_proc_staged_α:
                        call             Regions___dcα;                       jmp   .Lx00283_2
.Lx00283_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00283_29
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
.Lx00283_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n00284_call_proc_staged_α
                                                                              jmp   n00284_call_proc_staged_α
n00282_call_proc_staged_β:
                                                                              jmp   n00284_call_proc_staged_α
.Lx00283_0:               .quad            .Lx00283_0_s
.Lx00283_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00284_call_proc_staged_α:
                        call             Time___dcα;                          jmp   .Lx00285_2
.Lx00285_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00285_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
.Lx00285_29:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00286_disjunction_α
                                                                              jmp   n00286_disjunction_α
n00284_call_proc_staged_β:
                                                                              jmp   n00286_disjunction_α
.Lx00285_0:               .quad            .Lx00285_0_s
.Lx00285_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00286_disjunction_α:     mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00287_lit_string_α
n00286_disjunction_as:    mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00288_0
                                                                              jmp   n00289_var_α
.Lx00288_0:                                                                     jmp   n00289_var_α
n00286_disjunction_β:     mov              eax, dword ptr [rsp + 128];          jmp   n00289_var_α
n00286_disjunction_af:    add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:             mov              rdi, qword ptr [rip + .Lx00290_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00291_var_α
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00292_assign_α
.Lx00290_0:               .quad            .Lx00290_0_s
.Lx00290_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00292_assign_α:          mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [r9 + 64], rax             # Save__
                        mov              qword ptr [r9 + 72], rdx;            jmp   n00291_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_α:             mov              rdi, qword ptr [rip + .Lx00293_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00294_lit_integer_α
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00295_assign_α
.Lx00293_0:               .quad            .Lx00293_0_s
.Lx00293_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [r9 + 80], rax             # Saves__
                        mov              qword ptr [r9 + 88], rdx;            jmp   n00294_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00296_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00297_assign_α
.Lx00296_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, qword ptr [rip + .Lx00298_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00299_assign_α
.Lx00298_0:               .quad            .Lx00298_0_s
.Lx00298_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00299_assign_α:          mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rip + .Lx00300_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00301_return_α
.Lx00300_0:               .quad            .Lx00300_0_s
.Lx00300_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00301_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00302_conjunction_α:                                                           jmp   n00286_disjunction_as
n00302_conjunction_β:                                                           jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00303_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00304_call_builtin_icon_α
n00287_lit_string_β:                                                            jmp   n00286_disjunction_af
.Lx00303_0:               .quad            .Lx00303_0_s
.Lx00303_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn682:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00286_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00305_lit_string_α
n00304_call_builtin_icon_β:
                                                                              jmp   n00286_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00305_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00306_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00307_call_builtin_icon_α
.Lx00306_0:               .quad            .Lx00306_0_s
.Lx00306_0_s:             .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00307_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn685:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00308_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00308_return_α
n00307_call_builtin_icon_β:
                                                                              jmp   n00308_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Init___γ
#-----------------------------------------------------------------------------------------------------------------------
Init___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Init___β:
                                                                              jmp   Init___ω
#-----------------------------------------------------------------------------------------------------------------------
Init___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Init___dcα:
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
                        lea              rcx, [rip + .Lx00309_2]
                        lea              rdx, [rip + .Lx00309_3];               jmp   FN__Init__
.Lx00309_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00309_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              rdi, rsp
                        add              rdi, 448
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00310_disjunction_α:     mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n00311_lit_string_α
n00310_disjunction_as:    mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx00312_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00313_var_α
.Lx00312_0:                                                                     jmp   n00313_var_α
n00310_disjunction_β:     mov              eax, dword ptr [rsp + 272];          jmp   n00313_var_α
n00310_disjunction_af:    add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   n00313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00311_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00314_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00315_call_builtin_icon_α
n00311_lit_string_β:                                                            jmp   n00316_var_α
.Lx00314_0:               .quad            .Lx00314_0_s
.Lx00314_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00315_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn709:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn709]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n00316_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00310_disjunction_af
n00315_call_builtin_icon_β:
                                                                              jmp   n00316_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_α:             mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0;            jmp   n00317_var_α
n00316_var_β:                                                                   jmp   n00310_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:             mov              rax, qword ptr [r9 + 64]             # Save__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 352], rax           # result
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00318_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_assign_α:          mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rip + .Lx00319_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00320_var_α
.Lx00319_0:               .quad            .Lx00319_0_s
.Lx00319_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00320_var_α:             mov              rax, qword ptr [r9 + 80]             # Saves__
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_assign_α:          mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              rdi, qword ptr [rip + .Lx00322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00323_conjunction_α
.Lx00322_0:               .quad            .Lx00322_0_s
.Lx00322_0_s:             .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00323_conjunction_α:     mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00310_disjunction_as
n00323_conjunction_β:                                                           jmp   n00313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_α:             mov              rax, qword ptr [r9 + 96]             # Name__
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00325_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00326_call_proc_staged_α
.Lx00325_0:               .quad            .Lx00325_0_s
.Lx00325_0_s:             .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00326_call_proc_staged_α:
                        call             Time___dcα;                          jmp   .Lx00327_2
.Lx00327_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00327_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx00327_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n00328_call_proc_staged_α
                                                                              jmp   n00329_call_builtin_icon_α
n00326_call_proc_staged_β:
                                                                              jmp   n00328_call_proc_staged_α
.Lx00327_0:               .quad            .Lx00327_0_s
.Lx00327_0_s:             .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00329_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn721:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rsp + 128]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n00328_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00328_call_proc_staged_α
n00329_call_builtin_icon_β:
                                                                              jmp   n00328_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_proc_staged_α:
                        call             Regions___dcα;                       jmp   .Lx00330_2
.Lx00330_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00330_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx00330_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n00331_call_proc_staged_α
                                                                              jmp   n00331_call_proc_staged_α
n00328_call_proc_staged_β:
                                                                              jmp   n00331_call_proc_staged_α
.Lx00330_0:               .quad            .Lx00330_0_s
.Lx00330_0_s:             .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00331_call_proc_staged_α:
                        call             Storage___dcα;                       jmp   .Lx00332_2
.Lx00332_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00332_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx00332_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n00333_call_proc_staged_α
                                                                              jmp   n00333_call_proc_staged_α
n00331_call_proc_staged_β:
                                                                              jmp   n00333_call_proc_staged_α
.Lx00332_0:               .quad            .Lx00332_0_s
.Lx00332_0_s:             .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00333_call_proc_staged_α:
                        call             Collections___dcα;                   jmp   .Lx00334_2
.Lx00334_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00334_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
.Lx00334_29:              mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n00335_return_α
                                                                              jmp   n00335_return_α
n00333_call_proc_staged_β:
                                                                              jmp   n00335_return_α
.Lx00334_0:               .quad            .Lx00334_0_s
.Lx00334_0_s:             .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00335_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Term___γ
#-----------------------------------------------------------------------------------------------------------------------
Term___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Term___β:
                                                                              jmp   Term___ω
#-----------------------------------------------------------------------------------------------------------------------
Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00336_2]
                        lea              rdx, [rip + .Lx00336_3];               jmp   FN__Term__
.Lx00336_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00336_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              rdi, rsp
                        add              rdi, 880
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00337_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00338_var_ref_α
n00337_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00339_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00340_make_list_α
.Lx00339_0:                                                                     jmp   n00340_make_list_α
n00337_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00340_make_list_α
n00337_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00340_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00340_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00341_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00342_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_var_α:             mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00343_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00344_1:               mov              rdi, qword ptr [rip + .Lx00344_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00345_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00346_call_builtin_icon_α
n00343_keyword_icon_gen_β:
                                                                              jmp   .Lx00344_1
.Lx00344_0:               .quad            .Lx00344_0_s
.Lx00344_0_s:             .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00346_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn776:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00343_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00343_keyword_icon_gen_β
n00346_call_builtin_icon_β:
                                                                              jmp   n00343_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00345_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00347_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00348_call_builtin_icon_α
.Lx00347_0:               .quad            .Lx00347_0_s
.Lx00347_0_s:             .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00349_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00349_lit_integer_α
n00348_call_builtin_icon_β:
                                                                              jmp   n00349_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00350_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00351_var_α
.Lx00350_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_α:             mov              rax, qword ptr [r9 + 112]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00352_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00353_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
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
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00354_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00355_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00356_assign_α
n00353_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00354_0
#-----------------------------------------------------------------------------------------------------------------------
n00356_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00357_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052400                      # Collections____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_α:             mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00360_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00362_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00363_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_var_α:             mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00365_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00366_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00367_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00368_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00369_call_builtin_icon_α
.Lx00368_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00369_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn802:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn802]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00370_call_builtin_icon_α
n00369_call_builtin_icon_β:
                                                                              jmp   n00361_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn804:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn804]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00361_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00361_unmark_α
n00370_call_builtin_icon_β:
                                                                              jmp   n00361_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00361_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00353_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00355_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00338_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052416                      # Collections____INITFLAG__0
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00371_nulltest_var_α
n00338_var_ref_β:                                                               jmp   n00337_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00371_nulltest_var_α:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 104;                            je    n00337_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00337_disjunction_af
                        cmp              eax, 0;                              jne   n00337_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00372_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx00373_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00374_assign_var_α
.Lx00373_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00374_assign_var_α:      mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00337_disjunction_af
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00375_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00376_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00377_lit_string_α
.Lx00376_0:               .quad            .Lx00376_0_s
.Lx00376_0_s:             .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00377_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00378_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00379_lit_string_α
.Lx00378_0:               .quad            .Lx00378_0_s
.Lx00378_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00379_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00380_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00381_lit_string_α
.Lx00380_0:               .quad            .Lx00380_0_s
.Lx00380_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00382_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00383_make_list_α
.Lx00382_0:               .quad            .Lx00382_0_s
.Lx00382_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00383_make_list_α:       mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00384_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 112], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00337_disjunction_as
n00384_assign_β:                                                                jmp   n00340_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Collections___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Collections___β:
                                                                              jmp   Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 952]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        mov              rcx, qword ptr [rsp + 960]
                        add              rsp, 976;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00385_2]
                        lea              rdx, [rip + .Lx00385_3];               jmp   FN__Collections__
.Lx00385_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00385_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00386_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00387_var_ref_α
n00386_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00388_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00389_make_list_α
.Lx00388_0:                                                                     jmp   n00389_make_list_α
n00386_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00389_make_list_α
n00386_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00389_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00390_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00392_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00393_1:               mov              rdi, qword ptr [rip + .Lx00393_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00394_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00395_call_builtin_icon_α
n00392_keyword_icon_gen_β:
                                                                              jmp   .Lx00393_1
.Lx00393_0:               .quad            .Lx00393_0_s
.Lx00393_0_s:             .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00395_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn866:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn866]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00392_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00392_keyword_icon_gen_β
n00395_call_builtin_icon_β:
                                                                              jmp   n00392_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00396_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00397_call_builtin_icon_α
.Lx00396_0:               .quad            .Lx00396_0_s
.Lx00396_0_s:             .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00397_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn869:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00398_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00398_lit_integer_α
n00397_call_builtin_icon_β:
                                                                              jmp   n00398_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00399_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00400_var_α
.Lx00399_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00400_var_α:             mov              rax, qword ptr [r9 + 144]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00401_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00402_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00402_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
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
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00403_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00404_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00405_assign_α
n00402_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00403_0
#-----------------------------------------------------------------------------------------------------------------------
n00405_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00406_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00407_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052432                      # Regions____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00409_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00411_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00412_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00412_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00413_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00413_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00414_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00415_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00416_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00417_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00418_call_builtin_icon_α
.Lx00417_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00418_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn892:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn892]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00419_call_builtin_icon_α
n00418_call_builtin_icon_β:
                                                                              jmp   n00410_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn894:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00410_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00410_unmark_α
n00419_call_builtin_icon_β:
                                                                              jmp   n00410_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00402_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00404_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00387_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052448                      # Regions____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00420_nulltest_var_α
n00387_var_ref_β:                                                               jmp   n00386_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00420_nulltest_var_α:    mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 104;                            je    n00386_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00386_disjunction_af
                        cmp              eax, 0;                              jne   n00386_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00421_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_lit_integer_α:     mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00422_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00423_assign_var_α
.Lx00422_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00423_assign_var_α:      mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00386_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00424_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00425_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00426_lit_string_α
.Lx00425_0:               .quad            .Lx00425_0_s
.Lx00425_0_s:             .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00426_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00428_lit_string_α
.Lx00427_0:               .quad            .Lx00427_0_s
.Lx00427_0_s:             .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00428_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00429_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00430_make_list_α
.Lx00429_0:               .quad            .Lx00429_0_s
.Lx00429_0_s:             .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00430_make_list_α:       mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00431_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00431_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 144], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00386_disjunction_as
n00431_assign_β:                                                                jmp   n00389_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Regions___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Regions___β:
                                                                              jmp   Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00432_2]
                        lea              rdx, [rip + .Lx00432_3];               jmp   FN__Regions__
.Lx00432_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00432_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00433_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00434_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00435_keyword_icon_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00436_call_builtin_icon_α
n00433_keyword_icon_β:                                                          jmp   n00435_keyword_icon_α
.Lx00434_0:               .quad            .Lx00434_0_s
.Lx00434_0_s:             .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00436_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn919:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn919]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n00435_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00435_keyword_icon_α
n00436_call_builtin_icon_β:
                                                                              jmp   n00435_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00435_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00437_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00438_keyword_icon_gen_α
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00439_call_builtin_icon_α
n00435_keyword_icon_β:                                                          jmp   n00438_keyword_icon_gen_α
.Lx00437_0:               .quad            .Lx00437_0_s
.Lx00437_0_s:             .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00439_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn922:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn922]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n00438_keyword_icon_gen_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00438_keyword_icon_gen_α
n00439_call_builtin_icon_β:
                                                                              jmp   n00438_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 80], 0
.Lx00440_1:               mov              rdi, qword ptr [rip + .Lx00440_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00441_return_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              rax, qword ptr [rsp + 80]
                        add              rax, 1
                        mov              qword ptr [rsp + 80], rax;           jmp   n00442_call_builtin_icon_α
n00438_keyword_icon_gen_β:
                                                                              jmp   .Lx00440_1
.Lx00440_0:               .quad            .Lx00440_0_s
.Lx00440_0_s:             .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00442_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lrkfn925:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn925]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n00438_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00438_keyword_icon_gen_β
n00442_call_builtin_icon_β:
                                                                              jmp   n00438_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00441_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
Signature___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Signature___β:
                                                                              jmp   Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
Signature___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00443_2]
                        lea              rdx, [rip + .Lx00443_3];               jmp   FN__Signature__
.Lx00443_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00443_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 848
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00444_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n00445_var_ref_α
n00444_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx00446_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00447_make_list_α
.Lx00446_0:                                                                     jmp   n00447_make_list_α
n00444_disjunction_β:     mov              eax, dword ptr [rsp + 640];          jmp   n00447_make_list_α
n00444_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640];          jmp   n00447_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_make_list_α:       lea              rdi, [rsp + 624]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00448_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00449_var_α:             mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00450_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_keyword_icon_gen_α:
                        mov              qword ptr [rsp + 592], 0
.Lx00451_1:               mov              rdi, qword ptr [rip + .Lx00451_0]
                        mov              rsi, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00452_lit_string_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              rax, qword ptr [rsp + 592]
                        add              rax, 1
                        mov              qword ptr [rsp + 592], rax;          jmp   n00453_call_builtin_icon_α
n00450_keyword_icon_gen_β:
                                                                              jmp   .Lx00451_1
.Lx00451_0:               .quad            .Lx00451_0_s
.Lx00451_0_s:             .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00453_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn973:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn973]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n00450_keyword_icon_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00450_keyword_icon_gen_β
n00453_call_builtin_icon_β:
                                                                              jmp   n00450_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00452_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00454_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00455_call_builtin_icon_α
.Lx00454_0:               .quad            .Lx00454_0_s
.Lx00454_0_s:             .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00455_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn976:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n00456_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00456_lit_integer_α
n00455_call_builtin_icon_β:
                                                                              jmp   n00456_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_lit_integer_α:     mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx00457_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00458_var_α
.Lx00457_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00458_var_α:             mov              rax, qword ptr [r9 + 176]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00459_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_unop_α:            mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00460_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_to_α:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
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
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 48], rax
.Lx00461_0:               mov              rax, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              rax, rcx;                            jg    n00462_return_α
                        mov              qword ptr [rsp + 32], 3
                        mov              qword ptr [rsp + 40], rax;           jmp   n00463_assign_α
n00460_to_β:              inc              qword ptr [rsp + 48];                jmp   .Lx00461_0
#-----------------------------------------------------------------------------------------------------------------------
n00463_assign_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00464_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n00465_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052464                      # Storage____STATIC__labels
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00467_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_subscript_α:       mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00469_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00470_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 864]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n00471_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_var_α:             mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00472_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_subscript_α:       mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00473_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_deref_α:           mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00476_call_builtin_icon_α
.Lx00475_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00476_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn999:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00477_call_builtin_icon_α
n00476_call_builtin_icon_β:
                                                                              jmp   n00468_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn1001:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1001]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n00468_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00468_unmark_α
n00477_call_builtin_icon_β:
                                                                              jmp   n00468_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n00460_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00462_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00445_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052480                      # Storage____INITFLAG__0
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n00478_nulltest_var_α
n00445_var_ref_β:                                                               jmp   n00444_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00478_nulltest_var_α:    mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 104;                            je    n00444_disjunction_af
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00444_disjunction_af
                        cmp              eax, 0;                              jne   n00444_disjunction_af
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00479_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_lit_integer_α:     mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00480_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00481_assign_var_α
.Lx00480_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00481_assign_var_α:      mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00444_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00483_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00484_lit_string_α
.Lx00483_0:              .quad            .Lx00483_0_s
.Lx00483_0_s:            .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:      mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00485_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00486_lit_string_α
.Lx00485_0:              .quad            .Lx00485_0_s
.Lx00485_0_s:            .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00486_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00487_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00488_make_list_α
.Lx00487_0:              .quad            .Lx00487_0_s
.Lx00487_0_s:            .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00488_make_list_α:       mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n00489_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 176], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n00444_disjunction_as
n00489_assign_β:                                                                jmp   n00447_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
Storage___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Storage___β:
                                                                              jmp   Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00490_2]
                        lea              rdx, [rip + .Lx00490_3];              jmp   FN__Storage__
.Lx00490_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx00490_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00491_disjunction_α:    mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              dword ptr [rsp + 128], 0;            jmp   n00492_var_ref_α
n00491_disjunction_as:   mov              eax, dword ptr [rsp + 128]
                        cmp              eax, 0;                              jne   .Lx00493_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00494_keyword_icon_α
.Lx00493_0:                                                                    jmp   n00494_keyword_icon_α
n00491_disjunction_β:    mov              eax, dword ptr [rsp + 128];          jmp   n00494_keyword_icon_α
n00491_disjunction_af:   add              dword ptr [rsp + 128], 1
                        mov              eax, dword ptr [rsp + 128];          jmp   n00494_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_keyword_icon_α:   mov              rdi, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    Time___ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00496_var_α
n00494_keyword_icon_β:                                                         jmp   Time___ω
.Lx00495_0:              .quad            .Lx00495_0_s
.Lx00495_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00496_var_α:            mov              rax, qword ptr [r9 + 208]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00497_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_coerce_numeric_α: mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 5;                              je    .Lx00498_1
                        cmp              eax, 3;                              jne   .Lx00498_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3;                              jne   .Lx00498_0
.Lx00498_1:              mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00499_coerce_numeric_α
.Lx00498_0:              lea              rdi, [rsp + 64]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 48]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00499_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_coerce_numeric_α: mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 5;                              je    .Lx00500_1
                        cmp              eax, 3;                              jne   .Lx00500_0
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3;                              jne   .Lx00500_0
.Lx00500_1:              mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00501_binop_α
.Lx00500_0:              lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 32]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00501_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00501_binop_α:          mov              eax, dword ptr [rsp + 48]
                        mov              ecx, dword ptr [rsp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00502_2
                        mov              rax, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 40]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   .Lx00502_7
.Lx00502_2:              and              edx, 1;                              jz    .Lx00502_0
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdi, qword ptr [rsp + 40]
                        cmp              eax, 5;                              je    .Lx00502_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00502_4
.Lx00502_3:              movq             xmm0, rsi
.Lx00502_4:              cmp              ecx, 5;                              je    .Lx00502_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00502_6
.Lx00502_5:              movq             xmm1, rdi
.Lx00502_6:              subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 16], 5
                        mov              qword ptr [rsp + 24], rax
.Lx00502_7:                                                                    jmp   n00503_return_α
.Lx00502_0:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    Time___ω
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00503_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00503_return_α:         mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00492_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Time____INITFLAG__0
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00504_nulltest_var_α
n00492_var_ref_β:                                                              jmp   n00491_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00504_nulltest_var_α:   mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 104;                            je    n00491_disjunction_af
                        mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00491_disjunction_af
                        cmp              eax, 0;                              jne   n00491_disjunction_af
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00505_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_lit_integer_α:    mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx00506_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00507_assign_var_α
.Lx00506_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00507_assign_var_α:     mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00491_disjunction_af
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n00508_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_keyword_icon_α:   mov              rdi, qword ptr [rip + .Lx00509_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00494_keyword_icon_α
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n00510_assign_α
n00508_keyword_icon_β:                                                         jmp   n00494_keyword_icon_α
.Lx00509_0:              .quad            .Lx00509_0_s
.Lx00509_0_s:            .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00510_assign_α:         mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [r9 + 208], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00491_disjunction_as
n00510_assign_β:                                                               jmp   n00494_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
Time___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Time___β:
                                                                              jmp   Time___ω
#-----------------------------------------------------------------------------------------------------------------------
Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 280]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        mov              rcx, qword ptr [rsp + 288]
                        add              rsp, 304;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00511_2]
                        lea              rdx, [rip + .Lx00511_3];              jmp   FN__Time__
.Lx00511_2:              pop              r11
                        pop              r11;                                 jmp   r11
.Lx00511_3:              pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             main_init
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
main_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tabulate"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tabulate
                        .quad            tabulate_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1376
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "format"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__format
                        .quad            format_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__item
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            832
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            2736
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Init__"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__Init__
                        .quad            Init___dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Term__"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__Term__
                        .quad            Term___dcα
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
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Collections__"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__Collections__
                        .quad            Collections___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            912
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Regions__"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__Regions__
                        .quad            Regions___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Signature__"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__Signature__
                        .quad            Signature___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Storage__"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__Storage__
                        .quad            Storage___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Time__"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__Time__
                        .quad            Time___dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            256
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "uses"
.Lgvan1:                .string          "colmax"
.Lgvan2:                .string          "namewidth"
.Lgvan3:                .string          "lineno"
.Lgvan4:                .string          "Save__"
.Lgvan5:                .string          "Saves__"
.Lgvan6:                .string          "Name__"
.Lgvan7:                .string          "Collections____STATIC__labels"
.Lgvan8:                .string          "Collections____INITFLAG__0"
.Lgvan9:                .string          "Regions____STATIC__labels"
.Lgvan10:               .string          "Regions____INITFLAG__0"
.Lgvan11:               .string          "Storage____STATIC__labels"
.Lgvan12:               .string          "Storage____INITFLAG__0"
.Lgvan13:               .string          "Time____STATIC__lasttime"
.Lgvan14:               .string          "Time____INITFLAG__0"
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
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              rdi, rsp
                        add              rdi, 1088
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00512_lit_string_α:     mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 7
                        mov              rax, qword ptr [rip + .Lx00513_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00514_call_proc_staged_α
.Lx00513_0:              .quad            .Lx00513_0_s
.Lx00513_0_s:            .string          "concord"
#-----------------------------------------------------------------------------------------------------------------------
n00514_call_proc_staged_α:
                        lea              rsi, [rsp + 1072]
                        call             Init___dcα;                          jmp   .Lx00515_2
.Lx00515_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00515_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx00515_29:             mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n00516_var_α
                                                                              jmp   n00516_var_α
n00514_call_proc_staged_β:
                                                                              jmp   n00516_var_α
.Lx00515_0:              .quad            .Lx00515_0_s
.Lx00515_0_s:            .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00516_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00517_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_lit_string_α:     mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 4
                        mov              rax, qword ptr [rip + .Lx00518_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00519_call_proc_staged_α
.Lx00518_0:              .quad            .Lx00518_0_s
.Lx00518_0_s:            .string          "l+w+"
#-----------------------------------------------------------------------------------------------------------------------
n00519_call_proc_staged_α:
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
                        call             options_dcα;                         jmp   .Lx00520_2
.Lx00520_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00520_29
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
.Lx00520_29:             mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n00521_disjunction_α
                                                                              jmp   n00522_assign_α
n00519_call_proc_staged_β:
                                                                              jmp   n00521_disjunction_α
.Lx00520_0:              .quad            .Lx00520_0_s
.Lx00520_0_s:            .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00522_assign_α:         mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00521_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_disjunction_α:    mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n00523_var_ref_α
n00521_disjunction_as:   mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx00524_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00525_assign_α
.Lx00524_0:              cmp              eax, 1;                              jne   .Lx00524_1
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00525_assign_α
.Lx00524_1:                                                                    jmp   n00525_assign_α
n00521_disjunction_β:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n00521_disjunction_af
                                                                              jmp   n00521_disjunction_af
n00521_disjunction_af:   add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n00526_lit_integer_α
                                                                              jmp   n00527_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00525_assign_α:         mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 16], rax             # colmax
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00527_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_disjunction_α:    mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n00528_var_ref_α
n00527_disjunction_as:   mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lx00529_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00530_assign_α
.Lx00529_0:              cmp              eax, 1;                              jne   .Lx00529_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00530_assign_α
.Lx00529_1:                                                                    jmp   n00530_assign_α
n00527_disjunction_β:    mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n00527_disjunction_af
                                                                              jmp   n00527_disjunction_af
n00527_disjunction_af:   add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n00531_lit_integer_α
                                                                              jmp   n00532_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_assign_α:         mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [r9 + 32], rax             # namewidth
                        mov              qword ptr [r9 + 40], rdx;            jmp   n00532_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_lit_string_α:     mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 0
                        mov              rax, qword ptr [rip + .Lx00533_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00534_call_builtin_icon_α
.Lx00533_0:              .quad            .Lx00533_0_s
.Lx00533_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00534_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn1110:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104;                            je    n00535_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00536_assign_α
n00534_call_builtin_icon_β:
                                                                              jmp   n00535_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_assign_α:         mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [r9 + 0], rax              # uses
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00535_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00535_lit_integer_α:    mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx00537_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00538_assign_α
.Lx00537_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00538_assign_α:         mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [r9 + 48], rax             # lineno
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00539_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00539_proc_gen_α:       mov              qword ptr [rsp + 544], 0
                        lea              rax, [rip + .Lx00540_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00540_1
                        lea              rcx, [rip + .Lx00540_3]
                        lea              rdx, [rip + .Lx00540_4];              jmp   rax
.Lx00540_3:              mov              qword ptr [rsp + 552], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx00540_5
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00540_2
.Lx00540_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00540_2
.Lx00540_4:              mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx00540_6
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00540_2
.Lx00540_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00540_2
.Lx00540_1:              call             rt_faildescr@PLT
.Lx00540_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00540_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
.Lx00540_29:             mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n00541_var_α
                                                                              jmp   n00542_var_α
n00539_proc_gen_β:       call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 552];          jmp   qword ptr [rsp]
.Lx00540_7:              add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n00541_var_α
                                                                              jmp   n00542_var_α
.Lx00540_0:              .quad            .Lx00540_0_s
.Lx00540_0_s:            .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n00542_var_α:            mov              rax, qword ptr [r9 + 48]             # lineno
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 576], rax           # result
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00543_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_call_proc_staged_α:
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 576]
                        call             tabulate_dcα;                        jmp   .Lx00544_2
.Lx00544_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00544_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
.Lx00544_29:             mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n00539_proc_gen_β
                                                                              jmp   n00539_proc_gen_β
n00543_call_proc_staged_β:
                                                                              jmp   n00539_proc_gen_β
.Lx00544_0:              .quad            .Lx00544_0_s
.Lx00544_0_s:            .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
n00541_var_α:            mov              rax, qword ptr [r9 + 0]              # uses
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 432], rax           # result
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00545_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_lit_integer_α:    mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx00546_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00547_call_builtin_icon_α
.Lx00546_0:              .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00547_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn1122:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n00548_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00549_assign_α
n00547_call_builtin_icon_β:
                                                                              jmp   n00548_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00549_assign_α:         mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00548_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_var_α:            mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00550_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn1127:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1127]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n00551_call_proc_staged_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00552_assign_α
n00550_call_builtin_icon_β:
                                                                              jmp   n00551_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00552_assign_α:         mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00553_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_var_α:            mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_α:            mov              rax, qword ptr [r9 + 32]             # namewidth
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00555_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn1133:             .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1133]
                        lea              rsi, [rsp + 224]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n00548_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00556_var_α
n00555_call_builtin_icon_β:
                                                                              jmp   n00548_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_var_α:            mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00557_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn1137:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n00548_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00558_binop_α
n00557_call_builtin_icon_β:
                                                                              jmp   n00548_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_binop_α:          mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00559_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        call             format_dcα;                          jmp   .Lx00560_2
.Lx00560_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00560_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
.Lx00560_29:             mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n00548_var_α
                                                                              jmp   n00548_var_α
n00559_call_proc_staged_β:
                                                                              jmp   n00548_var_α
.Lx00560_0:              .quad            .Lx00560_0_s
.Lx00560_0_s:            .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n00551_call_proc_staged_α:
                        call             Term___dcα;                          jmp   .Lx00561_2
.Lx00561_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00561_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
.Lx00561_29:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   main_γ
n00551_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx00561_0:              .quad            .Lx00561_0_s
.Lx00561_0_s:            .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00531_lit_integer_α:    mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx00562_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00527_disjunction_as
n00531_lit_integer_β:                                                          jmp   n00527_disjunction_af
.Lx00562_0:              .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n00528_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n00563_lit_string_α
n00528_var_ref_β:                                                              jmp   n00527_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00563_lit_string_α:     mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lx00564_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00565_subscript_α
.Lx00564_0:              .quad            .Lx00564_0_s
.Lx00564_0_s:            .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00565_subscript_α:      mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00527_disjunction_af
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n00566_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_deref_α:          mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00527_disjunction_af
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00567_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_unop_test_α:      mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 104;                            je    n00527_disjunction_af
                        cmp              eax, 0;                              je    n00527_disjunction_af
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00527_disjunction_as
n00567_unop_test_β:                                                            jmp   n00527_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00526_lit_integer_α:    mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx00568_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00521_disjunction_as
n00526_lit_integer_β:                                                          jmp   n00521_disjunction_af
.Lx00568_0:              .quad            72
#-----------------------------------------------------------------------------------------------------------------------
n00523_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n00569_lit_string_α
n00523_var_ref_β:                                                              jmp   n00521_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00569_lit_string_α:     mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 1
                        mov              rax, qword ptr [rip + .Lx00570_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00571_subscript_α
.Lx00570_0:              .quad            .Lx00570_0_s
.Lx00570_0_s:            .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n00571_subscript_α:      mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, qword ptr [rsp + 864]
                        mov              rcx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00521_disjunction_af
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n00572_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_deref_α:          mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00521_disjunction_af
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n00573_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_unop_test_α:      mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 104;                            je    n00521_disjunction_af
                        cmp              eax, 0;                              je    n00521_disjunction_af
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00521_disjunction_as
n00573_unop_test_β:                                                            jmp   n00521_disjunction_af
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
