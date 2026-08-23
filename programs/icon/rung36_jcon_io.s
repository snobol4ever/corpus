                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__wfile:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              rdi, rsp
                        add              rdi, 1344
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
wfile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_icon_α: mov              r11, 1
                        .section         .rodata
.Lrkfn48:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n1_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_lit_string_α
n0_call_builtin_icon_β: mov              r11, 1;                              jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 6
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n2_var_α
.Lx49_0:                .quad            .Lx49_0_s
.Lx49_0_s:              .string          "write "
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n4_var_α
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 3
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n6_call_builtin_icon_α
.Lx55_0:                .quad            .Lx55_0_s
.Lx55_0_s:              .string          ":\t "
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              r11, 7
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn57:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn57]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n7_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_disjunction_α
n6_call_builtin_icon_β: mov              r11, 7;                              jmp   n7_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              r11, 8
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n10_var_α
n7_disjunction_as:      mov              r11, 8
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx59_0
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax;           jmp   n46_return_α
.Lx59_0:                cmp              eax, 1;                              jne   .Lx59_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 72], rax;           jmp   n46_return_α
.Lx59_1:                                                                      jmp   n46_return_α
n7_disjunction_β:       mov              r11, 8
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n46_return_α
                                                                              jmp   n46_return_α
n7_disjunction_af:      mov              r11, 8
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n8_lit_string_α
                                                                              jmp   n46_return_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 10
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n9_call_builtin_icon_α
n8_lit_string_β:        mov              r11, 9;                              jmp   n46_return_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "can't open"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α: mov              r11, 10
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn62:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n46_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_disjunction_as
n9_call_builtin_icon_β: mov              r11, 10;                             jmp   n46_return_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n11_var_α
n10_var_β:              mov              r11, 11;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn68:               .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n7_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_assign_α
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 936], rax;          jmp   n15_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_enter_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
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
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 920], rax;          jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn77:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n18_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_lit_charset_α
n17_call_builtin_icon_β:
                        mov              r11, 18;                             jmp   n18_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_charset_α:      mov              r11, 19
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], -1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n19_scan_many_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_many_α:        mov              r11, 20
                        mov              eax, r14d
.Lx80_0:                cmp              eax, r15d;                           jge   .Lx80_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx80_2]
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
                        pop              rax;                                 je    .Lx80_1
                        add              eax, 1;                              jmp   .Lx80_0
.Lx80_1:                cmp              eax, r14d;                           je    n21_lit_integer_α
                        mov              qword ptr [rsp + 832], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 840], rcx;          jmp   n20_scan_tab_α
n19_scan_many_β:        mov              r11, 20;                             jmp   n21_lit_integer_α
.Lx80_2:                .quad            .Lx80_2_s
.Lx80_2_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_tab_α:         mov              r11, 21
                        mov              rax, qword ptr [rsp + 840]
                        cmp              rax, 1;                              jge   .Lx82_0
                        add              rax, r15
                        add              rax, 1
.Lx82_0:                cmp              rax, 1;                              jl    n21_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_lit_integer_α
                        mov              qword ptr [rsp + 816], r14
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
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n21_lit_integer_α
n20_scan_tab_β:         mov              r11, 21
                        mov              r14, qword ptr [rsp + 816];          jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n22_scan_pos_α
.Lx83_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_pos_α:         mov              r11, 23
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx85_0
                        add              rax, r15
                        add              rax, 1
.Lx85_0:                cmp              rax, 1;                              jl    n23_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n23_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n23_var_α
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax;          jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0;            jmp   n24_var_α
n23_var_β:              mov              r11, 24;                             jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 664], rax;          jmp   n25_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              r11, 26
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              dword ptr [rsp + 720], 0;            jmp   n29_lit_charset_α
n25_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              jne   .Lx90_0
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax;          jmp   n26_scan_tab_α
.Lx90_0:                cmp              eax, 1;                              jne   .Lx90_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 712], rax;          jmp   n26_scan_tab_α
.Lx90_1:                                                                      jmp   n26_scan_tab_α
n25_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 0;                              je    n30_scan_upto_β
                                                                              jmp   n25_disjunction_af
n25_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 720], 1
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 1;                              je    n28_lit_integer_α
                                                                              jmp   n31_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n26_scan_tab_α:         mov              r11, 27
                        mov              rax, qword ptr [rsp + 712]
                        cmp              rax, 1;                              jge   .Lx92_0
                        add              rax, r15
                        add              rax, 1
.Lx92_0:                cmp              rax, 1;                              jl    n25_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n25_disjunction_β
                        mov              qword ptr [rsp + 688], r14
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
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n27_call_builtin_icon_α
n26_scan_tab_β:         mov              r11, 27
                        mov              r14, qword ptr [rsp + 688];          jmp   n25_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn94:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n25_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_lit_charset_α
n27_call_builtin_icon_β:
                        mov              r11, 28;                             jmp   n25_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n25_disjunction_as
n28_lit_integer_β:      mov              r11, 29;                             jmp   n25_disjunction_af
.Lx95_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_charset_α:      mov              r11, 30
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], -1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n30_scan_upto_α
n29_lit_charset_β:      mov              r11, 30;                             jmp   n25_disjunction_af
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n30_scan_upto_α:        mov              r11, 31
                        mov              qword ptr [rsp + 752], r14
.Lx98_0:                mov              rax, qword ptr [rsp + 752]
                        cmp              rax, r15;                            jge   n25_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx98_2]
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
                        pop              rax;                                 je    .Lx98_1
                        mov              qword ptr [rsp + 736], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 744], rax;          jmp   n25_disjunction_as
.Lx98_1:                inc              qword ptr [rsp + 752];               jmp   .Lx98_0
n30_scan_upto_β:        mov              r11, 31
                        inc              qword ptr [rsp + 752];               jmp   .Lx98_0
.Lx98_2:                .quad            .Lx98_2_s
.Lx98_2_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_charset_α:      mov              r11, 32
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], -1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n32_scan_many_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_many_α:        mov              r11, 33
                        mov              eax, r14d
.Lx101_0:               cmp              eax, r15d;                           jge   .Lx101_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx101_2]
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
                        pop              rax;                                 je    .Lx101_1
                        add              eax, 1;                              jmp   .Lx101_0
.Lx101_1:               cmp              eax, r14d;                           je    n21_lit_integer_α
                        mov              qword ptr [rsp + 560], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 568], rcx;          jmp   n33_scan_tab_α
n32_scan_many_β:        mov              r11, 33;                             jmp   n21_lit_integer_α
.Lx101_2:               .quad            .Lx101_2_s
.Lx101_2_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n33_scan_tab_α:         mov              r11, 34
                        mov              rax, qword ptr [rsp + 568]
                        cmp              rax, 1;                              jge   .Lx103_0
                        add              rax, r15
                        add              rax, 1
.Lx103_0:               cmp              rax, 1;                              jl    n21_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n21_lit_integer_α
                        mov              qword ptr [rsp + 544], r14
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
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n34_conjunction_α
n33_scan_tab_β:         mov              r11, 34
                        mov              r14, qword ptr [rsp + 544];          jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_conjunction_α:      mov              r11, 35
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 520], rax;          jmp   n21_lit_integer_α
n34_conjunction_β:      mov              r11, 35;                             jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 3
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n36_var_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          " : "
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 456], rax;          jmp   n37_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn109:              .string          "where"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n39_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_call_builtin_icon_α
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n39_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_var_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 312], rax;          jmp   n40_call_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lbynamefn41:           .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn41]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n41_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_var_α
n40_call_β:             mov              r11, 41;                             jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 248], rax;          jmp   n42_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn118:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n45_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_conjunction_α
n42_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n44_scan_α
n43_conjunction_β:      mov              r11, 44;                             jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:             mov              r11, 45
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128];          jmp   n7_disjunction_as
n44_scan_β:             mov              r11, 45;                             jmp   n46_return_α
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             mov              r11, 46
                        lea              rdi, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 112]
                        mov              r14, qword ptr [rsp + 120]
                        mov              r15, qword ptr [rsp + 128];          jmp   n46_return_α
n45_scan_β:             mov              r11, 46;                             jmp   n46_return_α
#-----------------------------------------------------------------------------------------------------------------------
n46_return_α:           mov              r11, 47
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   wfile_γ
#-----------------------------------------------------------------------------------------------------------------------
wfile_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wfile_β:
                                                                              jmp   wfile_ω
#-----------------------------------------------------------------------------------------------------------------------
wfile_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1448]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wfile_ω:
                        mov              rcx, qword ptr [rsp + 1456]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wfile_dcα:
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
                        lea              rcx, [rip + .Lx125_2]
                        lea              rdx, [rip + .Lx125_3];               jmp   FN__wfile
.Lx125_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx125_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__rfile:
                        sub              rsp, 2688
                        mov              qword ptr [rsp + 2664], rcx
                        mov              qword ptr [rsp + 2672], rdx
                        mov              rdi, rsp
                        add              rdi, 2560
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
rfile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 48
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n127_var_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "read  "
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             mov              r11, 49
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 50
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 2
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n129_call_builtin_icon_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          ":\t"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn214:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n130_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_disjunction_α
n129_call_builtin_icon_β:
                        mov              r11, 51;                             jmp   n130_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n130_disjunction_α:     mov              r11, 52
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              dword ptr [rsp + 2224], 0;           jmp   n147_var_α
n130_disjunction_as:    mov              r11, 52
                        mov              eax, dword ptr [rsp + 2224]
                        cmp              eax, 0;                              jne   .Lx216_0
                                                                              jmp   n131_lit_string_α
.Lx216_0:                                                                     jmp   n131_lit_string_α
n130_disjunction_β:     mov              r11, 52
                        mov              eax, dword ptr [rsp + 2224];         jmp   n131_lit_string_α
n130_disjunction_af:    mov              r11, 52
                        add              dword ptr [rsp + 2224], 1
                        mov              eax, dword ptr [rsp + 2224];         jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n132_var_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 54
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n133_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_icon_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn221:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n135_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_call_builtin_icon_α
n133_call_builtin_icon_β:
                        mov              r11, 55;                             jmp   n135_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_icon_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn223:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n135_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_lit_string_α
n134_call_builtin_icon_β:
                        mov              r11, 56;                             jmp   n135_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              r11, 57
                        .section         .rodata
.Lrkfn225:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n136_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_var_α
n135_call_builtin_icon_β:
                        mov              r11, 57;                             jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              r11, 58
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n138_call_builtin_icon_α
.Lx228_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn230:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n139_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_lit_string_α
n138_call_builtin_icon_β:
                        mov              r11, 60;                             jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n140_disjunction_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n140_disjunction_α:     mov              r11, 62
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              dword ptr [rsp + 1840], 0;           jmp   n145_lit_string_α
n140_disjunction_as:    mov              r11, 62
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              eax, 0;                              jne   .Lx233_0
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n141_call_builtin_icon_α
.Lx233_0:               cmp              eax, 1;                              jne   .Lx233_1
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n141_call_builtin_icon_α
.Lx233_1:               cmp              eax, 2;                              jne   .Lx233_2
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n141_call_builtin_icon_α
.Lx233_2:                                                                     jmp   n141_call_builtin_icon_α
n140_disjunction_β:     mov              r11, 62
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              eax, 0;                              je    n140_disjunction_af
                        cmp              eax, 1;                              je    n144_iterate_β
                                                                              jmp   n140_disjunction_af
n140_disjunction_af:    mov              r11, 62
                        add              dword ptr [rsp + 1840], 1
                        mov              eax, dword ptr [rsp + 1840]
                        cmp              eax, 1;                              je    n143_var_α
                        cmp              eax, 2;                              je    n142_lit_string_α
                                                                              jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn235:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n140_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n140_disjunction_β
n141_call_builtin_icon_β:
                        mov              r11, 63;                             jmp   n140_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n140_disjunction_as
n142_lit_string_β:      mov              r11, 64;                             jmp   n140_disjunction_af
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:             mov              r11, 65
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n144_iterate_α
n143_var_β:             mov              r11, 65;                             jmp   n140_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_iterate_α:         mov              r11, 66
                        mov              qword ptr [rsp + 1888], 0
.Lx240_0:               mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              rax, 104;                            je    n140_disjunction_af
                                                                              jmp   n140_disjunction_as
n144_iterate_β:         mov              r11, 66
                        inc              qword ptr [rsp + 1888];              jmp   .Lx240_0
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              r11, 67
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 7
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n140_disjunction_as
n145_lit_string_β:      mov              r11, 67;                             jmp   n140_disjunction_af
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "  !f:\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n146_conjunction_α:     mov              r11, 68;                             jmp   n130_disjunction_as
n146_conjunction_β:     mov              r11, 68;                             jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             mov              r11, 69
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n148_lit_string_α
n147_var_β:             mov              r11, 69;                             jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 70
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n149_call_builtin_icon_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn247:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n151_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_assign_α
n149_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n130_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             mov              r11, 73
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0;           jmp   n152_lit_string_α
n151_var_β:             mov              r11, 73;                             jmp   n130_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 11
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n153_call_builtin_icon_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          " can't open"
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              r11, 75
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn252:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    rfile_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rfile_ω
n153_call_builtin_icon_β:
                        mov              r11, 75;                             jmp   rfile_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              r11, 76
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n156_call_builtin_icon_α
.Lx255_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn257:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n157_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_lit_string_α
n156_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 12
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n158_call_builtin_icon_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "   read/!f:\t"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn260:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n159_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_lit_string_α
n158_call_builtin_icon_β:
                        mov              r11, 80;                             jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n160_var_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn265:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n167_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_call_builtin_icon_α
n161_call_builtin_icon_β:
                        mov              r11, 83;                             jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn267:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n167_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_lit_string_α
n162_call_builtin_icon_β:
                        mov              r11, 84;                             jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n164_var_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 86
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n165_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n165_iterate_α:         mov              r11, 87
                        mov              qword ptr [rsp + 1552], 0
.Lx272_0:               mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              rax, 104;                            je    n159_lit_string_α
                                                                              jmp   n166_call_builtin_icon_α
n165_iterate_β:         mov              r11, 87
                        inc              qword ptr [rsp + 1552];              jmp   .Lx272_0
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn274:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n165_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_lit_string_α
n166_call_builtin_icon_β:
                        mov              r11, 88;                             jmp   n165_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        mov              r11, 89
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n168_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n168_var_α
n167_call_builtin_icon_β:
                        mov              r11, 89;                             jmp   n168_var_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n169_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n170_call_builtin_icon_α
.Lx279_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn281:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n171_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_lit_string_α
n170_call_builtin_icon_β:
                        mov              r11, 92;                             jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 12
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n172_call_builtin_icon_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "   reads():\t"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn284:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n173_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_lit_string_α
n172_call_builtin_icon_β:
                        mov              r11, 94;                             jmp   n173_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n174_var_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n176_call_builtin_icon_α
.Lx288_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_icon_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn290:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n181_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n177_lit_string_α
n176_call_builtin_icon_β:
                        mov              r11, 98;                             jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n178_lit_string_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n179_call_builtin_icon_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_icon_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn294:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rsp + 928]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n181_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n180_call_builtin_icon_α
n179_call_builtin_icon_β:
                        mov              r11, 101;                            jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_icon_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn296:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rsp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n181_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_lit_string_α
n180_call_builtin_icon_β:
                        mov              r11, 102;                            jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              r11, 103
                        .section         .rodata
.Lrkfn298:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 816]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n182_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_lit_string_α
n181_call_builtin_icon_β:
                        mov              r11, 103;                            jmp   n182_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 12
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n183_call_builtin_icon_α
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "   nonseq:\t "
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn301:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n184_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n184_lit_integer_α
n183_call_builtin_icon_β:
                        mov              r11, 105;                            jmp   n184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n185_lit_integer_α
.Lx302_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n186_lit_integer_α
.Lx303_0:               .quad            18446744073709551586
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n187_to_by_α
.Lx304_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n187_to_by_α:           mov              r11, 109
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
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], 3
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 160], rax
.Lx306_0:               mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 216]
                        cmp              rdx, 0;                              jl    .Lx306_1
                        cmp              rax, rcx;                            jg    n205_call_builtin_icon_α
                                                                              jmp   .Lx306_2
.Lx306_1:               cmp              rax, rcx;                            jl    n205_call_builtin_icon_α
.Lx306_2:               mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n188_assign_α
n187_to_by_β:           mov              r11, 109
                        mov              rdx, qword ptr [rsp + 216]
                        mov              rax, qword ptr [rsp + 160]
                        add              rax, rdx
                        mov              qword ptr [rsp + 160], rax;          jmp   .Lx306_0
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 110
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n189_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n189_bound_α:           mov              r11, 111
                        mov              qword ptr [rsp + 224], rsp;          jmp   n190_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n190_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n194_var_α
