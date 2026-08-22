                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        add              rdi, 1216
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n9_lit_string_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx50_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1_scan_enter_α
.Lx50_0:                cmp              eax, 1;                              jne   .Lx50_1
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1_scan_enter_α
.Lx50_1:                cmp              eax, 2;                              jne   .Lx50_2
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n1_scan_enter_α
.Lx50_2:                                                                      jmp   n1_scan_enter_α
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              je    n0_disjunction_af
                        cmp              eax, 1;                              je    n0_disjunction_af
                                                                              jmp   n0_disjunction_af
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 1;                              je    n8_lit_string_α
                        cmp              eax, 2;                              je    n7_lit_string_α
                                                                              jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              r11, 2
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n3_scan_move_α
.Lx53_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_scan_move_α:         mov              r11, 4
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n6_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n6_scan_α
                        mov              qword ptr [rsp + 1104], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n4_scan_α
n3_scan_move_β:         mov              r11, 4
                        mov              r14, qword ptr [rsp + 1104];         jmp   n6_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_α:              mov              r11, 5
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1024]
                        mov              r14, qword ptr [rsp + 1032]
                        mov              r15, qword ptr [rsp + 1040];         jmp   n5_call_builtin_icon_α
n4_scan_β:              mov              r11, 5;                              jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n0_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n0_disjunction_β
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_α:              mov              r11, 7
                        lea              rdi, [rsp + 1024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 1024]
                        mov              r14, qword ptr [rsp + 1032]
                        mov              r15, qword ptr [rsp + 1040];         jmp   n0_disjunction_β
n6_scan_β:              mov              r11, 7;                              jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 2
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n0_disjunction_as
n7_lit_string_β:        mov              r11, 8;                              jmp   n0_disjunction_af
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "ef"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 2
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n0_disjunction_as
n8_lit_string_β:        mov              r11, 9;                              jmp   n0_disjunction_af
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 2
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n0_disjunction_as
n9_lit_string_β:        mov              r11, 10;                             jmp   n0_disjunction_af
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              r11, 11
                        .section         .rodata
.Lrkfn66:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rsp + 944]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n11_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_disjunction_α
n10_call_builtin_icon_β:
                        mov              r11, 11;                             jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:      mov              r11, 12
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n20_lit_string_α
n11_disjunction_as:     mov              r11, 12
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx68_0
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax;          jmp   n12_scan_enter_α
.Lx68_0:                cmp              eax, 1;                              jne   .Lx68_1
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax;          jmp   n12_scan_enter_α
.Lx68_1:                cmp              eax, 2;                              jne   .Lx68_2
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax;          jmp   n12_scan_enter_α
.Lx68_2:                                                                      jmp   n12_scan_enter_α
n11_disjunction_β:      mov              r11, 12
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              je    n11_disjunction_af
                        cmp              eax, 1;                              je    n11_disjunction_af
                                                                              jmp   n11_disjunction_af
n11_disjunction_af:     mov              r11, 12
                        add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 1;                              je    n19_lit_string_α
                        cmp              eax, 2;                              je    n18_lit_string_α
                                                                              jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_enter_α:       mov              r11, 13
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n14_scan_tab_α
.Lx71_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:         mov              r11, 15
                        mov              rax, 2
                        cmp              rax, 1;                              jge   .Lx73_0
                        add              rax, r15
                        add              rax, 1
.Lx73_0:                cmp              rax, 1;                              jl    n17_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n17_scan_α
                        mov              qword ptr [rsp + 816], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n15_scan_α
n14_scan_tab_β:         mov              r11, 15
                        mov              r14, qword ptr [rsp + 816];          jmp   n17_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n15_scan_α:             mov              r11, 16
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 736]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 736]
                        mov              r14, qword ptr [rsp + 744]
                        mov              r15, qword ptr [rsp + 752];          jmp   n16_call_builtin_icon_α
n15_scan_β:             mov              r11, 16;                             jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn77:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n11_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_disjunction_β
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_α:             mov              r11, 18
                        lea              rdi, [rsp + 736]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 736]
                        mov              r14, qword ptr [rsp + 744]
                        mov              r15, qword ptr [rsp + 752];          jmp   n11_disjunction_β
n17_scan_β:             mov              r11, 18;                             jmp   n11_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 4
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n11_disjunction_as
n18_lit_string_β:       mov              r11, 19;                             jmp   n11_disjunction_af
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "icon"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 5
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n11_disjunction_as
n19_lit_string_β:       mov              r11, 20;                             jmp   n11_disjunction_af
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 5
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n11_disjunction_as
n20_lit_string_β:       mov              r11, 21;                             jmp   n11_disjunction_af
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              r11, 22
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rsp + 656]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n22_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_integer_α
n21_call_builtin_icon_β:
                        mov              r11, 22;                             jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n23_assign_α