n190_disjunction_as:    mov              r11, 112
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Lx311_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n193_unmark_α
.Lx311_0:               cmp              eax, 1;                              jne   .Lx311_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 280], rax;          jmp   n193_unmark_α
.Lx311_1:                                                                     jmp   n193_unmark_α
n190_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              je    n197_disjunction_β
                                                                              jmp   n193_unmark_α
n190_disjunction_af:    mov              r11, 112
                        add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 1;                              je    n191_lit_string_α
                                                                              jmp   n193_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n192_call_builtin_icon_α
n191_lit_string_β:      mov              r11, 113;                            jmp   n193_unmark_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn314:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n193_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_disjunction_as
n192_call_builtin_icon_β:
                        mov              r11, 114;                            jmp   n193_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n193_unmark_α:          mov              r11, 115
                        mov              rsp, qword ptr [rsp + 224];          jmp   n187_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 648], rax;          jmp   n195_var_α
n194_var_β:             mov              r11, 116;                            jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 664], rax;          jmp   n196_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_icon_α:
                        mov              r11, 118
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn322:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rsp + 592]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n190_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_disjunction_α
n196_call_builtin_icon_β:
                        mov              r11, 118;                            jmp   n190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n197_disjunction_α:     mov              r11, 119
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              dword ptr [rsp + 368], 0;            jmp   n200_var_α
n197_disjunction_as:    mov              r11, 119
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 0;                              jne   .Lx324_0
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax;          jmp   n198_call_builtin_icon_α
.Lx324_0:               cmp              eax, 1;                              jne   .Lx324_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 360], rax;          jmp   n198_call_builtin_icon_α
.Lx324_1:                                                                     jmp   n198_call_builtin_icon_α
n197_disjunction_β:     mov              r11, 119
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 0;                              je    n197_disjunction_af
                                                                              jmp   n197_disjunction_af
n197_disjunction_af:    mov              r11, 119
                        add              dword ptr [rsp + 368], 1
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 1;                              je    n199_lit_string_α
                                                                              jmp   n193_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_icon_α:
                        mov              r11, 120
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn326:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n197_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_disjunction_as
n198_call_builtin_icon_β:
                        mov              r11, 120;                            jmp   n197_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n197_disjunction_as
n199_lit_string_β:      mov              r11, 121;                            jmp   n197_disjunction_af
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 520], rax;          jmp   n201_call_builtin_icon_α
n200_var_β:             mov              r11, 122;                            jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn331:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n197_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_lit_string_α
n201_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n203_lit_string_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n204_call_builtin_icon_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_icon_α:
                        mov              r11, 126
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn335:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rsp + 400]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n197_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_disjunction_as
n204_call_builtin_icon_β:
                        mov              r11, 126;                            jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              r11, 127
                        .section         .rodata
.Lrkfn337:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rsp + 112]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n206_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_var_α
n205_call_builtin_icon_β:
                        mov              r11, 127;                            jmp   n206_var_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 88], rax;           jmp   n207_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn341:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n208_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_return_α
n207_call_builtin_icon_β:
                        mov              r11, 129;                            jmp   n208_return_α
#-----------------------------------------------------------------------------------------------------------------------
n208_return_α:          mov              r11, 130
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   rfile_γ
#-----------------------------------------------------------------------------------------------------------------------
rfile_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rfile_β:
                                                                              jmp   rfile_ω
#-----------------------------------------------------------------------------------------------------------------------
rfile_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2664]
                        add              rsp, 2688;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rfile_ω:
                        mov              rcx, qword ptr [rsp + 2672]
                        add              rsp, 2688;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rfile_dcα:
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
                        lea              rcx, [rip + .Lx343_2]
                        lea              rdx, [rip + .Lx343_3];               jmp   FN__rfile
.Lx343_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx343_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__tsys:
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rcx
                        mov              qword ptr [rsp + 240], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
tsys_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n345_var_α
.Lx350_0:               .quad            .Lx350_0_s
.Lx350_0_s:             .string          "$ "
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax;          jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn354:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n347_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n347_var_α
n346_call_builtin_icon_β:
                        mov              r11, 133;                            jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             mov              r11, 134
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax;           jmp   n348_call_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lbynamefn135:          .string          "system"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn135]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n349_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n349_return_α
n348_call_β:            mov              r11, 135;                            jmp   n349_return_α
#-----------------------------------------------------------------------------------------------------------------------
n349_return_α:          mov              r11, 136
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tsys_γ
#-----------------------------------------------------------------------------------------------------------------------
tsys_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tsys_β:
                                                                              jmp   tsys_ω
#-----------------------------------------------------------------------------------------------------------------------
tsys_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 232]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tsys_ω:
                        mov              rcx, qword ptr [rsp + 240]
                        add              rsp, 256;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tsys_dcα:
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
                        lea              rcx, [rip + .Lx359_2]
                        lea              rdx, [rip + .Lx359_3];               jmp   FN__tsys
.Lx359_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx359_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__tpipe:
                        sub              rsp, 2672
                        mov              qword ptr [rsp + 2648], rcx
                        mov              qword ptr [rsp + 2656], rdx
                        mov              rdi, rsp
                        add              rdi, 2576
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
tpipe_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_icon_α:
                        mov              r11, 137
                        .section         .rodata
.Lrkfn444:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n361_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_disjunction_α
n360_call_builtin_icon_β:
                        mov              r11, 137;                            jmp   n361_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n361_disjunction_α:     mov              r11, 138
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n440_lit_string_α
n361_disjunction_as:    mov              r11, 138
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx446_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n362_assign_α
.Lx446_0:               cmp              eax, 1;                              jne   .Lx446_1
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n362_assign_α
.Lx446_1:                                                                     jmp   n362_assign_α
n361_disjunction_β:     mov              r11, 138
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n361_disjunction_af
                                                                              jmp   n361_disjunction_af
n361_disjunction_af:    mov              r11, 138
                        add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n438_lit_string_α
                                                                              jmp   n363_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:          mov              r11, 139
                        mov              rax, qword ptr [rsp + 2352]
                        mov              rdx, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n363_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n364_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_icon_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn451:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rsp + 2304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n366_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_call_builtin_icon_α
n364_call_builtin_icon_β:
                        mov              r11, 141;                            jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        .section         .rodata
.Lrkfn453:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 2256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n366_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_lit_string_α
n365_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 2
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n367_var_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n368_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_builtin_icon_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        .section         .rodata
.Lrkfn458:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rsp + 2192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              al, 104;                             je    n370_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_call_builtin_icon_α
n368_call_builtin_icon_β:
                        mov              r11, 145;                            jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_icon_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn460:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n370_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_lit_string_α
n369_call_builtin_icon_β:
                        mov              r11, 146;                            jmp   n370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n371_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_icon_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn464:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n372_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n372_call_builtin_icon_α
n371_call_builtin_icon_β:
                        mov              r11, 148;                            jmp   n372_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_icon_α:
                        mov              r11, 149
                        .section         .rodata
.Lrkfn466:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n373_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n373_disjunction_α
n372_call_builtin_icon_β:
                        mov              r11, 149;                            jmp   n373_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n373_disjunction_α:     mov              r11, 150
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              dword ptr [rsp + 1824], 0;           jmp   n435_lit_string_α
n373_disjunction_as:    mov              r11, 150
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 0;                              jne   .Lx468_0
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n374_assign_α
.Lx468_0:               cmp              eax, 1;                              jne   .Lx468_1
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n374_assign_α
.Lx468_1:                                                                     jmp   n374_assign_α
n373_disjunction_β:     mov              r11, 150
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 0;                              je    n373_disjunction_af
                                                                              jmp   n373_disjunction_af
n373_disjunction_af:    mov              r11, 150
                        add              dword ptr [rsp + 1824], 1
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 1;                              je    n433_lit_string_α
                                                                              jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n376_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              r11, 153
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn473:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n378_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n377_call_builtin_icon_α
n376_call_builtin_icon_β:
                        mov              r11, 153;                            jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_icon_α:
                        mov              r11, 154
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn475:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n378_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_lit_integer_α
n377_call_builtin_icon_β:
                        mov              r11, 154;                            jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n379_lit_integer_α
.Lx476_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n380_to_α
.Lx477_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n380_to_α:              mov              r11, 157
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1472], 3
                        mov              qword ptr [rsp + 1480], rax
                        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1488], 3
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1456], rax
.Lx479_0:               mov              rax, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1496]
                        cmp              rax, rcx;                            jg    n387_call_builtin_icon_α
                        mov              qword ptr [rsp + 1440], 3
                        mov              qword ptr [rsp + 1448], rax;         jmp   n381_bound_α
n380_to_β:              mov              r11, 157
                        inc              qword ptr [rsp + 1456];              jmp   .Lx479_0
#-----------------------------------------------------------------------------------------------------------------------
n381_bound_α:           mov              r11, 158
                        mov              qword ptr [rsp + 1504], rsp;         jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 2
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n383_var_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n384_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_icon_α:
                        mov              r11, 161
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn486:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn486]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n386_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n385_call_builtin_icon_α
n384_call_builtin_icon_β:
                        mov              r11, 161;                            jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_icon_α:
                        mov              r11, 162
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn488:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n386_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n386_unmark_α
n385_call_builtin_icon_β:
                        mov              r11, 162;                            jmp   n386_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n386_unmark_α:          mov              r11, 163
                        mov              rsp, qword ptr [rsp + 1504];         jmp   n380_to_β
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_icon_α:
                        mov              r11, 164
                        .section         .rodata
.Lrkfn492:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn492]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n388_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_disjunction_α
n387_call_builtin_icon_β:
                        mov              r11, 164;                            jmp   n388_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n388_disjunction_α:     mov              r11, 165
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              dword ptr [rsp + 1232], 0;           jmp   n430_lit_string_α
n388_disjunction_as:    mov              r11, 165
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              jne   .Lx494_0
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n389_assign_α
.Lx494_0:               cmp              eax, 1;                              jne   .Lx494_1
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n389_assign_α
.Lx494_1:                                                                     jmp   n389_assign_α
n388_disjunction_β:     mov              r11, 165
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 0;                              je    n388_disjunction_af
                                                                              jmp   n388_disjunction_af
n388_disjunction_af:    mov              r11, 165
                        add              dword ptr [rsp + 1232], 1
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 1;                              je    n428_lit_string_α
                                                                              jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:          mov              r11, 166
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n390_var_α
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             mov              r11, 167
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n391_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_icon_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn499:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn499]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n393_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n392_call_builtin_icon_α
n391_call_builtin_icon_β:
                        mov              r11, 168;                            jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              r11, 169
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn501:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n393_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n393_lit_string_α
n392_call_builtin_icon_β:
                        mov              r11, 169;                            jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n394_var_α
.Lx502_0:               .quad            .Lx502_0_s
.Lx502_0_s:             .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n395_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n395_iterate_α:         mov              r11, 172
                        mov              qword ptr [rsp + 1072], 0
.Lx506_0:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              rax, 104;                            je    n397_var_α
                                                                              jmp   n396_call_builtin_icon_α
n395_iterate_β:         mov              r11, 172
                        inc              qword ptr [rsp + 1072];              jmp   .Lx506_0
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn508:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rsp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n395_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n395_iterate_β
n396_call_builtin_icon_β:
                        mov              r11, 173;                            jmp   n395_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n397_var_α:             mov              r11, 174
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 968], rax;          jmp   n398_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_icon_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn512:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n399_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n399_call_builtin_icon_α
n398_call_builtin_icon_β:
                        mov              r11, 175;                            jmp   n399_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_icon_α:
                        mov              r11, 176
                        .section         .rodata
.Lrkfn514:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rsp + 896]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n400_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_disjunction_α
n399_call_builtin_icon_β:
                        mov              r11, 176;                            jmp   n400_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n400_disjunction_α:     mov              r11, 177
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              dword ptr [rsp + 704], 0;            jmp   n425_lit_string_α
n400_disjunction_as:    mov              r11, 177
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              jne   .Lx516_0
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax;          jmp   n401_assign_α
.Lx516_0:               cmp              eax, 1;                              jne   .Lx516_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 696], rax;          jmp   n401_assign_α
.Lx516_1:                                                                     jmp   n401_assign_α
n400_disjunction_β:     mov              r11, 177
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 0;                              je    n400_disjunction_af
                                                                              jmp   n400_disjunction_af
n400_disjunction_af:    mov              r11, 177
                        add              dword ptr [rsp + 704], 1
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 1;                              je    n423_lit_string_α
                                                                              jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 664], rax;          jmp   n403_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_icon_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn521:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn521]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n405_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n404_call_builtin_icon_α
n403_call_builtin_icon_β:
                        mov              r11, 180;                            jmp   n405_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_icon_α:
                        mov              r11, 181
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn523:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n405_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n405_var_α
n404_call_builtin_icon_β:
                        mov              r11, 181;                            jmp   n405_var_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 536], rax;          jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 27
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n407_call_builtin_icon_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          "once upon a midnight dreary"
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_icon_α:
                        mov              r11, 184
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn528:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n408_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n408_var_α
n407_call_builtin_icon_β:
                        mov              r11, 184;                            jmp   n408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 440], rax;          jmp   n409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 35
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n410_call_builtin_icon_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "two roads diverged in a yellow wood"
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_icon_α:
                        mov              r11, 187
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn533:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn533]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n411_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n411_var_α
n410_call_builtin_icon_β:
                        mov              r11, 187;                            jmp   n411_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 344], rax;          jmp   n412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 27
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n413_call_builtin_icon_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "and the mome raths outgrabe"
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_icon_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn538:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn538]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n414_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_lit_string_α
n413_call_builtin_icon_β:
                        mov              r11, 190;                            jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 23
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n415_call_builtin_icon_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "--- closing output pipe"
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_icon_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn541:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn541]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n416_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n416_var_α
n415_call_builtin_icon_β:
                        mov              r11, 192;                            jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 200], rax;          jmp   n417_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_icon_α:
                        mov              r11, 194
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn545:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn545]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n418_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n418_lit_string_α
n417_call_builtin_icon_β:
                        mov              r11, 194;                            jmp   n418_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 28
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n419_call_builtin_icon_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "--- done closing output pipe"
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_icon_α:
                        mov              r11, 196
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn548:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n420_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_lit_string_α
n419_call_builtin_icon_β:
                        mov              r11, 196;                            jmp   n420_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 4
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n421_call_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            mov              r11, 198
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lbynamefn198:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn198]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    n422_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n422_return_α
n421_call_β:            mov              r11, 198;                            jmp   n422_return_α
#-----------------------------------------------------------------------------------------------------------------------
n422_return_α:          mov              r11, 199
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   tpipe_γ
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 18
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n424_call_builtin_icon_α
n423_lit_string_β:      mov              r11, 200;                            jmp   n400_disjunction_af
.Lx552_0:               .quad            .Lx552_0_s
.Lx552_0_s:             .string          "can't open tr pipe"
#-----------------------------------------------------------------------------------------------------------------------
n424_call_builtin_icon_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn554:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n400_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_disjunction_as
n424_call_builtin_icon_β:
                        mov              r11, 201;                            jmp   n400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 14
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n426_lit_string_α
n425_lit_string_β:      mov              r11, 202;                            jmp   n400_disjunction_af
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "tr aeiou oaeui"
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 2
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n427_call_builtin_icon_α
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "wp"
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_icon_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn558:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n400_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n400_disjunction_as
n427_call_builtin_icon_β:
                        mov              r11, 204;                            jmp   n400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 18
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n429_call_builtin_icon_α
n428_lit_string_β:      mov              r11, 205;                            jmp   n388_disjunction_af
.Lx559_0:               .quad            .Lx559_0_s
.Lx559_0_s:             .string          "can't open ls pipe"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_icon_α:
                        mov              r11, 206
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn561:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n388_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_disjunction_as
n429_call_builtin_icon_β:
                        mov              r11, 206;                            jmp   n388_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 23
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n431_lit_string_α
n430_lit_string_β:      mov              r11, 207;                            jmp   n388_disjunction_af
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "ls io.i?n io.d?t io.s?d"
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n432_call_builtin_icon_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_icon_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn565:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n388_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n388_disjunction_as
n432_call_builtin_icon_β:
                        mov              r11, 209;                            jmp   n388_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 18
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n434_call_builtin_icon_α
n433_lit_string_β:      mov              r11, 210;                            jmp   n373_disjunction_af
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "can't open od pipe"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_icon_α:
                        mov              r11, 211
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn568:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n373_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n373_disjunction_as
n434_call_builtin_icon_β:
                        mov              r11, 211;                            jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 23
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n436_lit_string_α
n435_lit_string_β:      mov              r11, 212;                            jmp   n373_disjunction_af
.Lx569_0:               .quad            .Lx569_0_s
.Lx569_0_s:             .string          "sed 's/^/=()= /' io.icn"
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n437_call_builtin_icon_α
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_icon_α:
                        mov              r11, 214
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn572:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn572]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n373_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n373_disjunction_as
n437_call_builtin_icon_β:
                        mov              r11, 214;                            jmp   n373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 20
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n439_call_builtin_icon_α
n438_lit_string_β:      mov              r11, 215;                            jmp   n361_disjunction_af
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "can't open echo pipe"
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn575:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n361_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_disjunction_as
n439_call_builtin_icon_β:
                        mov              r11, 216;                            jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 16
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n441_lit_string_α
n440_lit_string_β:      mov              r11, 217;                            jmp   n361_disjunction_af
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "echo hello world"
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 2
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n442_call_builtin_icon_α
.Lx577_0:               .quad            .Lx577_0_s
.Lx577_0_s:             .string          "rp"
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_icon_α:
                        mov              r11, 219
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn579:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n361_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_disjunction_as
n442_call_builtin_icon_β:
                        mov              r11, 219;                            jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
tpipe_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tpipe_β:
                                                                              jmp   tpipe_ω
#-----------------------------------------------------------------------------------------------------------------------
tpipe_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2648]
                        add              rsp, 2672;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tpipe_ω:
                        mov              rcx, qword ptr [rsp + 2656]
                        add              rsp, 2672;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tpipe_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx580_2]
                        lea              rdx, [rip + .Lx580_3];               jmp   FN__tpipe
.Lx580_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx580_3:               pop              r12
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
                        sub              rsp, 8976
                        mov              qword ptr [rsp + 8952], rcx
                        mov              qword ptr [rsp + 8960], rdx
                        mov              rdi, rsp
                        add              rdi, 8736
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        mov              qword ptr [rsp + 7264], 0
                        mov              qword ptr [rsp + 7024], 0
#-----------------------------------------------------------------------------------------------------------------------
n581_keyword_icon_α:    mov              r11, 220
                        mov              rdi, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n592_var_α
                        mov              qword ptr [rsp + 8256], rax
                        mov              qword ptr [rsp + 8264], rdx;         jmp   n582_keyword_icon_α
n581_keyword_icon_β:    mov              r11, 220;                            jmp   n592_var_α
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n582_keyword_icon_α:    mov              r11, 221
                        mov              rdi, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n592_var_α
                        mov              qword ptr [rsp + 8288], rax
                        mov              qword ptr [rsp + 8296], rdx;         jmp   n583_keyword_icon_α
n582_keyword_icon_β:    mov              r11, 221;                            jmp   n592_var_α
.Lx852_0:               .quad            .Lx852_0_s
.Lx852_0_s:             .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n583_keyword_icon_α:    mov              r11, 222
                        mov              rdi, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n592_var_α
                        mov              qword ptr [rsp + 8320], rax
                        mov              qword ptr [rsp + 8328], rdx;         jmp   n584_disjunction_β
n583_keyword_icon_β:    mov              r11, 222;                            jmp   n592_var_α
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n584_disjunction_α:     mov              r11, 223
                        mov              qword ptr [rsp + 8368], 0
                        mov              qword ptr [rsp + 8376], 0
                        mov              dword ptr [rsp + 8384], 0;           jmp   n627_lit_string_α
n584_disjunction_as:    mov              r11, 223
                        mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 0;                              jne   .Lx855_0
                        mov              rax, qword ptr [rsp + 8400]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8408]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n585_assign_α
.Lx855_0:               cmp              eax, 1;                              jne   .Lx855_1
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 8368], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 8376], rax;         jmp   n585_assign_α
.Lx855_1:                                                                     jmp   n585_assign_α
n584_disjunction_β:     mov              r11, 223
                        mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 0;                              je    n584_disjunction_af
                                                                              jmp   n584_disjunction_af
n584_disjunction_af:    mov              r11, 223
                        add              dword ptr [rsp + 8384], 1
                        mov              eax, dword ptr [rsp + 8384]
                        cmp              eax, 1;                              je    n625_lit_string_α
                                                                              jmp   n592_var_α
#-----------------------------------------------------------------------------------------------------------------------
n585_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rsp + 8368]
                        mov              rdx, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 8784], rax
                        mov              qword ptr [rsp + 8792], rdx
                        mov              qword ptr [rsp + 8352], rax
                        mov              qword ptr [rsp + 8360], rdx;         jmp   n586_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n586_disjunction_α:     mov              r11, 225
                        mov              qword ptr [rsp + 8608], 0
                        mov              qword ptr [rsp + 8616], 0
                        mov              dword ptr [rsp + 8624], 0;           jmp   n624_lit_string_α
n586_disjunction_as:    mov              r11, 225
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 0;                              jne   .Lx858_0
                        mov              rax, qword ptr [rsp + 8640]
                        mov              qword ptr [rsp + 8608], rax
                        mov              rax, qword ptr [rsp + 8648]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n587_lit_string_α
.Lx858_0:               cmp              eax, 1;                              jne   .Lx858_1
                        mov              rax, qword ptr [rsp + 8656]
                        mov              qword ptr [rsp + 8608], rax
                        mov              rax, qword ptr [rsp + 8664]
                        mov              qword ptr [rsp + 8616], rax;         jmp   n587_lit_string_α
.Lx858_1:                                                                     jmp   n587_lit_string_α
n586_disjunction_β:     mov              r11, 225
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 0;                              je    n586_disjunction_af
                                                                              jmp   n586_disjunction_af
n586_disjunction_af:    mov              r11, 225
                        add              dword ptr [rsp + 8624], 1
                        mov              eax, dword ptr [rsp + 8624]
                        cmp              eax, 1;                              je    n622_lit_string_α
                                                                              jmp   n584_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rsp + 8720], 2            # result
                        mov              dword ptr [rsp + 8724], 1
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rsp + 8728], rax;         jmp   n588_call_builtin_icon_α
.Lx859_0:               .quad            .Lx859_0_s
.Lx859_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_icon_α:
                        mov              r11, 227
                        mov              rax, qword ptr [rsp + 8720]
                        mov              qword ptr [rsp + 8576], rax
                        mov              rax, qword ptr [rsp + 8728]
                        mov              qword ptr [rsp + 8584], rax
                        mov              rax, qword ptr [rsp + 8608]
                        mov              qword ptr [rsp + 8560], rax
                        mov              rax, qword ptr [rsp + 8616]
                        mov              qword ptr [rsp + 8568], rax
                        .section         .rodata
.Lrkfn861:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn861]
                        lea              rsi, [rsp + 8560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8544], rax
                        mov              qword ptr [rsp + 8552], rdx
                        cmp              al, 104;                             je    n586_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n589_assign_α
n588_call_builtin_icon_β:
                        mov              r11, 227;                            jmp   n586_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n589_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 8544]
                        mov              rdx, qword ptr [rsp + 8552]
                        mov              qword ptr [rsp + 8768], rax
                        mov              qword ptr [rsp + 8776], rdx
                        mov              qword ptr [rsp + 8528], rax
                        mov              qword ptr [rsp + 8536], rdx;         jmp   n590_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n590_make_list_α:       mov              r11, 229
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 8176], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 8184], rax
                        mov              rax, qword ptr [rsp + 8288]
                        mov              qword ptr [rsp + 8192], rax
                        mov              rax, qword ptr [rsp + 8296]
                        mov              qword ptr [rsp + 8200], rax
                        mov              rax, qword ptr [rsp + 8320]
                        mov              qword ptr [rsp + 8208], rax
                        mov              rax, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 8216], rax
                        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 8224], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 8232], rax
                        mov              rax, qword ptr [rsp + 8528]
                        mov              qword ptr [rsp + 8240], rax
                        mov              rax, qword ptr [rsp + 8536]
                        mov              qword ptr [rsp + 8248], rax
                        lea              rdi, [rsp + 8176]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx;         jmp   n591_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n591_assign_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 8160]
                        mov              rdx, qword ptr [rsp + 8168]
                        mov              qword ptr [rsp + 8816], rax
                        mov              qword ptr [rsp + 8824], rdx;         jmp   n592_var_α
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 8816]
                        mov              qword ptr [rsp + 8144], rax
                        mov              rax, qword ptr [rsp + 8824]
                        mov              qword ptr [rsp + 8152], rax;         jmp   n593_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 8144]
                        mov              qword ptr [rsp + 8112], rax
                        mov              rax, qword ptr [rsp + 8152]
                        mov              qword ptr [rsp + 8120], rax
                        .section         .rodata
.Lrkfn869:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rsp + 8112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              al, 104;                             je    n595_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_assign_α
n593_call_builtin_icon_β:
                        mov              r11, 232;                            jmp   n595_var_α
#-----------------------------------------------------------------------------------------------------------------------
n594_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rsp + 8096]
                        mov              rdx, qword ptr [rsp + 8104]
                        mov              qword ptr [rsp + 8816], rax
                        mov              qword ptr [rsp + 8824], rdx;         jmp   n595_var_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rsp + 8816]
                        mov              qword ptr [rsp + 7808], rax
                        mov              rax, qword ptr [rsp + 8824]
                        mov              qword ptr [rsp + 7816], rax;         jmp   n596_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n596_iterate_α:         mov              r11, 235
                        mov              qword ptr [rsp + 7792], 0
.Lx874_0:               mov              rdi, qword ptr [rsp + 7808]
                        mov              rsi, qword ptr [rsp + 7816]
                        mov              rdx, qword ptr [rsp + 7792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                        cmp              rax, 104;                            je    n606_call_builtin_icon_α
                                                                              jmp   n597_assign_α
n596_iterate_β:         mov              r11, 235
                        inc              qword ptr [rsp + 7792];              jmp   .Lx874_0
#-----------------------------------------------------------------------------------------------------------------------
n597_assign_α:          mov              r11, 236
                        mov              rax, qword ptr [rsp + 7776]
                        mov              rdx, qword ptr [rsp + 7784]
                        mov              qword ptr [rsp + 8800], rax
                        mov              qword ptr [rsp + 8808], rdx;         jmp   n598_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n598_bound_α:           mov              r11, 237
                        mov              qword ptr [rsp + 7824], rsp;         jmp   n599_var_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rsp + 8800]
                        mov              qword ptr [rsp + 8000], rax
                        mov              rax, qword ptr [rsp + 8808]
                        mov              qword ptr [rsp + 8008], rax;         jmp   n600_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n600_call_builtin_icon_α:
                        mov              r11, 239
                        mov              rax, qword ptr [rsp + 8000]
                        mov              qword ptr [rsp + 7968], rax
                        mov              rax, qword ptr [rsp + 8008]
                        mov              qword ptr [rsp + 7976], rax
                        .section         .rodata
.Lrkfn881:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn881]
                        lea              rsi, [rsp + 7968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7952], rax
                        mov              qword ptr [rsp + 7960], rdx
                        cmp              al, 104;                             je    n605_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n601_lit_string_α
n600_call_builtin_icon_β:
                        mov              r11, 239;                            jmp   n605_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rsp + 8016], 2            # result
                        mov              dword ptr [rsp + 8020], 2
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rsp + 8024], rax;         jmp   n602_var_α
.Lx882_0:               .quad            .Lx882_0_s
.Lx882_0_s:             .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 8800]
                        mov              qword ptr [rsp + 8080], rax
                        mov              rax, qword ptr [rsp + 8808]
                        mov              qword ptr [rsp + 8088], rax;         jmp   n603_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n603_call_builtin_icon_α:
                        mov              r11, 242
                        mov              rax, qword ptr [rsp + 8080]
                        mov              qword ptr [rsp + 8048], rax
                        mov              rax, qword ptr [rsp + 8088]
                        mov              qword ptr [rsp + 8056], rax
                        .section         .rodata
.Lrkfn886:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn886]
                        lea              rsi, [rsp + 8048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8032], rax
                        mov              qword ptr [rsp + 8040], rdx
                        cmp              al, 104;                             je    n605_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n604_call_builtin_icon_α
n603_call_builtin_icon_β:
                        mov              r11, 242;                            jmp   n605_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_icon_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 8032]
                        mov              qword ptr [rsp + 7920], rax
                        mov              rax, qword ptr [rsp + 8040]
                        mov              qword ptr [rsp + 7928], rax
                        mov              rax, qword ptr [rsp + 8016]
                        mov              qword ptr [rsp + 7904], rax
                        mov              rax, qword ptr [rsp + 8024]
                        mov              qword ptr [rsp + 7912], rax
                        mov              rax, qword ptr [rsp + 7952]
                        mov              qword ptr [rsp + 7888], rax
                        mov              rax, qword ptr [rsp + 7960]
                        mov              qword ptr [rsp + 7896], rax
                        .section         .rodata
.Lrkfn888:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn888]
                        lea              rsi, [rsp + 7888]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx
                        cmp              al, 104;                             je    n605_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n605_unmark_α
n604_call_builtin_icon_β:
                        mov              r11, 243;                            jmp   n605_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n605_unmark_α:          mov              r11, 244
                        mov              rsp, qword ptr [rsp + 7824];         jmp   n596_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_icon_α:
                        mov              r11, 245
                        .section         .rodata
.Lrkfn892:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn892]
                        lea              rsi, [rsp + 7744]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7728], rax
                        mov              qword ptr [rsp + 7736], rdx
                        cmp              al, 104;                             je    n607_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n607_call_builtin_icon_α
n606_call_builtin_icon_β:
                        mov              r11, 245;                            jmp   n607_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_icon_α:
                        mov              r11, 246
                        .section         .rodata
.Lrkfn894:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn894]
                        lea              rsi, [rsp + 7712]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7696], rax
                        mov              qword ptr [rsp + 7704], rdx
                        cmp              al, 104;                             je    n609_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n608_call_builtin_icon_α
n607_call_builtin_icon_β:
                        mov              r11, 246;                            jmp   n609_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n608_call_builtin_icon_α:
                        mov              r11, 247
                        mov              rax, qword ptr [rsp + 7696]
                        mov              qword ptr [rsp + 7664], rax
                        mov              rax, qword ptr [rsp + 7704]
                        mov              qword ptr [rsp + 7672], rax
                        .section         .rodata
.Lrkfn896:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn896]
                        lea              rsi, [rsp + 7664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7648], rax
                        mov              qword ptr [rsp + 7656], rdx
                        cmp              al, 104;                             je    n609_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n609_keyword_icon_α
n608_call_builtin_icon_β:
                        mov              r11, 247;                            jmp   n609_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n609_keyword_icon_α:    mov              r11, 248
                        mov              rdi, qword ptr [rip + .Lx897_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n612_call_builtin_icon_α
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx;         jmp   n610_call_builtin_icon_α
n609_keyword_icon_β:    mov              r11, 248;                            jmp   n612_call_builtin_icon_α
.Lx897_0:               .quad            .Lx897_0_s
.Lx897_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n610_call_builtin_icon_α:
                        mov              r11, 249
                        mov              rax, qword ptr [rsp + 7616]
                        mov              qword ptr [rsp + 7584], rax
                        mov              rax, qword ptr [rsp + 7624]
                        mov              qword ptr [rsp + 7592], rax
                        .section         .rodata
.Lrkfn899:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rsp + 7584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7568], rax
                        mov              qword ptr [rsp + 7576], rdx
                        cmp              al, 104;                             je    n612_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n611_call_builtin_icon_α
n610_call_builtin_icon_β:
                        mov              r11, 249;                            jmp   n612_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n611_call_builtin_icon_α:
                        mov              r11, 250
                        mov              rax, qword ptr [rsp + 7568]
                        mov              qword ptr [rsp + 7536], rax
                        mov              rax, qword ptr [rsp + 7576]
                        mov              qword ptr [rsp + 7544], rax
                        .section         .rodata
.Lrkfn901:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn901]
                        lea              rsi, [rsp + 7536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx
                        cmp              al, 104;                             je    n612_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n612_call_builtin_icon_α
n611_call_builtin_icon_β:
                        mov              r11, 250;                            jmp   n612_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_icon_α:
                        mov              r11, 251
                        .section         .rodata
.Lrkfn903:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn903]
                        lea              rsi, [rsp + 7504]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7488], rax
                        mov              qword ptr [rsp + 7496], rdx
                        cmp              al, 104;                             je    n614_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n613_call_builtin_icon_α
n612_call_builtin_icon_β:
                        mov              r11, 251;                            jmp   n614_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n613_call_builtin_icon_α:
                        mov              r11, 252
                        mov              rax, qword ptr [rsp + 7488]
                        mov              qword ptr [rsp + 7456], rax
                        mov              rax, qword ptr [rsp + 7496]
                        mov              qword ptr [rsp + 7464], rax
                        .section         .rodata
.Lrkfn905:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn905]
                        lea              rsi, [rsp + 7456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7440], rax
                        mov              qword ptr [rsp + 7448], rdx
                        cmp              al, 104;                             je    n614_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n614_keyword_icon_α