.Lx85_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              r11, 25
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              dword ptr [rsp + 544], 0;            jmp   n35_lit_string_α
n24_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              jne   .Lx88_0
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax;          jmp   n25_scan_enter_α
.Lx88_0:                cmp              eax, 1;                              jne   .Lx88_1
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax;          jmp   n25_scan_enter_α
.Lx88_1:                cmp              eax, 2;                              jne   .Lx88_2
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax;          jmp   n25_scan_enter_α
.Lx88_2:                                                                      jmp   n25_scan_enter_α
n24_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              je    n24_disjunction_af
                        cmp              eax, 1;                              je    n24_disjunction_af
                                                                              jmp   n24_disjunction_af
n24_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 544], 1
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 1;                              je    n34_lit_string_α
                        cmp              eax, 2;                              je    n33_lit_string_α
                                                                              jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_enter_α:       mov              r11, 26
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 504], rax;          jmp   n27_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 28
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n28_coerce_numeric_α
.Lx93_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 5;                               je    .Lx95_1
                        cmp              al, 3;                               jne   .Lx95_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx95_0
.Lx95_1:                mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 488], rax;          jmp   n29_binop_α
.Lx95_0:                lea              rdi, [rsp + 1216]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              r11, 30
                        mov              eax, dword ptr [rsp + 480]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx96_2
                        mov              rax, qword ptr [rsp + 488]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   .Lx96_7
.Lx96_2:                and              edx, 1;                              jz    .Lx96_0
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx96_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx96_4
.Lx96_3:                movq             xmm0, rsi
.Lx96_4:                cmp              cl, 5;                               je    .Lx96_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx96_6
.Lx96_5:                movq             xmm1, rdi
.Lx96_6:                addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 464], 5
                        mov              qword ptr [rsp + 472], rax
.Lx96_7:                                                                      jmp   n30_assign_α
.Lx96_0:                mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n32_scan_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n31_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n31_scan_α:             mov              r11, 32
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 384]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 384]
                        mov              r14, qword ptr [rsp + 392]
                        mov              r15, qword ptr [rsp + 400];          jmp   n24_disjunction_β
n31_scan_β:             mov              r11, 32;                             jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_α:             mov              r11, 33
                        lea              rdi, [rsp + 384]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 384]
                        mov              r14, qword ptr [rsp + 392]
                        mov              r15, qword ptr [rsp + 400];          jmp   n24_disjunction_β
n32_scan_β:             mov              r11, 33;                             jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n24_disjunction_as
n33_lit_string_β:       mov              r11, 34;                             jmp   n24_disjunction_af
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n24_disjunction_as
n34_lit_string_β:       mov              r11, 35;                             jmp   n24_disjunction_af
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n24_disjunction_as
n35_lit_string_β:       mov              r11, 36;                             jmp   n24_disjunction_af
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 360], rax;          jmp   n37_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn108:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n38_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_call_builtin_icon_α
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        .section         .rodata
.Lrkfn110:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rsp + 288]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n39_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_disjunction_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n39_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n39_disjunction_α:      mov              r11, 40
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n47_lit_string_α
n39_disjunction_as:     mov              r11, 40
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx112_0
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax;          jmp   n40_scan_enter_α
.Lx112_0:               cmp              eax, 1;                              jne   .Lx112_1
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax;          jmp   n40_scan_enter_α
.Lx112_1:                                                                     jmp   n40_scan_enter_α
n39_disjunction_β:      mov              r11, 40
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              je    n39_disjunction_af
                                                                              jmp   n39_disjunction_af
n39_disjunction_af:     mov              r11, 40
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 1;                              je    n46_lit_string_α
                                                                              jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_scan_enter_α:       mov              r11, 41
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n42_scan_move_α
.Lx115_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_move_α:        mov              r11, 43
                        mov              rax, 5
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n45_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n45_scan_α
                        mov              qword ptr [rsp + 176], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             rcx
                        push             rcx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        pop              rcx
                        pop              rcx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n43_scan_α
n42_scan_move_β:        mov              r11, 43
                        mov              r14, qword ptr [rsp + 176];          jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_scan_α:             mov              r11, 44
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112];          jmp   n44_call_builtin_icon_α
n43_scan_β:             mov              r11, 44;                             jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn121:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    n39_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_disjunction_β
n44_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   n39_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:             mov              r11, 46
                        lea              rdi, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 96]
                        mov              r14, qword ptr [rsp + 104]
                        mov              r15, qword ptr [rsp + 112];          jmp   n39_disjunction_β
n45_scan_β:             mov              r11, 46;                             jmp   n39_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n39_disjunction_as
n46_lit_string_β:       mov              r11, 47;                             jmp   n39_disjunction_af
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 3
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n39_disjunction_as
n47_lit_string_β:       mov              r11, 48;                             jmp   n39_disjunction_af
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              r11, 49
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n48_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   main_ω
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