n613_call_builtin_icon_β:
                        mov              r11, 252;                            jmp   n614_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n614_keyword_icon_α:    mov              r11, 253
                        mov              rdi, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n617_lit_integer_α
                        mov              qword ptr [rsp + 7408], rax
                        mov              qword ptr [rsp + 7416], rdx;         jmp   n615_iterate_α
n614_keyword_icon_β:    mov              r11, 253;                            jmp   n617_lit_integer_α
.Lx906_0:               .quad            .Lx906_0_s
.Lx906_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n615_iterate_α:         mov              r11, 254
                        mov              qword ptr [rsp + 7392], 0
.Lx908_0:               mov              rdi, qword ptr [rsp + 7408]
                        mov              rsi, qword ptr [rsp + 7416]
                        mov              rdx, qword ptr [rsp + 7392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7376], rax
                        mov              qword ptr [rsp + 7384], rdx
                        cmp              rax, 104;                            je    n617_lit_integer_α
                                                                              jmp   n616_call_builtin_icon_α
n615_iterate_β:         mov              r11, 254
                        inc              qword ptr [rsp + 7392];              jmp   .Lx908_0
#-----------------------------------------------------------------------------------------------------------------------
n616_call_builtin_icon_α:
                        mov              r11, 255
                        mov              rax, qword ptr [rsp + 7376]
                        mov              qword ptr [rsp + 7344], rax
                        mov              rax, qword ptr [rsp + 7384]
                        mov              qword ptr [rsp + 7352], rax
                        .section         .rodata
.Lrkfn910:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn910]
                        lea              rsi, [rsp + 7344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7328], rax
                        mov              qword ptr [rsp + 7336], rdx
                        cmp              al, 104;                             je    n615_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n617_lit_integer_α
n616_call_builtin_icon_β:
                        mov              r11, 255;                            jmp   n615_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rsp + 7280], 3            # result
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rsp + 7288], rax;         jmp   n618_keyword_icon_α
.Lx911_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n618_keyword_icon_α:    mov              r11, 257
                        mov              rdi, qword ptr [rip + .Lx912_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n629_lit_integer_α
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx;         jmp   n619_limit_α
n618_keyword_icon_β:    mov              r11, 257;                            jmp   n629_lit_integer_α
.Lx912_0:               .quad            .Lx912_0_s
.Lx912_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n619_limit_α:           mov              r11, 258
                        mov              rax, qword ptr [rsp + 7264]
                        mov              rcx, qword ptr [rsp + 7288]
                        cmp              rax, rcx;                            jge   n629_lit_integer_α
                        inc              qword ptr [rsp + 7264]
                        mov              rax, qword ptr [rsp + 7296]
                        mov              qword ptr [rsp + 7248], rax
                        mov              rax, qword ptr [rsp + 7304]
                        mov              qword ptr [rsp + 7256], rax;         jmp   n620_iterate_α
n619_limit_β:           mov              r11, 258;                            jmp   n618_keyword_icon_β
#-----------------------------------------------------------------------------------------------------------------------
n620_iterate_α:         mov              r11, 259
                        mov              qword ptr [rsp + 7232], 0
.Lx916_0:               mov              rdi, qword ptr [rsp + 7248]
                        mov              rsi, qword ptr [rsp + 7256]
                        mov              rdx, qword ptr [rsp + 7232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7216], rax
                        mov              qword ptr [rsp + 7224], rdx
                        cmp              rax, 104;                            je    n629_lit_integer_α
                                                                              jmp   n621_call_builtin_icon_α
n620_iterate_β:         mov              r11, 259
                        inc              qword ptr [rsp + 7232];              jmp   .Lx916_0
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_icon_α:
                        mov              r11, 260
                        mov              rax, qword ptr [rsp + 7216]
                        mov              qword ptr [rsp + 7184], rax
                        mov              rax, qword ptr [rsp + 7224]
                        mov              qword ptr [rsp + 7192], rax
                        .section         .rodata
.Lrkfn918:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]
                        lea              rsi, [rsp + 7184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7168], rax
                        mov              qword ptr [rsp + 7176], rdx
                        cmp              al, 104;                             je    n620_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n620_iterate_β
n621_call_builtin_icon_β:
                        mov              r11, 260;                            jmp   n620_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 8704], 2            # result
                        mov              dword ptr [rsp + 8708], 12
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rsp + 8712], rax;         jmp   n623_call_builtin_icon_α
n622_lit_string_β:      mov              r11, 261;                            jmp   n586_disjunction_af
.Lx919_0:               .quad            .Lx919_0_s
.Lx919_0_s:             .string          "no /dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_icon_α:
                        mov              r11, 262
                        mov              rax, qword ptr [rsp + 8704]
                        mov              qword ptr [rsp + 8672], rax
                        mov              rax, qword ptr [rsp + 8712]
                        mov              qword ptr [rsp + 8680], rax
                        .section         .rodata
.Lrkfn921:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn921]
                        lea              rsi, [rsp + 8672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8656], rax
                        mov              qword ptr [rsp + 8664], rdx
                        cmp              al, 104;                             je    n586_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n586_disjunction_as
n623_call_builtin_icon_β:
                        mov              r11, 262;                            jmp   n586_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rsp + 8640], 2            # result
                        mov              dword ptr [rsp + 8644], 9
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rsp + 8648], rax;         jmp   n586_disjunction_as
n624_lit_string_β:      mov              r11, 263;                            jmp   n586_disjunction_af
.Lx922_0:               .quad            .Lx922_0_s
.Lx922_0_s:             .string          "/dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rsp + 8512], 2            # result
                        mov              dword ptr [rsp + 8516], 14
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rsp + 8520], rax;         jmp   n626_call_builtin_icon_α
n625_lit_string_β:      mov              r11, 264;                            jmp   n584_disjunction_af
.Lx923_0:               .quad            .Lx923_0_s
.Lx923_0_s:             .string          "no /etc/passwd"
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_icon_α:
                        mov              r11, 265
                        mov              rax, qword ptr [rsp + 8512]
                        mov              qword ptr [rsp + 8480], rax
                        mov              rax, qword ptr [rsp + 8520]
                        mov              qword ptr [rsp + 8488], rax
                        .section         .rodata
.Lrkfn925:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn925]
                        lea              rsi, [rsp + 8480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8464], rax
                        mov              qword ptr [rsp + 8472], rdx
                        cmp              al, 104;                             je    n584_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n584_disjunction_as
n626_call_builtin_icon_β:
                        mov              r11, 265;                            jmp   n584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n627_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rsp + 8448], 2            # result
                        mov              dword ptr [rsp + 8452], 11
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rsp + 8456], rax;         jmp   n628_call_builtin_icon_α
n627_lit_string_β:      mov              r11, 266;                            jmp   n584_disjunction_af
.Lx926_0:               .quad            .Lx926_0_s
.Lx926_0_s:             .string          "/etc/passwd"
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_icon_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 8448]
                        mov              qword ptr [rsp + 8416], rax
                        mov              rax, qword ptr [rsp + 8456]
                        mov              qword ptr [rsp + 8424], rax
                        .section         .rodata
.Lrkfn928:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]
                        lea              rsi, [rsp + 8416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 8400], rax
                        mov              qword ptr [rsp + 8408], rdx
                        cmp              al, 104;                             je    n584_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n584_disjunction_as
n628_call_builtin_icon_β:
                        mov              r11, 267;                            jmp   n584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:     mov              r11, 268
                        mov              qword ptr [rsp + 7040], 3            # result
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 7048], rax;         jmp   n630_keyword_icon_α
.Lx929_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n630_keyword_icon_α:    mov              r11, 269
                        mov              rdi, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n634_call_builtin_icon_α
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx;         jmp   n631_iterate_α
n630_keyword_icon_β:    mov              r11, 269;                            jmp   n634_call_builtin_icon_α
.Lx930_0:               .quad            .Lx930_0_s
.Lx930_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n631_iterate_α:         mov              r11, 270
                        mov              qword ptr [rsp + 7120], 0
.Lx932_0:               mov              rdi, qword ptr [rsp + 7136]
                        mov              rsi, qword ptr [rsp + 7144]
                        mov              rdx, qword ptr [rsp + 7120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                        cmp              rax, 104;                            je    n634_call_builtin_icon_α
                                                                              jmp   n632_call_builtin_icon_α
n631_iterate_β:         mov              r11, 270
                        inc              qword ptr [rsp + 7120];              jmp   .Lx932_0
#-----------------------------------------------------------------------------------------------------------------------
n632_call_builtin_icon_α:
                        mov              r11, 271
                        mov              rax, qword ptr [rsp + 7104]
                        mov              qword ptr [rsp + 7072], rax
                        mov              rax, qword ptr [rsp + 7112]
                        mov              qword ptr [rsp + 7080], rax
                        .section         .rodata
.Lrkfn934:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn934]
                        lea              rsi, [rsp + 7072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 7056], rax
                        mov              qword ptr [rsp + 7064], rdx
                        cmp              al, 104;                             je    n631_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n633_limit_α
n632_call_builtin_icon_β:
                        mov              r11, 271;                            jmp   n631_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n633_limit_α:           mov              r11, 272
                        mov              rax, qword ptr [rsp + 7024]
                        mov              rcx, qword ptr [rsp + 7048]
                        cmp              rax, rcx;                            jge   n634_call_builtin_icon_α
                        inc              qword ptr [rsp + 7024]
                        mov              rax, qword ptr [rsp + 7056]
                        mov              qword ptr [rsp + 7008], rax
                        mov              rax, qword ptr [rsp + 7064]
                        mov              qword ptr [rsp + 7016], rax;         jmp   n631_iterate_β
n633_limit_β:           mov              r11, 272;                            jmp   n632_call_builtin_icon_β
#-----------------------------------------------------------------------------------------------------------------------
n634_call_builtin_icon_α:
                        mov              r11, 273
                        .section         .rodata
.Lrkfn938:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn938]
                        lea              rsi, [rsp + 6992]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6976], rax
                        mov              qword ptr [rsp + 6984], rdx
                        cmp              al, 104;                             je    n635_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_lit_string_α
n634_call_builtin_icon_β:
                        mov              r11, 273;                            jmp   n635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 6800], 2            # result
                        mov              dword ptr [rsp + 6804], 19
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rsp + 6808], rax;         jmp   n636_disjunction_α
.Lx939_0:               .quad            .Lx939_0_s
.Lx939_0_s:             .string          "flush /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n636_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rsp + 6816], 0
                        mov              qword ptr [rsp + 6824], 0
                        mov              dword ptr [rsp + 6832], 0;           jmp   n693_var_α
n636_disjunction_as:    mov              r11, 275
                        mov              eax, dword ptr [rsp + 6832]
                        cmp              eax, 0;                              jne   .Lx941_0
                        mov              rax, qword ptr [rsp + 6848]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6856]
                        mov              qword ptr [rsp + 6824], rax;         jmp   n637_call_builtin_icon_α
.Lx941_0:               cmp              eax, 1;                              jne   .Lx941_1
                        mov              rax, qword ptr [rsp + 6960]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 6968]
                        mov              qword ptr [rsp + 6824], rax;         jmp   n637_call_builtin_icon_α
.Lx941_1:                                                                     jmp   n637_call_builtin_icon_α
n636_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rsp + 6832]
                        cmp              eax, 0;                              je    n636_disjunction_af
                                                                              jmp   n636_disjunction_af
n636_disjunction_af:    mov              r11, 275
                        add              dword ptr [rsp + 6832], 1
                        mov              eax, dword ptr [rsp + 6832]
                        cmp              eax, 1;                              je    n692_lit_string_α
                                                                              jmp   n638_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n637_call_builtin_icon_α:
                        mov              r11, 276
                        mov              rax, qword ptr [rsp + 6816]
                        mov              qword ptr [rsp + 6768], rax
                        mov              rax, qword ptr [rsp + 6824]
                        mov              qword ptr [rsp + 6776], rax
                        mov              rax, qword ptr [rsp + 6800]
                        mov              qword ptr [rsp + 6752], rax
                        mov              rax, qword ptr [rsp + 6808]
                        mov              qword ptr [rsp + 6760], rax
                        .section         .rodata
.Lrkfn943:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn943]
                        lea              rsi, [rsp + 6752]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6736], rax
                        mov              qword ptr [rsp + 6744], rdx
                        cmp              al, 104;                             je    n636_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n638_lit_string_α
n637_call_builtin_icon_β:
                        mov              r11, 276;                            jmp   n636_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rsp + 6560], 2            # result
                        mov              dword ptr [rsp + 6564], 19
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rsp + 6568], rax;         jmp   n639_disjunction_α
.Lx944_0:               .quad            .Lx944_0_s
.Lx944_0_s:             .string          "close /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n639_disjunction_α:     mov              r11, 278
                        mov              qword ptr [rsp + 6576], 0
                        mov              qword ptr [rsp + 6584], 0
                        mov              dword ptr [rsp + 6592], 0;           jmp   n689_var_α
n639_disjunction_as:    mov              r11, 278
                        mov              eax, dword ptr [rsp + 6592]
                        cmp              eax, 0;                              jne   .Lx946_0
                        mov              rax, qword ptr [rsp + 6608]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6616]
                        mov              qword ptr [rsp + 6584], rax;         jmp   n640_call_builtin_icon_α
.Lx946_0:               cmp              eax, 1;                              jne   .Lx946_1
                        mov              rax, qword ptr [rsp + 6720]
                        mov              qword ptr [rsp + 6576], rax
                        mov              rax, qword ptr [rsp + 6728]
                        mov              qword ptr [rsp + 6584], rax;         jmp   n640_call_builtin_icon_α
.Lx946_1:                                                                     jmp   n640_call_builtin_icon_α
n639_disjunction_β:     mov              r11, 278
                        mov              eax, dword ptr [rsp + 6592]
                        cmp              eax, 0;                              je    n639_disjunction_af
                                                                              jmp   n639_disjunction_af
n639_disjunction_af:    mov              r11, 278
                        add              dword ptr [rsp + 6592], 1
                        mov              eax, dword ptr [rsp + 6592]
                        cmp              eax, 1;                              je    n688_lit_string_α
                                                                              jmp   n641_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n640_call_builtin_icon_α:
                        mov              r11, 279
                        mov              rax, qword ptr [rsp + 6576]
                        mov              qword ptr [rsp + 6528], rax
                        mov              rax, qword ptr [rsp + 6584]
                        mov              qword ptr [rsp + 6536], rax
                        mov              rax, qword ptr [rsp + 6560]
                        mov              qword ptr [rsp + 6512], rax
                        mov              rax, qword ptr [rsp + 6568]
                        mov              qword ptr [rsp + 6520], rax
                        .section         .rodata
.Lrkfn948:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn948]
                        lea              rsi, [rsp + 6512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6496], rax
                        mov              qword ptr [rsp + 6504], rdx
                        cmp              al, 104;                             je    n639_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n641_lit_string_α
n640_call_builtin_icon_β:
                        mov              r11, 279;                            jmp   n639_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n641_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 6320], 2            # result
                        mov              dword ptr [rsp + 6324], 19
                        mov              rax, qword ptr [rip + .Lx949_0]
                        mov              qword ptr [rsp + 6328], rax;         jmp   n642_disjunction_α
.Lx949_0:               .quad            .Lx949_0_s
.Lx949_0_s:             .string          "close /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n642_disjunction_α:     mov              r11, 281
                        mov              qword ptr [rsp + 6336], 0
                        mov              qword ptr [rsp + 6344], 0
                        mov              dword ptr [rsp + 6352], 0;           jmp   n685_var_α
n642_disjunction_as:    mov              r11, 281
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 0;                              jne   .Lx951_0
                        mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n643_call_builtin_icon_α
.Lx951_0:               cmp              eax, 1;                              jne   .Lx951_1
                        mov              rax, qword ptr [rsp + 6480]
                        mov              qword ptr [rsp + 6336], rax
                        mov              rax, qword ptr [rsp + 6488]
                        mov              qword ptr [rsp + 6344], rax;         jmp   n643_call_builtin_icon_α
.Lx951_1:                                                                     jmp   n643_call_builtin_icon_α
n642_disjunction_β:     mov              r11, 281
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 0;                              je    n642_disjunction_af
                                                                              jmp   n642_disjunction_af
n642_disjunction_af:    mov              r11, 281
                        add              dword ptr [rsp + 6352], 1
                        mov              eax, dword ptr [rsp + 6352]
                        cmp              eax, 1;                              je    n684_lit_string_α
                                                                              jmp   n644_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_call_builtin_icon_α:
                        mov              r11, 282
                        mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 6288], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 6296], rax
                        mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6280], rax
                        .section         .rodata
.Lrkfn953:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]
                        lea              rsi, [rsp + 6272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6256], rax
                        mov              qword ptr [rsp + 6264], rdx
                        cmp              al, 104;                             je    n642_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n644_lit_string_α
n643_call_builtin_icon_β:
                        mov              r11, 282;                            jmp   n642_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n644_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 6080], 2            # result
                        mov              dword ptr [rsp + 6084], 19
                        mov              rax, qword ptr [rip + .Lx954_0]
                        mov              qword ptr [rsp + 6088], rax;         jmp   n645_disjunction_α
.Lx954_0:               .quad            .Lx954_0_s
.Lx954_0_s:             .string          "flush /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n645_disjunction_α:     mov              r11, 284
                        mov              qword ptr [rsp + 6096], 0
                        mov              qword ptr [rsp + 6104], 0
                        mov              dword ptr [rsp + 6112], 0;           jmp   n681_var_α
n645_disjunction_as:    mov              r11, 284
                        mov              eax, dword ptr [rsp + 6112]
                        cmp              eax, 0;                              jne   .Lx956_0
                        mov              rax, qword ptr [rsp + 6128]
                        mov              qword ptr [rsp + 6096], rax
                        mov              rax, qword ptr [rsp + 6136]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n646_call_builtin_icon_α
.Lx956_0:               cmp              eax, 1;                              jne   .Lx956_1
                        mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6096], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n646_call_builtin_icon_α
.Lx956_1:                                                                     jmp   n646_call_builtin_icon_α
n645_disjunction_β:     mov              r11, 284
                        mov              eax, dword ptr [rsp + 6112]
                        cmp              eax, 0;                              je    n645_disjunction_af
                                                                              jmp   n645_disjunction_af
n645_disjunction_af:    mov              r11, 284
                        add              dword ptr [rsp + 6112], 1
                        mov              eax, dword ptr [rsp + 6112]
                        cmp              eax, 1;                              je    n680_lit_string_α
                                                                              jmp   n647_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n646_call_builtin_icon_α:
                        mov              r11, 285
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6056], rax
                        mov              rax, qword ptr [rsp + 6080]
                        mov              qword ptr [rsp + 6032], rax
                        mov              rax, qword ptr [rsp + 6088]
                        mov              qword ptr [rsp + 6040], rax
                        .section         .rodata
.Lrkfn958:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn958]
                        lea              rsi, [rsp + 6032]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6016], rax
                        mov              qword ptr [rsp + 6024], rdx
                        cmp              al, 104;                             je    n645_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n647_call_builtin_icon_α
n646_call_builtin_icon_β:
                        mov              r11, 285;                            jmp   n645_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n647_call_builtin_icon_α:
                        mov              r11, 286
                        .section         .rodata
.Lrkfn960:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn960]
                        lea              rsi, [rsp + 6000]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx
                        cmp              al, 104;                             je    n648_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n648_lit_string_α
n647_call_builtin_icon_β:
                        mov              r11, 286;                            jmp   n648_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rsp + 5808], 2            # result
                        mov              dword ptr [rsp + 5812], 17
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 5816], rax;         jmp   n649_disjunction_α
.Lx961_0:               .quad            .Lx961_0_s
.Lx961_0_s:             .string          "flush /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n649_disjunction_α:     mov              r11, 288
                        mov              qword ptr [rsp + 5824], 0
                        mov              qword ptr [rsp + 5832], 0
                        mov              dword ptr [rsp + 5840], 0;           jmp   n677_var_α
n649_disjunction_as:    mov              r11, 288
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 0;                              jne   .Lx963_0
                        mov              rax, qword ptr [rsp + 5856]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5864]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n650_call_builtin_icon_α
.Lx963_0:               cmp              eax, 1;                              jne   .Lx963_1
                        mov              rax, qword ptr [rsp + 5968]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5976]
                        mov              qword ptr [rsp + 5832], rax;         jmp   n650_call_builtin_icon_α
.Lx963_1:                                                                     jmp   n650_call_builtin_icon_α
n649_disjunction_β:     mov              r11, 288
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 0;                              je    n649_disjunction_af
                                                                              jmp   n649_disjunction_af
n649_disjunction_af:    mov              r11, 288
                        add              dword ptr [rsp + 5840], 1
                        mov              eax, dword ptr [rsp + 5840]
                        cmp              eax, 1;                              je    n676_lit_string_α
                                                                              jmp   n651_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_icon_α:
                        mov              r11, 289
                        mov              rax, qword ptr [rsp + 5824]
                        mov              qword ptr [rsp + 5776], rax
                        mov              rax, qword ptr [rsp + 5832]
                        mov              qword ptr [rsp + 5784], rax
                        mov              rax, qword ptr [rsp + 5808]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 5816]
                        mov              qword ptr [rsp + 5768], rax
                        .section         .rodata
.Lrkfn965:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn965]
                        lea              rsi, [rsp + 5760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5744], rax
                        mov              qword ptr [rsp + 5752], rdx
                        cmp              al, 104;                             je    n649_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_lit_string_α
n650_call_builtin_icon_β:
                        mov              r11, 289;                            jmp   n649_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n651_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rsp + 5568], 2            # result
                        mov              dword ptr [rsp + 5572], 17
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n652_disjunction_α
.Lx966_0:               .quad            .Lx966_0_s
.Lx966_0_s:             .string          "close /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n652_disjunction_α:     mov              r11, 291
                        mov              qword ptr [rsp + 5584], 0
                        mov              qword ptr [rsp + 5592], 0
                        mov              dword ptr [rsp + 5600], 0;           jmp   n673_var_α
n652_disjunction_as:    mov              r11, 291
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 0;                              jne   .Lx968_0
                        mov              rax, qword ptr [rsp + 5616]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5624]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n653_call_builtin_icon_α
.Lx968_0:               cmp              eax, 1;                              jne   .Lx968_1
                        mov              rax, qword ptr [rsp + 5728]
                        mov              qword ptr [rsp + 5584], rax
                        mov              rax, qword ptr [rsp + 5736]
                        mov              qword ptr [rsp + 5592], rax;         jmp   n653_call_builtin_icon_α
.Lx968_1:                                                                     jmp   n653_call_builtin_icon_α
n652_disjunction_β:     mov              r11, 291
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 0;                              je    n652_disjunction_af
                                                                              jmp   n652_disjunction_af
n652_disjunction_af:    mov              r11, 291
                        add              dword ptr [rsp + 5600], 1
                        mov              eax, dword ptr [rsp + 5600]
                        cmp              eax, 1;                              je    n672_lit_string_α
                                                                              jmp   n654_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n653_call_builtin_icon_α:
                        mov              r11, 292
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5536], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5544], rax
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5528], rax
                        .section         .rodata
.Lrkfn970:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn970]
                        lea              rsi, [rsp + 5520]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx
                        cmp              al, 104;                             je    n652_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n654_lit_string_α
n653_call_builtin_icon_β:
                        mov              r11, 292;                            jmp   n652_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 17
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n655_disjunction_α
.Lx971_0:               .quad            .Lx971_0_s
.Lx971_0_s:             .string          "close /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n655_disjunction_α:     mov              r11, 294
                        mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              dword ptr [rsp + 5360], 0;           jmp   n669_var_α
n655_disjunction_as:    mov              r11, 294
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              jne   .Lx973_0
                        mov              rax, qword ptr [rsp + 5376]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5384]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n656_call_builtin_icon_α
.Lx973_0:               cmp              eax, 1;                              jne   .Lx973_1
                        mov              rax, qword ptr [rsp + 5488]
                        mov              qword ptr [rsp + 5344], rax
                        mov              rax, qword ptr [rsp + 5496]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n656_call_builtin_icon_α
.Lx973_1:                                                                     jmp   n656_call_builtin_icon_α
n655_disjunction_β:     mov              r11, 294
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 0;                              je    n655_disjunction_af
                                                                              jmp   n655_disjunction_af
n655_disjunction_af:    mov              r11, 294
                        add              dword ptr [rsp + 5360], 1
                        mov              eax, dword ptr [rsp + 5360]
                        cmp              eax, 1;                              je    n668_lit_string_α
                                                                              jmp   n657_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n656_call_builtin_icon_α:
                        mov              r11, 295
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5288], rax
                        .section         .rodata
.Lrkfn975:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn975]
                        lea              rsi, [rsp + 5280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5264], rax
                        mov              qword ptr [rsp + 5272], rdx
                        cmp              al, 104;                             je    n655_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n657_lit_string_α
n656_call_builtin_icon_β:
                        mov              r11, 295;                            jmp   n655_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n657_lit_string_α:      mov              r11, 296
                        mov              qword ptr [rsp + 5088], 2            # result
                        mov              dword ptr [rsp + 5092], 17
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rsp + 5096], rax;         jmp   n658_disjunction_α
.Lx976_0:               .quad            .Lx976_0_s
.Lx976_0_s:             .string          "flush /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n658_disjunction_α:     mov              r11, 297
                        mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              dword ptr [rsp + 5120], 0;           jmp   n665_var_α
n658_disjunction_as:    mov              r11, 297
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              jne   .Lx978_0
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n659_call_builtin_icon_α
.Lx978_0:               cmp              eax, 1;                              jne   .Lx978_1
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5104], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n659_call_builtin_icon_α
.Lx978_1:                                                                     jmp   n659_call_builtin_icon_α
n658_disjunction_β:     mov              r11, 297
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 0;                              je    n658_disjunction_af
                                                                              jmp   n658_disjunction_af
n658_disjunction_af:    mov              r11, 297
                        add              dword ptr [rsp + 5120], 1
                        mov              eax, dword ptr [rsp + 5120]
                        cmp              eax, 1;                              je    n664_lit_string_α
                                                                              jmp   n660_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n659_call_builtin_icon_α:
                        mov              r11, 298
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 5048], rax
                        .section         .rodata
.Lrkfn980:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn980]
                        lea              rsi, [rsp + 5040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              al, 104;                             je    n658_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n660_disjunction_α
n659_call_builtin_icon_β:
                        mov              r11, 298;                            jmp   n658_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n660_disjunction_α:     mov              r11, 299
                        mov              qword ptr [rsp + 4960], 0
                        mov              qword ptr [rsp + 4968], 0
                        mov              dword ptr [rsp + 4976], 0;           jmp   n663_lit_string_α
n660_disjunction_as:    mov              r11, 299
                        mov              eax, dword ptr [rsp + 4976]
                        cmp              eax, 0;                              jne   .Lx982_0
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n661_call_α
.Lx982_0:               cmp              eax, 1;                              jne   .Lx982_1
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n661_call_α
.Lx982_1:                                                                     jmp   n661_call_α
n660_disjunction_β:     mov              r11, 299
                        mov              eax, dword ptr [rsp + 4976]
                        cmp              eax, 0;                              je    n660_disjunction_af
                                                                              jmp   n660_disjunction_af
n660_disjunction_af:    mov              r11, 299
                        add              dword ptr [rsp + 4976], 1
                        mov              eax, dword ptr [rsp + 4976]
                        cmp              eax, 1;                              je    n662_lit_string_α
                                                                              jmp   n696_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n661_call_α:            mov              r11, 300
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 4936], rax
                        .section         .rodata
.Lbynamefn300:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn300]
                        lea              rsi, [rsp + 4928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    n660_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n660_disjunction_β
n661_call_β:            mov              r11, 300;                            jmp   n660_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rsp + 5008], 2            # result
                        mov              dword ptr [rsp + 5012], 4
                        mov              rax, qword ptr [rip + .Lx984_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n660_disjunction_as
n662_lit_string_β:      mov              r11, 301;                            jmp   n660_disjunction_af
.Lx984_0:               .quad            .Lx984_0_s
.Lx984_0_s:             .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rsp + 4992], 2            # result
                        mov              dword ptr [rsp + 4996], 4
                        mov              rax, qword ptr [rip + .Lx985_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n660_disjunction_as
n663_lit_string_β:      mov              r11, 302;                            jmp   n660_disjunction_af
.Lx985_0:               .quad            .Lx985_0_s
.Lx985_0_s:             .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rsp + 5248], 2            # result
                        mov              dword ptr [rsp + 5252], 6
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n658_disjunction_as
n664_lit_string_β:      mov              r11, 303;                            jmp   n658_disjunction_af
.Lx986_0:               .quad            .Lx986_0_s
.Lx986_0_s:             .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n665_var_α:             mov              r11, 304
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 5232], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n666_call_α
n665_var_β:             mov              r11, 304;                            jmp   n658_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n666_call_α:            mov              r11, 305
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5200], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5208], rax
                        .section         .rodata
.Lbynamefn305:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn305]
                        lea              rsi, [rsp + 5200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                        cmp              al, 104;                             je    n658_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n667_call_builtin_icon_α
n666_call_β:            mov              r11, 305;                            jmp   n658_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n667_call_builtin_icon_α:
                        mov              r11, 306
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 5160], rax
                        .section         .rodata
.Lrkfn991:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn991]
                        lea              rsi, [rsp + 5152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              al, 104;                             je    n658_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n658_disjunction_as
n667_call_builtin_icon_β:
                        mov              r11, 306;                            jmp   n658_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rsp + 5488], 2            # result
                        mov              dword ptr [rsp + 5492], 6
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rsp + 5496], rax;         jmp   n655_disjunction_as
n668_lit_string_β:      mov              r11, 307;                            jmp   n655_disjunction_af
.Lx992_0:               .quad            .Lx992_0_s
.Lx992_0_s:             .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n669_var_α:             mov              r11, 308
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 5472], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 5480], rax;         jmp   n670_call_builtin_icon_α
n669_var_β:             mov              r11, 308;                            jmp   n655_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n670_call_builtin_icon_α:
                        mov              r11, 309
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5448], rax
                        .section         .rodata
.Lrkfn996:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn996]
                        lea              rsi, [rsp + 5440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5424], rax
                        mov              qword ptr [rsp + 5432], rdx
                        cmp              al, 104;                             je    n655_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n671_call_builtin_icon_α
n670_call_builtin_icon_β:
                        mov              r11, 309;                            jmp   n655_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n671_call_builtin_icon_α:
                        mov              r11, 310
                        mov              rax, qword ptr [rsp + 5424]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5432]
                        mov              qword ptr [rsp + 5400], rax
                        .section         .rodata
.Lrkfn998:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn998]
                        lea              rsi, [rsp + 5392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                        cmp              al, 104;                             je    n655_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n655_disjunction_as
n671_call_builtin_icon_β:
                        mov              r11, 310;                            jmp   n655_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rsp + 5728], 2            # result
                        mov              dword ptr [rsp + 5732], 6
                        mov              rax, qword ptr [rip + .Lx999_0]
                        mov              qword ptr [rsp + 5736], rax;         jmp   n652_disjunction_as
n672_lit_string_β:      mov              r11, 311;                            jmp   n652_disjunction_af
.Lx999_0:               .quad            .Lx999_0_s
.Lx999_0_s:             .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:             mov              r11, 312
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n674_call_builtin_icon_α
n673_var_β:             mov              r11, 312;                            jmp   n652_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n674_call_builtin_icon_α:
                        mov              r11, 313
                        mov              rax, qword ptr [rsp + 5712]
                        mov              qword ptr [rsp + 5680], rax
                        mov              rax, qword ptr [rsp + 5720]
                        mov              qword ptr [rsp + 5688], rax
                        .section         .rodata
.Lrkfn1003:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1003]
                        lea              rsi, [rsp + 5680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                        cmp              al, 104;                             je    n652_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n675_call_builtin_icon_α
n674_call_builtin_icon_β:
                        mov              r11, 313;                            jmp   n652_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n675_call_builtin_icon_α:
                        mov              r11, 314
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5640], rax
                        .section         .rodata
.Lrkfn1005:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1005]
                        lea              rsi, [rsp + 5632]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx
                        cmp              al, 104;                             je    n652_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n652_disjunction_as
n675_call_builtin_icon_β:
                        mov              r11, 314;                            jmp   n652_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rsp + 5968], 2            # result
                        mov              dword ptr [rsp + 5972], 6
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n649_disjunction_as
n676_lit_string_β:      mov              r11, 315;                            jmp   n649_disjunction_af
.Lx1006_0:              .quad            .Lx1006_0_s
.Lx1006_0_s:            .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n677_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 8768]
                        mov              qword ptr [rsp + 5952], rax
                        mov              rax, qword ptr [rsp + 8776]
                        mov              qword ptr [rsp + 5960], rax;         jmp   n678_call_α
n677_var_β:             mov              r11, 316;                            jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n678_call_α:            mov              r11, 317
                        mov              rax, qword ptr [rsp + 5952]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 5960]
                        mov              qword ptr [rsp + 5928], rax
                        .section         .rodata
.Lbynamefn317:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn317]
                        lea              rsi, [rsp + 5920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx
                        cmp              al, 104;                             je    n649_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n679_call_builtin_icon_α
n678_call_β:            mov              r11, 317;                            jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_icon_α:
                        mov              r11, 318
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5872], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5880], rax
                        .section         .rodata
.Lrkfn1011:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1011]
                        lea              rsi, [rsp + 5872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5856], rax
                        mov              qword ptr [rsp + 5864], rdx
                        cmp              al, 104;                             je    n649_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n649_disjunction_as
n679_call_builtin_icon_β:
                        mov              r11, 318;                            jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n680_lit_string_α:      mov              r11, 319
                        mov              qword ptr [rsp + 6240], 2            # result
                        mov              dword ptr [rsp + 6244], 6
                        mov              rax, qword ptr [rip + .Lx1012_0]
                        mov              qword ptr [rsp + 6248], rax;         jmp   n645_disjunction_as
n680_lit_string_β:      mov              r11, 319;                            jmp   n645_disjunction_af
.Lx1012_0:              .quad            .Lx1012_0_s
.Lx1012_0_s:            .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n681_var_α:             mov              r11, 320
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6224], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n682_call_α
n681_var_β:             mov              r11, 320;                            jmp   n645_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n682_call_α:            mov              r11, 321
                        mov              rax, qword ptr [rsp + 6224]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6232]
                        mov              qword ptr [rsp + 6200], rax
                        .section         .rodata
.Lbynamefn321:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn321]
                        lea              rsi, [rsp + 6192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx
                        cmp              al, 104;                             je    n645_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n683_call_builtin_icon_α
n682_call_β:            mov              r11, 321;                            jmp   n645_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n683_call_builtin_icon_α:
                        mov              r11, 322
                        mov              rax, qword ptr [rsp + 6176]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 6184]
                        mov              qword ptr [rsp + 6152], rax
                        .section         .rodata
.Lrkfn1017:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1017]
                        lea              rsi, [rsp + 6144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6128], rax
                        mov              qword ptr [rsp + 6136], rdx
                        cmp              al, 104;                             je    n645_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_disjunction_as
n683_call_builtin_icon_β:
                        mov              r11, 322;                            jmp   n645_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 6480], 2            # result
                        mov              dword ptr [rsp + 6484], 6
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rsp + 6488], rax;         jmp   n642_disjunction_as
n684_lit_string_β:      mov              r11, 323;                            jmp   n642_disjunction_af
.Lx1018_0:              .quad            .Lx1018_0_s
.Lx1018_0_s:            .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n685_var_α:             mov              r11, 324
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6464], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6472], rax;         jmp   n686_call_builtin_icon_α
n685_var_β:             mov              r11, 324;                            jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n686_call_builtin_icon_α:
                        mov              r11, 325
                        mov              rax, qword ptr [rsp + 6464]
                        mov              qword ptr [rsp + 6432], rax
                        mov              rax, qword ptr [rsp + 6472]
                        mov              qword ptr [rsp + 6440], rax
                        .section         .rodata
.Lrkfn1022:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1022]
                        lea              rsi, [rsp + 6432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6416], rax
                        mov              qword ptr [rsp + 6424], rdx
                        cmp              al, 104;                             je    n642_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n687_call_builtin_icon_α
n686_call_builtin_icon_β:
                        mov              r11, 325;                            jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_icon_α:
                        mov              r11, 326
                        mov              rax, qword ptr [rsp + 6416]
                        mov              qword ptr [rsp + 6384], rax
                        mov              rax, qword ptr [rsp + 6424]
                        mov              qword ptr [rsp + 6392], rax
                        .section         .rodata
.Lrkfn1024:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]
                        lea              rsi, [rsp + 6384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6368], rax
                        mov              qword ptr [rsp + 6376], rdx
                        cmp              al, 104;                             je    n642_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n642_disjunction_as
n687_call_builtin_icon_β:
                        mov              r11, 326;                            jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rsp + 6720], 2            # result
                        mov              dword ptr [rsp + 6724], 6
                        mov              rax, qword ptr [rip + .Lx1025_0]
                        mov              qword ptr [rsp + 6728], rax;         jmp   n639_disjunction_as
n688_lit_string_β:      mov              r11, 327;                            jmp   n639_disjunction_af
.Lx1025_0:              .quad            .Lx1025_0_s
.Lx1025_0_s:            .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6704], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6712], rax;         jmp   n690_call_builtin_icon_α
n689_var_β:             mov              r11, 328;                            jmp   n639_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n690_call_builtin_icon_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 6704]
                        mov              qword ptr [rsp + 6672], rax
                        mov              rax, qword ptr [rsp + 6712]
                        mov              qword ptr [rsp + 6680], rax
                        .section         .rodata
.Lrkfn1029:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1029]
                        lea              rsi, [rsp + 6672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        cmp              al, 104;                             je    n639_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n691_call_builtin_icon_α
n690_call_builtin_icon_β:
                        mov              r11, 329;                            jmp   n639_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n691_call_builtin_icon_α:
                        mov              r11, 330
                        mov              rax, qword ptr [rsp + 6656]
                        mov              qword ptr [rsp + 6624], rax
                        mov              rax, qword ptr [rsp + 6664]
                        mov              qword ptr [rsp + 6632], rax
                        .section         .rodata
.Lrkfn1031:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1031]
                        lea              rsi, [rsp + 6624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6608], rax
                        mov              qword ptr [rsp + 6616], rdx
                        cmp              al, 104;                             je    n639_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n639_disjunction_as
n691_call_builtin_icon_β:
                        mov              r11, 330;                            jmp   n639_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rsp + 6960], 2            # result
                        mov              dword ptr [rsp + 6964], 6
                        mov              rax, qword ptr [rip + .Lx1032_0]
                        mov              qword ptr [rsp + 6968], rax;         jmp   n636_disjunction_as
n692_lit_string_β:      mov              r11, 331;                            jmp   n636_disjunction_af
.Lx1032_0:              .quad            .Lx1032_0_s
.Lx1032_0_s:            .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:             mov              r11, 332
                        mov              rax, qword ptr [rsp + 8784]
                        mov              qword ptr [rsp + 6944], rax
                        mov              rax, qword ptr [rsp + 8792]
                        mov              qword ptr [rsp + 6952], rax;         jmp   n694_call_α
n693_var_β:             mov              r11, 332;                            jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n694_call_α:            mov              r11, 333
                        mov              rax, qword ptr [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              rax, qword ptr [rsp + 6952]
                        mov              qword ptr [rsp + 6920], rax
                        .section         .rodata
.Lbynamefn333:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn333]
                        lea              rsi, [rsp + 6912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6896], rax
                        mov              qword ptr [rsp + 6904], rdx
                        cmp              al, 104;                             je    n636_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n695_call_builtin_icon_α
n694_call_β:            mov              r11, 333;                            jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n695_call_builtin_icon_α:
                        mov              r11, 334
                        mov              rax, qword ptr [rsp + 6896]
                        mov              qword ptr [rsp + 6864], rax
                        mov              rax, qword ptr [rsp + 6904]
                        mov              qword ptr [rsp + 6872], rax
                        .section         .rodata
.Lrkfn1037:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1037]
                        lea              rsi, [rsp + 6864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6848], rax
                        mov              qword ptr [rsp + 6856], rdx
                        cmp              al, 104;                             je    n636_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n636_disjunction_as
n695_call_builtin_icon_β:
                        mov              r11, 334;                            jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n696_disjunction_α:     mov              r11, 335
                        mov              qword ptr [rsp + 4848], 0
                        mov              qword ptr [rsp + 4856], 0
                        mov              dword ptr [rsp + 4864], 0;           jmp   n699_lit_string_α
n696_disjunction_as:    mov              r11, 335
                        mov              eax, dword ptr [rsp + 4864]
                        cmp              eax, 0;                              jne   .Lx1039_0
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n697_call_α
.Lx1039_0:              cmp              eax, 1;                              jne   .Lx1039_1
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n697_call_α
.Lx1039_1:                                                                    jmp   n697_call_α
n696_disjunction_β:     mov              r11, 335
                        mov              eax, dword ptr [rsp + 4864]
                        cmp              eax, 0;                              je    n696_disjunction_af
                                                                              jmp   n696_disjunction_af
n696_disjunction_af:    mov              r11, 335
                        add              dword ptr [rsp + 4864], 1
                        mov              eax, dword ptr [rsp + 4864]
                        cmp              eax, 1;                              je    n698_lit_string_α
                                                                              jmp   n700_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:            mov              r11, 336
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4824], rax
                        .section         .rodata
.Lbynamefn336:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn336]
                        lea              rsi, [rsp + 4816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx
                        cmp              al, 104;                             je    n696_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n696_disjunction_β
n697_call_β:            mov              r11, 336;                            jmp   n696_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:      mov              r11, 337
                        mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 4
                        mov              rax, qword ptr [rip + .Lx1041_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n696_disjunction_as
n698_lit_string_β:      mov              r11, 337;                            jmp   n696_disjunction_af
.Lx1041_0:              .quad            .Lx1041_0_s
.Lx1041_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      mov              r11, 338
                        mov              qword ptr [rsp + 4880], 2            # result
                        mov              dword ptr [rsp + 4884], 4
                        mov              rax, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n696_disjunction_as
n699_lit_string_β:      mov              r11, 338;                            jmp   n696_disjunction_af
.Lx1042_0:              .quad            .Lx1042_0_s
.Lx1042_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rsp + 4784], 2            # result
                        mov              dword ptr [rsp + 4788], 4
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n701_call_builtin_icon_α
.Lx1043_0:              .quad            .Lx1043_0_s
.Lx1043_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n701_call_builtin_icon_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4760], rax
                        .section         .rodata
.Lrkfn1045:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1045]
                        lea              rsi, [rsp + 4752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              al, 104;                             je    n704_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n702_call_builtin_icon_α
n701_call_builtin_icon_β:
                        mov              r11, 340;                            jmp   n704_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_builtin_icon_α:
                        mov              r11, 341
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4712], rax
                        .section         .rodata
.Lrkfn1047:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rsp + 4704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    n704_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n703_call_builtin_icon_α
n702_call_builtin_icon_β:
                        mov              r11, 341;                            jmp   n704_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_builtin_icon_α:
                        mov              r11, 342
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4664], rax
                        .section         .rodata
.Lrkfn1049:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rsp + 4656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx
                        cmp              al, 104;                             je    n704_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n704_call_builtin_icon_α
n703_call_builtin_icon_β:
                        mov              r11, 342;                            jmp   n704_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_icon_α:
                        mov              r11, 343
                        .section         .rodata
.Lrkfn1051:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1051]
                        lea              rsi, [rsp + 4624]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                        cmp              al, 104;                             je    n705_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n705_lit_string_α
n704_call_builtin_icon_β:
                        mov              r11, 343;                            jmp   n705_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rsp + 4592], 2            # result
                        mov              dword ptr [rsp + 4596], 9
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n706_call_proc_staged_α
.Lx1052_0:              .quad            .Lx1052_0_s
.Lx1052_0_s:            .string          "/dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        mov              r11, 345
                        lea              rsi, [rsp + 4592]
                        call             rfile_dcα;                           jmp   .Lx1054_2
.Lx1054_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1054_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4544]
                        mov              rdx, qword ptr [rsp + 4552]
.Lx1054_29:             mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              al, 104;                             je    n707_lit_string_α
                                                                              jmp   n707_lit_string_α
n706_call_proc_staged_β:
                        mov              r11, 345;                            jmp   n707_lit_string_α
.Lx1054_0:              .quad            .Lx1054_0_s
.Lx1054_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rsp + 4496], 2            # result
                        mov              dword ptr [rsp + 4500], 4
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n708_lit_string_α
.Lx1055_0:              .quad            .Lx1055_0_s
.Lx1055_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 1
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n709_lit_string_α
.Lx1056_0:              .quad            .Lx1056_0_s
.Lx1056_0_s:            .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 4528], 2            # result
                        mov              dword ptr [rsp + 4532], 28
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n710_call_proc_staged_α
.Lx1057_0:              .quad            .Lx1057_0_s
.Lx1057_0_s:            .string          "follow the yellow brick road"
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        mov              r11, 349
                        lea              rsi, [rsp + 4496]
                        lea              rdx, [rsp + 4512]
                        lea              rcx, [rsp + 4528]
                        call             wfile_dcα;                           jmp   .Lx1059_2
.Lx1059_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1059_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4416]
                        mov              rdx, qword ptr [rsp + 4424]
.Lx1059_29:             mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                        cmp              al, 104;                             je    n711_lit_string_α
                                                                              jmp   n711_lit_string_α
n710_call_proc_staged_β:
                        mov              r11, 349;                            jmp   n711_lit_string_α
.Lx1059_0:              .quad            .Lx1059_0_s
.Lx1059_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rsp + 4400], 2            # result
                        mov              dword ptr [rsp + 4404], 4
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n712_call_proc_staged_α
.Lx1060_0:              .quad            .Lx1060_0_s
.Lx1060_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        mov              r11, 351
                        lea              rsi, [rsp + 4400]
                        call             rfile_dcα;                           jmp   .Lx1062_2
.Lx1062_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1062_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4352]
                        mov              rdx, qword ptr [rsp + 4360]
.Lx1062_29:             mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n713_lit_string_α
                                                                              jmp   n713_lit_string_α
n712_call_proc_staged_β:
                        mov              r11, 351;                            jmp   n713_lit_string_α
.Lx1062_0:              .quad            .Lx1062_0_s
.Lx1062_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:      mov              r11, 352
                        mov              qword ptr [rsp + 4304], 2            # result
                        mov              dword ptr [rsp + 4308], 4
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n714_lit_string_α
.Lx1063_0:              .quad            .Lx1063_0_s
.Lx1063_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:      mov              r11, 353
                        mov              qword ptr [rsp + 4320], 2            # result
                        mov              dword ptr [rsp + 4324], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n715_lit_string_α
.Lx1064_0:              .quad            .Lx1064_0_s
.Lx1064_0_s:            .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rsp + 4336], 2            # result
                        mov              dword ptr [rsp + 4340], 12
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n716_call_proc_staged_α
.Lx1065_0:              .quad            .Lx1065_0_s
.Lx1065_0_s:            .string          "shorter file"
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        mov              r11, 355
                        lea              rsi, [rsp + 4304]
                        lea              rdx, [rsp + 4320]
                        lea              rcx, [rsp + 4336]
                        call             wfile_dcα;                           jmp   .Lx1067_2
.Lx1067_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1067_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4224]
                        mov              rdx, qword ptr [rsp + 4232]
.Lx1067_29:             mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n717_lit_string_α
                                                                              jmp   n717_lit_string_α
n716_call_proc_staged_β:
                        mov              r11, 355;                            jmp   n717_lit_string_α
.Lx1067_0:              .quad            .Lx1067_0_s
.Lx1067_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 4
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n718_call_proc_staged_α
.Lx1068_0:              .quad            .Lx1068_0_s
.Lx1068_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n718_call_proc_staged_α:
                        mov              r11, 357
                        lea              rsi, [rsp + 4208]
                        call             rfile_dcα;                           jmp   .Lx1070_2
.Lx1070_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1070_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4160]
                        mov              rdx, qword ptr [rsp + 4168]
.Lx1070_29:             mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              al, 104;                             je    n719_lit_string_α
                                                                              jmp   n719_lit_string_α
n718_call_proc_staged_β:
                        mov              r11, 357;                            jmp   n719_lit_string_α
.Lx1070_0:              .quad            .Lx1070_0_s
.Lx1070_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 4112], 2            # result
                        mov              dword ptr [rsp + 4116], 4
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n720_lit_string_α
.Lx1071_0:              .quad            .Lx1071_0_s
.Lx1071_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:      mov              r11, 359
                        mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n721_lit_string_α
.Lx1072_0:              .quad            .Lx1072_0_s
.Lx1072_0_s:            .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 13
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n722_call_proc_staged_α
.Lx1073_0:              .quad            .Lx1073_0_s
.Lx1073_0_s:            .string          "gets extended"
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        mov              r11, 361
                        lea              rsi, [rsp + 4112]
                        lea              rdx, [rsp + 4128]
                        lea              rcx, [rsp + 4144]
                        call             wfile_dcα;                           jmp   .Lx1075_2
.Lx1075_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1075_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4032]
                        mov              rdx, qword ptr [rsp + 4040]
.Lx1075_29:             mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    n723_lit_string_α
                                                                              jmp   n723_lit_string_α
n722_call_proc_staged_β:
                        mov              r11, 361;                            jmp   n723_lit_string_α
.Lx1075_0:              .quad            .Lx1075_0_s
.Lx1075_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rsp + 4016], 2            # result
                        mov              dword ptr [rsp + 4020], 4
                        mov              rax, qword ptr [rip + .Lx1076_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n724_call_proc_staged_α
.Lx1076_0:              .quad            .Lx1076_0_s
.Lx1076_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        mov              r11, 363
                        lea              rsi, [rsp + 4016]
                        call             rfile_dcα;                           jmp   .Lx1078_2
.Lx1078_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1078_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3968]
                        mov              rdx, qword ptr [rsp + 3976]
.Lx1078_29:             mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              al, 104;                             je    n725_lit_string_α
                                                                              jmp   n725_lit_string_α
n724_call_proc_staged_β:
                        mov              r11, 363;                            jmp   n725_lit_string_α
.Lx1078_0:              .quad            .Lx1078_0_s
.Lx1078_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:      mov              r11, 364
                        mov              qword ptr [rsp + 3920], 2            # result
                        mov              dword ptr [rsp + 3924], 4
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rsp + 3928], rax;         jmp   n726_lit_string_α
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:      mov              r11, 365
                        mov              qword ptr [rsp + 3936], 2            # result
                        mov              dword ptr [rsp + 3940], 2
                        mov              rax, qword ptr [rip + .Lx1080_0]
                        mov              qword ptr [rsp + 3944], rax;         jmp   n727_lit_string_α
.Lx1080_0:              .quad            .Lx1080_0_s
.Lx1080_0_s:            .string          "rw"
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:      mov              r11, 366
                        mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 7
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n728_call_proc_staged_α
.Lx1081_0:              .quad            .Lx1081_0_s
.Lx1081_0_s:            .string          "changed"
#-----------------------------------------------------------------------------------------------------------------------
n728_call_proc_staged_α:
                        mov              r11, 367
                        lea              rsi, [rsp + 3920]
                        lea              rdx, [rsp + 3936]
                        lea              rcx, [rsp + 3952]
                        call             wfile_dcα;                           jmp   .Lx1083_2
.Lx1083_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1083_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3840]
                        mov              rdx, qword ptr [rsp + 3848]
.Lx1083_29:             mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n729_lit_string_α
                                                                              jmp   n729_lit_string_α
n728_call_proc_staged_β:
                        mov              r11, 367;                            jmp   n729_lit_string_α
.Lx1083_0:              .quad            .Lx1083_0_s
.Lx1083_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rsp + 3824], 2            # result
                        mov              dword ptr [rsp + 3828], 4
                        mov              rax, qword ptr [rip + .Lx1084_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n730_call_proc_staged_α
.Lx1084_0:              .quad            .Lx1084_0_s
.Lx1084_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        mov              r11, 369
                        lea              rsi, [rsp + 3824]
                        call             rfile_dcα;                           jmp   .Lx1086_2
.Lx1086_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1086_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3776]
                        mov              rdx, qword ptr [rsp + 3784]
.Lx1086_29:             mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    n731_lit_string_α
                                                                              jmp   n731_lit_string_α
n730_call_proc_staged_β:
                        mov              r11, 369;                            jmp   n731_lit_string_α
.Lx1086_0:              .quad            .Lx1086_0_s
.Lx1086_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 4
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n732_lit_string_α
.Lx1087_0:              .quad            .Lx1087_0_s
.Lx1087_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 1
                        mov              rax, qword ptr [rip + .Lx1088_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n733_lit_string_α
.Lx1088_0:              .quad            .Lx1088_0_s
.Lx1088_0_s:            .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 7
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n734_call_proc_staged_α
.Lx1089_0:              .quad            .Lx1089_0_s
.Lx1089_0_s:            .string          "mode b "
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        mov              r11, 373
                        lea              rsi, [rsp + 3728]
                        lea              rdx, [rsp + 3744]
                        lea              rcx, [rsp + 3760]
                        call             wfile_dcα;                           jmp   .Lx1091_2
.Lx1091_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1091_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
.Lx1091_29:             mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              al, 104;                             je    n735_lit_string_α
                                                                              jmp   n735_lit_string_α
n734_call_proc_staged_β:
                        mov              r11, 373;                            jmp   n735_lit_string_α
.Lx1091_0:              .quad            .Lx1091_0_s
.Lx1091_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rsp + 3632], 2            # result
                        mov              dword ptr [rsp + 3636], 4
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n736_call_proc_staged_α
.Lx1092_0:              .quad            .Lx1092_0_s
.Lx1092_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        mov              r11, 375
                        lea              rsi, [rsp + 3632]
                        call             rfile_dcα;                           jmp   .Lx1094_2
.Lx1094_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1094_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
.Lx1094_29:             mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n737_lit_string_α
                                                                              jmp   n737_lit_string_α
n736_call_proc_staged_β:
                        mov              r11, 375;                            jmp   n737_lit_string_α
.Lx1094_0:              .quad            .Lx1094_0_s
.Lx1094_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rsp + 3536], 2            # result
                        mov              dword ptr [rsp + 3540], 4
                        mov              rax, qword ptr [rip + .Lx1095_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n738_lit_string_α
.Lx1095_0:              .quad            .Lx1095_0_s
.Lx1095_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              r11, 377
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 3
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n739_lit_string_α
.Lx1096_0:              .quad            .Lx1096_0_s
.Lx1096_0_s:            .string          "crw"
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      mov              r11, 378
                        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 12
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n740_call_proc_staged_α
.Lx1097_0:              .quad            .Lx1097_0_s
.Lx1097_0_s:            .string          "cleared anew"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_proc_staged_α:
                        mov              r11, 379
                        lea              rsi, [rsp + 3536]
                        lea              rdx, [rsp + 3552]
                        lea              rcx, [rsp + 3568]
                        call             wfile_dcα;                           jmp   .Lx1099_2
.Lx1099_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1099_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3456]
                        mov              rdx, qword ptr [rsp + 3464]
.Lx1099_29:             mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n741_lit_string_α
                                                                              jmp   n741_lit_string_α
n740_call_proc_staged_β:
                        mov              r11, 379;                            jmp   n741_lit_string_α
.Lx1099_0:              .quad            .Lx1099_0_s
.Lx1099_0_s:            .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 4
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n742_call_proc_staged_α
.Lx1100_0:              .quad            .Lx1100_0_s
.Lx1100_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        mov              r11, 381
                        lea              rsi, [rsp + 3440]
                        call             rfile_dcα;                           jmp   .Lx1102_2
.Lx1102_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1102_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
.Lx1102_29:             mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n743_lit_string_α
                                                                              jmp   n743_lit_string_α
n742_call_proc_staged_β:
                        mov              r11, 381;                            jmp   n743_lit_string_α
.Lx1102_0:              .quad            .Lx1102_0_s
.Lx1102_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rsp + 3360], 2            # result
                        mov              dword ptr [rsp + 3364], 4
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n744_lit_string_α
.Lx1103_0:              .quad            .Lx1103_0_s
.Lx1103_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 4
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n745_call_α
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:            mov              r11, 384
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lbynamefn384:          .string          "rename"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn384]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n746_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n746_lit_string_α
n745_call_β:            mov              r11, 384;                            jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 4
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n747_call_proc_staged_α
.Lx1106_0:              .quad            .Lx1106_0_s
.Lx1106_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_proc_staged_α:
                        mov              r11, 386
                        lea              rsi, [rsp + 3280]
                        call             rfile_dcα;                           jmp   .Lx1108_2
.Lx1108_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1108_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3232]
                        mov              rdx, qword ptr [rsp + 3240]
.Lx1108_29:             mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    n748_call_builtin_icon_α
                                                                              jmp   n748_call_builtin_icon_α
n747_call_proc_staged_β:
                        mov              r11, 386;                            jmp   n748_call_builtin_icon_α
.Lx1108_0:              .quad            .Lx1108_0_s
.Lx1108_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_builtin_icon_α:
                        mov              r11, 387
                        .section         .rodata
.Lrkfn1110:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]
                        lea              rsi, [rsp + 3216]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n749_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n749_disjunction_α
n748_call_builtin_icon_β:
                        mov              r11, 387;                            jmp   n749_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n749_disjunction_α:     mov              r11, 388
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              dword ptr [rsp + 3008], 0;           jmp   n794_lit_string_α
n749_disjunction_as:    mov              r11, 388
                        mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              jne   .Lx1112_0
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n750_call_builtin_icon_α
.Lx1112_0:              cmp              eax, 1;                              jne   .Lx1112_1
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n750_call_builtin_icon_α
.Lx1112_1:                                                                    jmp   n750_call_builtin_icon_α
n749_disjunction_β:     mov              r11, 388
                        mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 0;                              je    n749_disjunction_af
                                                                              jmp   n749_disjunction_af
n749_disjunction_af:    mov              r11, 388
                        add              dword ptr [rsp + 3008], 1
                        mov              eax, dword ptr [rsp + 3008]
                        cmp              eax, 1;                              je    n793_lit_string_α
                                                                              jmp   n751_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n750_call_builtin_icon_α:
                        mov              r11, 389
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        .section         .rodata
.Lrkfn1114:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1114]
                        lea              rsi, [rsp + 2960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n749_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n751_disjunction_α
n750_call_builtin_icon_β:
                        mov              r11, 389;                            jmp   n749_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n751_disjunction_α:     mov              r11, 390
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n788_lit_string_α
n751_disjunction_as:    mov              r11, 390
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx1116_0
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n752_call_builtin_icon_α
.Lx1116_0:              cmp              eax, 1;                              jne   .Lx1116_1
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n752_call_builtin_icon_α
.Lx1116_1:                                                                    jmp   n752_call_builtin_icon_α
n751_disjunction_β:     mov              r11, 390
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              je    n751_disjunction_af
                                                                              jmp   n751_disjunction_af
n751_disjunction_af:    mov              r11, 390
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 1;                              je    n787_lit_string_α
                                                                              jmp   n753_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_icon_α:
                        mov              r11, 391
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn1118:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1118]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    n751_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n753_lit_string_α
n752_call_builtin_icon_β:
                        mov              r11, 391;                            jmp   n751_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:      mov              r11, 392
                        mov              qword ptr [rsp + 2576], 2            # result
                        mov              dword ptr [rsp + 2580], 7
                        mov              rax, qword ptr [rip + .Lx1119_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n754_var_α
.Lx1119_0:              .quad            .Lx1119_0_s
.Lx1119_0_s:            .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n754_var_α:             mov              r11, 393
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 3
                        mov              rax, qword ptr [rip + .Lx1122_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n756_var_α
.Lx1122_0:              .quad            .Lx1122_0_s
.Lx1122_0_s:            .string          ">1a"
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:             mov              r11, 395
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n757_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 3
                        mov              rax, qword ptr [rip + .Lx1125_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n758_keyword_icon_α
.Lx1125_0:              .quad            .Lx1125_0_s
.Lx1125_0_s:            .string          ">2a"
#-----------------------------------------------------------------------------------------------------------------------
n758_keyword_icon_α:    mov              r11, 397
                        mov              rdi, qword ptr [rip + .Lx1126_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n760_lit_string_α
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n759_call_builtin_icon_α
n758_keyword_icon_β:    mov              r11, 397;                            jmp   n760_lit_string_α
.Lx1126_0:              .quad            .Lx1126_0_s
.Lx1126_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_icon_α:
                        mov              r11, 398
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2472], rax
                        .section         .rodata
.Lrkfn1128:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1128]
                        lea              rsi, [rsp + 2464]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n760_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n760_lit_string_α
n759_call_builtin_icon_β:
                        mov              r11, 398;                            jmp   n760_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 7
                        mov              rax, qword ptr [rip + .Lx1129_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n761_var_α
.Lx1129_0:              .quad            .Lx1129_0_s
.Lx1129_0_s:            .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:             mov              r11, 400
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n762_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 3
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n763_var_α
.Lx1132_0:              .quad            .Lx1132_0_s
.Lx1132_0_s:            .string          ">2b"
#-----------------------------------------------------------------------------------------------------------------------
n763_var_α:             mov              r11, 402
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 3
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n765_keyword_icon_α
.Lx1135_0:              .quad            .Lx1135_0_s
.Lx1135_0_s:            .string          ">1b"
#-----------------------------------------------------------------------------------------------------------------------
n765_keyword_icon_α:    mov              r11, 404
                        mov              rdi, qword ptr [rip + .Lx1136_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n767_lit_string_α
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n766_call_builtin_icon_α
n765_keyword_icon_β:    mov              r11, 404;                            jmp   n767_lit_string_α
.Lx1136_0:              .quad            .Lx1136_0_s
.Lx1136_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_icon_α:
                        mov              r11, 405
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn1138:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1138]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n767_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n767_lit_string_α
n766_call_builtin_icon_β:
                        mov              r11, 405;                            jmp   n767_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:      mov              r11, 406
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 7
                        mov              rax, qword ptr [rip + .Lx1139_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n768_var_α
.Lx1139_0:              .quad            .Lx1139_0_s
.Lx1139_0_s:            .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n768_var_α:             mov              r11, 407
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n769_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 3
                        mov              rax, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n770_var_α
.Lx1142_0:              .quad            .Lx1142_0_s
.Lx1142_0_s:            .string          ">1c"
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:             mov              r11, 409
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n771_var_α
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:             mov              r11, 410
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 3
                        mov              rax, qword ptr [rip + .Lx1147_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n773_keyword_icon_α
.Lx1147_0:              .quad            .Lx1147_0_s
.Lx1147_0_s:            .string          ">2c"
#-----------------------------------------------------------------------------------------------------------------------
n773_keyword_icon_α:    mov              r11, 412
                        mov              rdi, qword ptr [rip + .Lx1148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n775_lit_string_α
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n774_call_builtin_icon_α
n773_keyword_icon_β:    mov              r11, 412;                            jmp   n775_lit_string_α
.Lx1148_0:              .quad            .Lx1148_0_s
.Lx1148_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n774_call_builtin_icon_α:
                        mov              r11, 413
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn1150:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1150]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n775_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n775_lit_string_α
n774_call_builtin_icon_β:
                        mov              r11, 413;                            jmp   n775_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:      mov              r11, 414
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 7
                        mov              rax, qword ptr [rip + .Lx1151_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n776_var_α
.Lx1151_0:              .quad            .Lx1151_0_s
.Lx1151_0_s:            .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n776_var_α:             mov              r11, 415
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n777_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_string_α:      mov              r11, 416
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx1154_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n778_var_α
.Lx1154_0:              .quad            .Lx1154_0_s
.Lx1154_0_s:            .string          ">2d"
#-----------------------------------------------------------------------------------------------------------------------
n778_var_α:             mov              r11, 417
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n779_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:             mov              r11, 418
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n780_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 3
                        mov              rax, qword ptr [rip + .Lx1159_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n781_keyword_icon_α
.Lx1159_0:              .quad            .Lx1159_0_s
.Lx1159_0_s:            .string          ">1d"
#-----------------------------------------------------------------------------------------------------------------------
n781_keyword_icon_α:    mov              r11, 420
                        mov              rdi, qword ptr [rip + .Lx1160_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n783_disjunction_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n782_call_builtin_icon_α
n781_keyword_icon_β:    mov              r11, 420;                            jmp   n783_disjunction_α
.Lx1160_0:              .quad            .Lx1160_0_s
.Lx1160_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n782_call_builtin_icon_α:
                        mov              r11, 421
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn1162:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1162]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n783_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n783_disjunction_α
n782_call_builtin_icon_β:
                        mov              r11, 421;                            jmp   n783_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n783_disjunction_α:     mov              r11, 422
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              dword ptr [rsp + 1616], 0;           jmp   n786_var_α
n783_disjunction_as:    mov              r11, 422
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 0;                              jne   .Lx1164_0
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n784_call_builtin_icon_α
.Lx1164_0:              cmp              eax, 1;                              jne   .Lx1164_1
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n784_call_builtin_icon_α
.Lx1164_1:                                                                    jmp   n784_call_builtin_icon_α
n783_disjunction_β:     mov              r11, 422
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 0;                              je    n783_disjunction_af
                                                                              jmp   n783_disjunction_af
n783_disjunction_af:    mov              r11, 422
                        add              dword ptr [rsp + 1616], 1
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 1;                              je    n785_var_α
                                                                              jmp   n799_var_α
#-----------------------------------------------------------------------------------------------------------------------
n784_call_builtin_icon_α:
                        mov              r11, 423
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn1166:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1166]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n783_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n783_disjunction_β
n784_call_builtin_icon_β:
                        mov              r11, 423;                            jmp   n783_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:             mov              r11, 424
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n783_disjunction_as
n785_var_β:             mov              r11, 424;                            jmp   n783_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n786_var_α:             mov              r11, 425
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n783_disjunction_as
n786_var_β:             mov              r11, 425;                            jmp   n783_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_string_α:      mov              r11, 426
                        mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 15
                        mov              rax, qword ptr [rip + .Lx1171_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n751_disjunction_as
n787_lit_string_β:      mov              r11, 426;                            jmp   n751_disjunction_af
.Lx1171_0:              .quad            .Lx1171_0_s
.Lx1171_0_s:            .string          "can't open tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_string_α:      mov              r11, 427
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx1172_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n789_lit_string_α
n788_lit_string_β:      mov              r11, 427;                            jmp   n751_disjunction_af
.Lx1172_0:              .quad            .Lx1172_0_s
.Lx1172_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_string_α:      mov              r11, 428
                        mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 1
                        mov              rax, qword ptr [rip + .Lx1173_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n790_call_builtin_icon_α
.Lx1173_0:              .quad            .Lx1173_0_s
.Lx1173_0_s:            .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n790_call_builtin_icon_α:
                        mov              r11, 429
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn1175:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1175]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n751_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n791_assign_α
n790_call_builtin_icon_β:
                        mov              r11, 429;                            jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n791_assign_α:          mov              r11, 430
                        mov              rax, qword ptr [rsp + 2832]
                        mov              rdx, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 8752], rax
                        mov              qword ptr [rsp + 8760], rdx
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_icon_α:
                        mov              r11, 431
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn1178:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1178]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n751_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n751_disjunction_as
n792_call_builtin_icon_β:
                        mov              r11, 431;                            jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n793_lit_string_α:      mov              r11, 432
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 15
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n749_disjunction_as
n793_lit_string_β:      mov              r11, 432;                            jmp   n749_disjunction_af
.Lx1179_0:              .quad            .Lx1179_0_s
.Lx1179_0_s:            .string          "can't open tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n794_lit_string_α:      mov              r11, 433
                        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 4
                        mov              rax, qword ptr [rip + .Lx1180_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n795_lit_string_α
n794_lit_string_β:      mov              r11, 433;                            jmp   n749_disjunction_af
.Lx1180_0:              .quad            .Lx1180_0_s
.Lx1180_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      mov              r11, 434
                        mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 1
                        mov              rax, qword ptr [rip + .Lx1181_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n796_call_builtin_icon_α
.Lx1181_0:              .quad            .Lx1181_0_s
.Lx1181_0_s:            .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n796_call_builtin_icon_α:
                        mov              r11, 435
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3128], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3112], rax
                        .section         .rodata
.Lrkfn1183:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1183]
                        lea              rsi, [rsp + 3104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx
                        cmp              al, 104;                             je    n749_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n797_assign_α
n796_call_builtin_icon_β:
                        mov              r11, 435;                            jmp   n749_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n797_assign_α:          mov              r11, 436
                        mov              rax, qword ptr [rsp + 3088]
                        mov              rdx, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 8736], rax
                        mov              qword ptr [rsp + 8744], rdx
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n798_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n798_call_builtin_icon_α:
                        mov              r11, 437
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn1186:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1186]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n749_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n749_disjunction_as
n798_call_builtin_icon_β:
                        mov              r11, 437;                            jmp   n749_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n799_var_α:             mov              r11, 438
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n800_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_string_α:      mov              r11, 439
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 3
                        mov              rax, qword ptr [rip + .Lx1189_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n801_call_builtin_icon_α
.Lx1189_0:              .quad            .Lx1189_0_s
.Lx1189_0_s:            .string          ">1e"
#-----------------------------------------------------------------------------------------------------------------------
n801_call_builtin_icon_α:
                        mov              r11, 440
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn1191:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1191]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n802_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n802_var_α
n801_call_builtin_icon_β:
                        mov              r11, 440;                            jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:             mov              r11, 441
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n803_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_string_α:      mov              r11, 442
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx1194_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n804_call_builtin_icon_α
.Lx1194_0:              .quad            .Lx1194_0_s
.Lx1194_0_s:            .string          ">2e"
#-----------------------------------------------------------------------------------------------------------------------
n804_call_builtin_icon_α:
                        mov              r11, 443
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn1196:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1196]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n805_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n805_var_α
n804_call_builtin_icon_β:
                        mov              r11, 443;                            jmp   n805_var_α
#-----------------------------------------------------------------------------------------------------------------------
n805_var_α:             mov              r11, 444
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n806_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n806_lit_string_α:      mov              r11, 445
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 3
                        mov              rax, qword ptr [rip + .Lx1199_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n807_call_builtin_icon_α
.Lx1199_0:              .quad            .Lx1199_0_s
.Lx1199_0_s:            .string          ">1f"
#-----------------------------------------------------------------------------------------------------------------------
n807_call_builtin_icon_α:
                        mov              r11, 446
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn1201:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1201]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n808_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n808_var_α
n807_call_builtin_icon_β:
                        mov              r11, 446;                            jmp   n808_var_α
#-----------------------------------------------------------------------------------------------------------------------
n808_var_α:             mov              r11, 447
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n809_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:      mov              r11, 448
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n810_call_builtin_icon_α
.Lx1204_0:              .quad            .Lx1204_0_s
.Lx1204_0_s:            .string          ">2f"
#-----------------------------------------------------------------------------------------------------------------------
n810_call_builtin_icon_α:
                        mov              r11, 449
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn1206:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1206]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n811_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n811_disjunction_α
n810_call_builtin_icon_β:
                        mov              r11, 449;                            jmp   n811_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n811_disjunction_α:     mov              r11, 450
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              dword ptr [rsp + 1120], 0;           jmp   n814_var_α
n811_disjunction_as:    mov              r11, 450
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              jne   .Lx1208_0
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n812_call_builtin_icon_α
.Lx1208_0:              cmp              eax, 1;                              jne   .Lx1208_1
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n812_call_builtin_icon_α
.Lx1208_1:                                                                    jmp   n812_call_builtin_icon_α
n811_disjunction_β:     mov              r11, 450
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              je    n811_disjunction_af
                                                                              jmp   n811_disjunction_af
n811_disjunction_af:    mov              r11, 450
                        add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 1;                              je    n813_var_α
                                                                              jmp   n815_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_builtin_icon_α:
                        mov              r11, 451
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn1210:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1210]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n811_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n811_disjunction_β
n812_call_builtin_icon_β:
                        mov              r11, 451;                            jmp   n811_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n813_var_α:             mov              r11, 452
                        mov              rax, qword ptr [rsp + 8752]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 8760]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n811_disjunction_as
n813_var_β:             mov              r11, 452;                            jmp   n811_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n814_var_α:             mov              r11, 453
                        mov              rax, qword ptr [rsp + 8736]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 8744]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n811_disjunction_as
n814_var_β:             mov              r11, 453;                            jmp   n811_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_string_α:      mov              r11, 454
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx1215_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n816_call_proc_staged_α
.Lx1215_0:              .quad            .Lx1215_0_s
.Lx1215_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n816_call_proc_staged_α:
                        mov              r11, 455
                        lea              rsi, [rsp + 1040]
                        call             rfile_dcα;                           jmp   .Lx1217_2
.Lx1217_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1217_29
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
.Lx1217_29:             mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n817_lit_string_α
                                                                              jmp   n817_lit_string_α
n816_call_proc_staged_β:
                        mov              r11, 455;                            jmp   n817_lit_string_α
.Lx1217_0:              .quad            .Lx1217_0_s
.Lx1217_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_string_α:      mov              r11, 456
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 4
                        mov              rax, qword ptr [rip + .Lx1218_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n818_call_proc_staged_α
.Lx1218_0:              .quad            .Lx1218_0_s
.Lx1218_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n818_call_proc_staged_α:
                        mov              r11, 457
                        lea              rsi, [rsp + 976]
                        call             rfile_dcα;                           jmp   .Lx1220_2
.Lx1220_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1220_29
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
.Lx1220_29:             mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n819_disjunction_α
                                                                              jmp   n819_disjunction_α
n818_call_proc_staged_β:
                        mov              r11, 457;                            jmp   n819_disjunction_α
.Lx1220_0:              .quad            .Lx1220_0_s
.Lx1220_0_s:            .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n819_disjunction_α:     mov              r11, 458
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n822_lit_string_α
n819_disjunction_as:    mov              r11, 458
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lx1222_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n820_call_α
.Lx1222_0:              cmp              eax, 1;                              jne   .Lx1222_1
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax;          jmp   n820_call_α
.Lx1222_1:                                                                    jmp   n820_call_α
n819_disjunction_β:     mov              r11, 458
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              je    n819_disjunction_af
                                                                              jmp   n819_disjunction_af
n819_disjunction_af:    mov              r11, 458
                        add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 1;                              je    n821_lit_string_α
                                                                              jmp   n823_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n820_call_α:            mov              r11, 459
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lbynamefn459:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn459]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n819_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n819_disjunction_β
n820_call_β:            mov              r11, 459;                            jmp   n819_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n821_lit_string_α:      mov              r11, 460
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 4
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n819_disjunction_as
n821_lit_string_β:      mov              r11, 460;                            jmp   n819_disjunction_af
.Lx1224_0:              .quad            .Lx1224_0_s
.Lx1224_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:      mov              r11, 461
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 4
                        mov              rax, qword ptr [rip + .Lx1225_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n819_disjunction_as
n822_lit_string_β:      mov              r11, 461;                            jmp   n819_disjunction_af
.Lx1225_0:              .quad            .Lx1225_0_s
.Lx1225_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n823_disjunction_α:     mov              r11, 462
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              dword ptr [rsp + 768], 0;            jmp   n826_lit_string_α
n823_disjunction_as:    mov              r11, 462
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 0;                              jne   .Lx1227_0
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax;          jmp   n824_call_α
.Lx1227_0:              cmp              eax, 1;                              jne   .Lx1227_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax;          jmp   n824_call_α
.Lx1227_1:                                                                    jmp   n824_call_α
n823_disjunction_β:     mov              r11, 462
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 0;                              je    n823_disjunction_af
                                                                              jmp   n823_disjunction_af
n823_disjunction_af:    mov              r11, 462
                        add              dword ptr [rsp + 768], 1
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 1;                              je    n825_lit_string_α
                                                                              jmp   n827_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n824_call_α:            mov              r11, 463
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lbynamefn463:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn463]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n823_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n823_disjunction_β
n824_call_β:            mov              r11, 463;                            jmp   n823_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n825_lit_string_α:      mov              r11, 464
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 4
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n823_disjunction_as
n825_lit_string_β:      mov              r11, 464;                            jmp   n823_disjunction_af
.Lx1229_0:              .quad            .Lx1229_0_s
.Lx1229_0_s:            .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:      mov              r11, 465
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 4
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n823_disjunction_as
n826_lit_string_β:      mov              r11, 465;                            jmp   n823_disjunction_af
.Lx1230_0:              .quad            .Lx1230_0_s
.Lx1230_0_s:            .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n827_call_builtin_icon_α:
                        mov              r11, 466
                        .section         .rodata
.Lrkfn1232:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1232]
                        lea              rsi, [rsp + 688]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n828_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n828_lit_string_α
n827_call_builtin_icon_β:
                        mov              r11, 466;                            jmp   n828_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_string_α:      mov              r11, 467
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 3
                        mov              rax, qword ptr [rip + .Lx1233_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n829_call_builtin_icon_α
.Lx1233_0:              .quad            .Lx1233_0_s
.Lx1233_0_s:            .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_icon_α:
                        mov              r11, 468
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn1235:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1235]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n830_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n830_lit_string_α
n829_call_builtin_icon_β:
                        mov              r11, 468;                            jmp   n830_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_string_α:      mov              r11, 469
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 7
                        mov              rax, qword ptr [rip + .Lx1236_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n831_call_builtin_icon_α
.Lx1236_0:              .quad            .Lx1236_0_s
.Lx1236_0_s:            .string          "def\nghi"
#-----------------------------------------------------------------------------------------------------------------------
n831_call_builtin_icon_α:
                        mov              r11, 470
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn1238:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1238]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n832_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n832_lit_string_α
n831_call_builtin_icon_β:
                        mov              r11, 470;                            jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:      mov              r11, 471
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 8
                        mov              rax, qword ptr [rip + .Lx1239_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n833_call_builtin_icon_α
.Lx1239_0:              .quad            .Lx1239_0_s
.Lx1239_0_s:            .string          "\njklmno\n"
#-----------------------------------------------------------------------------------------------------------------------
n833_call_builtin_icon_α:
                        mov              r11, 472
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn1241:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1241]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n834_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n834_lit_string_α
n833_call_builtin_icon_β:
                        mov              r11, 472;                            jmp   n834_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:      mov              r11, 473
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n835_call_builtin_icon_α
.Lx1242_0:              .quad            .Lx1242_0_s
.Lx1242_0_s:            .string          "pqr\nstu"
#-----------------------------------------------------------------------------------------------------------------------
n835_call_builtin_icon_α:
                        mov              r11, 474
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn1244:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1244]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n836_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n836_lit_string_α
n835_call_builtin_icon_β:
                        mov              r11, 474;                            jmp   n836_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_string_α:      mov              r11, 475
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx1245_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n837_call_builtin_icon_α
.Lx1245_0:              .quad            .Lx1245_0_s
.Lx1245_0_s:            .string          "vwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n837_call_builtin_icon_α:
                        mov              r11, 476
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn1247:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1247]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n838_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n838_call_builtin_icon_α
n837_call_builtin_icon_β:
                        mov              r11, 476;                            jmp   n838_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_icon_α:
                        mov              r11, 477
                        .section         .rodata
.Lrkfn1249:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1249]
                        lea              rsi, [rsp + 336]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n839_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n839_lit_string_α
n838_call_builtin_icon_β:
                        mov              r11, 477;                            jmp   n839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:      mov              r11, 478
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 0
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n840_call_builtin_icon_α
.Lx1250_0:              .quad            .Lx1250_0_s
.Lx1250_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n840_call_builtin_icon_α:
                        mov              r11, 479
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn1252:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1252]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n841_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n841_lit_string_α
n840_call_builtin_icon_β:
                        mov              r11, 479;                            jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_string_α:      mov              r11, 480
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n842_call_builtin_icon_α
.Lx1253_0:              .quad            .Lx1253_0_s
.Lx1253_0_s:            .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n842_call_builtin_icon_α:
                        mov              r11, 481
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn1255:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1255]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n843_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n843_call_builtin_icon_α
n842_call_builtin_icon_β:
                        mov              r11, 481;                            jmp   n843_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_builtin_icon_α:
                        mov              r11, 482
                        .section         .rodata
.Lrkfn1257:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]
                        lea              rsi, [rsp + 176]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n844_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n844_lit_string_α
n843_call_builtin_icon_β:
                        mov              r11, 482;                            jmp   n844_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_string_α:      mov              r11, 483
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 16
                        mov              rax, qword ptr [rip + .Lx1258_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n845_call_proc_staged_α
.Lx1258_0:              .quad            .Lx1258_0_s
.Lx1258_0_s:            .string          "echo hello world"
#-----------------------------------------------------------------------------------------------------------------------
n845_call_proc_staged_α:
                        mov              r11, 484
                        lea              rsi, [rsp + 144]
                        call             tsys_dcα;                            jmp   .Lx1260_2
.Lx1260_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1260_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx1260_29:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n846_lit_string_α
                                                                              jmp   n846_lit_string_α
n845_call_proc_staged_β:
                        mov              r11, 484;                            jmp   n846_lit_string_α
.Lx1260_0:              .quad            .Lx1260_0_s
.Lx1260_0_s:            .string          "tsys"
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:      mov              r11, 485
                        mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 21
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n847_call_proc_staged_α
.Lx1261_0:              .quad            .Lx1261_0_s
.Lx1261_0_s:            .string          "ls io.[ids][tca][dnt]"
#-----------------------------------------------------------------------------------------------------------------------
n847_call_proc_staged_α:
                        mov              r11, 486
                        lea              rsi, [rsp + 80]
                        call             tsys_dcα;                            jmp   .Lx1263_2
.Lx1263_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1263_29
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
.Lx1263_29:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n848_call_proc_staged_α
                                                                              jmp   n848_call_proc_staged_α
n847_call_proc_staged_β:
                        mov              r11, 486;                            jmp   n848_call_proc_staged_α
.Lx1263_0:              .quad            .Lx1263_0_s
.Lx1263_0_s:            .string          "tsys"
#-----------------------------------------------------------------------------------------------------------------------
n848_call_proc_staged_α:
                        mov              r11, 487
                        call             tpipe_dcα;                           jmp   .Lx1265_2
.Lx1265_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1265_29
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
.Lx1265_29:             mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n848_call_proc_staged_β:
                        mov              r11, 487;                            jmp   main_ω
.Lx1265_0:              .quad            .Lx1265_0_s
.Lx1265_0_s:            .string          "tpipe"
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
.Lstartup_pname0:       .string          "wfile"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__wfile
                        .quad            wfile_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1360
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "rfile"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__rfile
                        .quad            rfile_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2592
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tsys"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__tsys
                        .quad            tsys_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            192
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "tpipe"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__tpipe
                        .quad            tpipe_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2592
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
