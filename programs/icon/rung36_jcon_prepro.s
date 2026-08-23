                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__precheck:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
precheck_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n13_var_α
n0_disjunction_as:      mov              r11, 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx29_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   precheck_γ
.Lx29_0:                cmp              eax, 1;                              jne   .Lx29_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 72], rax;           jmp   precheck_γ
.Lx29_1:                                                                      jmp   precheck_γ
n0_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n16_disjunction_β
                                                                              jmp   n1_disjunction_β
n0_disjunction_af:      mov              r11, 1
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n1_disjunction_α
                                                                              jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 2
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n8_var_α
n1_disjunction_as:      mov              r11, 2
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx31_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n0_disjunction_as
.Lx31_0:                cmp              eax, 1;                              jne   .Lx31_1
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 488], rax;          jmp   n0_disjunction_as
.Lx31_1:                                                                      jmp   n0_disjunction_as
n1_disjunction_β:       mov              r11, 2
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    precheck_ω
                                                                              jmp   n2_disjunction_β
n1_disjunction_af:      mov              r11, 2
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n2_disjunction_α
                                                                              jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              r11, 3
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n3_var_α
n2_disjunction_as:      mov              r11, 3
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx33_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1_disjunction_as
.Lx33_0:                                                                      jmp   n1_disjunction_as
n2_disjunction_β:       mov              r11, 3
                        mov              eax, dword ptr [rsp + 656];          jmp   precheck_ω
n2_disjunction_af:      mov              r11, 3
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 792], rax;          jmp   n4_unop_test_α
n3_var_β:               mov              r11, 4;                              jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_test_α:         mov              r11, 5
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 104;                             je    n2_disjunction_af
                        cmp              eax, 0;                              je    n2_disjunction_af
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 15
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n6_var_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "no feature:    "
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 760], rax;          jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn41:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]
                        lea              rsi, [rsp + 688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_disjunction_as
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 632], rax;          jmp   n9_unop_test_α
n8_var_β:               mov              r11, 9;                              jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_test_α:         mov              r11, 10
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             je    n1_disjunction_af
                        cmp              eax, 0;                              je    n1_disjunction_af
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 40
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n11_var_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "error: unexpected predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 600], rax;          jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn49:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_disjunction_as
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 440], rax;          jmp   n14_keyword_icon_gen_α
n13_var_β:              mov              r11, 14;                             jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_gen_α: mov              r11, 15
                        mov              qword ptr [rsp + 464], 0
.Lx52_1:                mov              rdi, qword ptr [rip + .Lx52_0]
                        mov              rsi, qword ptr [rsp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n0_disjunction_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              rax, qword ptr [rsp + 464]
                        add              rax, 1
                        mov              qword ptr [rsp + 464], rax;          jmp   n15_binop_test_α
n14_keyword_icon_gen_β: mov              r11, 15;                             jmp   .Lx52_1
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_test_α:       mov              r11, 16
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n14_keyword_icon_gen_β
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              r11, 17
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n23_var_α
n16_disjunction_as:     mov              r11, 17
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx55_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax;          jmp   n0_disjunction_as
.Lx55_0:                cmp              eax, 1;                              jne   .Lx55_1
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 104], rax;          jmp   n0_disjunction_as
.Lx55_1:                                                                      jmp   n0_disjunction_as
n16_disjunction_β:      mov              r11, 17
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    precheck_ω
                                                                              jmp   n17_disjunction_β
n16_disjunction_af:     mov              r11, 17
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n17_disjunction_α
                                                                              jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      mov              r11, 18
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n18_var_α
n17_disjunction_as:     mov              r11, 18
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx57_0
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax;          jmp   n16_disjunction_as
.Lx57_0:                                                                      jmp   n16_disjunction_as
n17_disjunction_β:      mov              r11, 18
                        mov              eax, dword ptr [rsp + 272];          jmp   precheck_ω
n17_disjunction_af:     mov              r11, 18
                        add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 408], rax;          jmp   n19_unop_test_α
n18_var_β:              mov              r11, 19;                             jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_test_α:        mov              r11, 20
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 104;                             je    n17_disjunction_af
                        cmp              eax, 0;                              je    n17_disjunction_af
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 392], rax;          jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 15
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n21_var_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "found feature: "
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 376], rax;          jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn65:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_disjunction_as
n22_call_builtin_icon_β:
                        mov              r11, 23;                             jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n24_unop_test_α
n23_var_β:              mov              r11, 24;                             jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_test_α:        mov              r11, 25
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             je    n16_disjunction_af
                        cmp              eax, 0;                              jne   n16_disjunction_af
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0;            jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 32
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n26_var_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "error: no predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 27
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax;          jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn73:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_disjunction_as
n27_call_builtin_icon_β:
                        mov              r11, 28;                             jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
precheck_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
precheck_β:
                                                                              jmp   precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
precheck_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 872]
                        add              rsp, 896;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
precheck_ω:
                        mov              rcx, qword ptr [rsp + 880]
                        add              rsp, 896;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
precheck_dcα:
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx74_2]
                        lea              rdx, [rip + .Lx74_3];                jmp   FN__precheck
.Lx74_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx74_3:                pop              r12
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
                        sub              rsp, 5184
                        mov              qword ptr [rsp + 5160], rcx
                        mov              qword ptr [rsp + 5168], rdx
                        mov              rdi, rsp
                        add              rdi, 4640
                        xor              eax, eax
                        mov              ecx, 496
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 4480], 2            # result
                        mov              dword ptr [rsp + 4484], 19
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n76_lit_integer_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              r11, 30
                        mov              qword ptr [rsp + 4496], 3            # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n77_lit_string_α
.Lx221_0:               .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n78_lit_integer_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 4528], 3            # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n79_lit_string_α
.Lx223_0:               .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n80_lit_integer_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n81_lit_string_α
.Lx225_0:               .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 4576], 2            # result
                        mov              dword ptr [rsp + 4580], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n82_lit_integer_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rsp + 4592], 3            # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n83_lit_string_α
.Lx227_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 4608], 2            # result
                        mov              dword ptr [rsp + 4612], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n84_lit_integer_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rsp + 4624], 3            # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n85_call_builtin_icon_α
.Lx229_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4456], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4376], rax
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4360], rax
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4312], rax
                        .section         .rodata
.Lrkfn231:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rsp + 4304]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4288], rax
                        mov              qword ptr [rsp + 4296], rdx
                        cmp              al, 104;                             je    n86_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_lit_string_α
n85_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 4272], 2            # result
                        mov              dword ptr [rsp + 4276], 15
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 4280], rax;         jmp   n87_call_builtin_icon_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "prepro.dat here"
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 4272]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4280]
                        mov              qword ptr [rsp + 4248], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 4240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n88_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n88_lit_string_α
n87_call_builtin_icon_β:
                        mov              r11, 41;                             jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 4192], 2            # result
                        mov              dword ptr [rsp + 4196], 7
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n89_lit_integer_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "xyzzy: "
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 4208], 3            # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n90_call_builtin_icon_α
.Lx236_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4152], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rsp + 4144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              al, 104;                             je    n91_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_lit_string_α
n90_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 19
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n92_lit_integer_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rsp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n93_lit_string_α
.Lx240_0:               .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n94_lit_integer_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n95_lit_string_α
.Lx242_0:               .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n96_lit_integer_α
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n97_lit_string_α
.Lx244_0:               .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n98_lit_integer_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 52
                        mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n99_lit_string_α
.Lx246_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 4096], 2            # result
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n100_lit_integer_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n101_call_builtin_icon_α
.Lx248_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 3896], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3880], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3800], rax
                        .section         .rodata
.Lrkfn250:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    n102_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_var_α
n101_call_builtin_icon_β:
                        mov              r11, 55;                             jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             mov              r11, 56
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 5
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n104_call_proc_staged_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "Amiga"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        mov              r11, 58
                        mov              edi, 0
                        lea              rsi, [rsp + 3744]
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx255_1
                        lea              rcx, [rip + .Lx255_3]
                        lea              rdx, [rip + .Lx255_4];               jmp   rax
.Lx255_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx255_2
.Lx255_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx255_2
.Lx255_1:               call             rt_faildescr@PLT
.Lx255_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx255_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3680]
                        mov              rdx, qword ptr [rsp + 3688]
.Lx255_29:              mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n105_var_α
                                                                              jmp   n105_var_α
n104_call_proc_staged_β:
                        mov              r11, 58;                             jmp   n105_var_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 60
                        mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 16
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n107_call_proc_staged_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "Acorn Archimedes"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              r11, 61
                        mov              edi, 0
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx260_1
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4];               jmp   rax
.Lx260_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx260_2
.Lx260_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx260_2
.Lx260_1:               call             rt_faildescr@PLT
.Lx260_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx260_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
.Lx260_29:              mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n108_var_α
                                                                              jmp   n108_var_α
n107_call_proc_staged_β:
                        mov              r11, 61;                             jmp   n108_var_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              r11, 62
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 63
                        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 8
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n110_call_proc_staged_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "Atari ST"
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        mov              r11, 64
                        mov              edi, 0
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx265_1
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4];               jmp   rax
.Lx265_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx265_2
.Lx265_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx265_2
.Lx265_1:               call             rt_faildescr@PLT
.Lx265_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx265_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3488]
                        mov              rdx, qword ptr [rsp + 3496]
.Lx265_29:              mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n111_var_α
                                                                              jmp   n111_var_α
n110_call_proc_staged_β:
                        mov              r11, 64;                             jmp   n111_var_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              r11, 65
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n112_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 3472], 2            # result
                        mov              dword ptr [rsp + 3476], 3
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n113_call_proc_staged_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "CMS"
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              r11, 67
                        mov              edi, 0
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx270_1
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4];               jmp   rax
.Lx270_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx270_2
.Lx270_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx270_2
.Lx270_1:               call             rt_faildescr@PLT
.Lx270_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx270_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
.Lx270_29:              mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n114_var_α
                                                                              jmp   n114_var_α
n113_call_proc_staged_β:
                        mov              r11, 67;                             jmp   n114_var_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 9
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n116_call_proc_staged_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              r11, 70
                        mov              edi, 0
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx275_1
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4];               jmp   rax
.Lx275_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx275_2
.Lx275_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx275_2
.Lx275_1:               call             rt_faildescr@PLT
.Lx275_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx275_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3296]
                        mov              rdx, qword ptr [rsp + 3304]
.Lx275_29:              mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n117_var_α
                                                                              jmp   n117_var_α
n116_call_proc_staged_β:
                        mov              r11, 70;                             jmp   n117_var_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             mov              r11, 71
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 10
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n119_call_proc_staged_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "MS-DOS/386"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        mov              r11, 73
                        mov              edi, 0
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx280_1
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4];               jmp   rax
.Lx280_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx280_2
.Lx280_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx280_2
.Lx280_1:               call             rt_faildescr@PLT
.Lx280_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx280_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
.Lx280_29:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n120_var_α
                                                                              jmp   n120_var_α
n119_call_proc_staged_β:
                        mov              r11, 73;                             jmp   n120_var_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             mov              r11, 74
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n122_call_proc_staged_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "MS-DOS"
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        mov              r11, 76
                        mov              edi, 0
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx285_1
                        lea              rcx, [rip + .Lx285_3]
                        lea              rdx, [rip + .Lx285_4];               jmp   rax
.Lx285_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx285_2
.Lx285_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx285_2
.Lx285_1:               call             rt_faildescr@PLT
.Lx285_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx285_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
.Lx285_29:              mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n123_var_α
                                                                              jmp   n123_var_α
n122_call_proc_staged_β:
                        mov              r11, 76;                             jmp   n123_var_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             mov              r11, 77
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 3
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n125_call_proc_staged_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "MVS"
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 79
                        mov              edi, 0
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx290_1
                        lea              rcx, [rip + .Lx290_3]
                        lea              rdx, [rip + .Lx290_4];               jmp   rax
.Lx290_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx290_2
.Lx290_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx290_2
.Lx290_1:               call             rt_faildescr@PLT
.Lx290_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx290_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3008]
                        mov              rdx, qword ptr [rsp + 3016]
.Lx290_29:              mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              al, 104;                             je    n126_var_α
                                                                              jmp   n126_var_α
n125_call_proc_staged_β:
                        mov              r11, 79;                             jmp   n126_var_α
.Lx290_0:               .quad            .Lx290_0_s
.Lx290_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 4
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n128_call_proc_staged_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "OS/2"
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        mov              r11, 82
                        mov              edi, 0
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx295_1
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4];               jmp   rax
.Lx295_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx295_2
.Lx295_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx295_2
.Lx295_1:               call             rt_faildescr@PLT
.Lx295_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx295_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
.Lx295_29:              mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n129_var_α
                                                                              jmp   n129_var_α
n128_call_proc_staged_β:
                        mov              r11, 82;                             jmp   n129_var_α
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:             mov              r11, 83
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n131_call_proc_staged_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "PORT"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        mov              r11, 85
                        mov              edi, 0
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx300_1
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4];               jmp   rax
.Lx300_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx300_2
.Lx300_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx300_2
.Lx300_1:               call             rt_faildescr@PLT
.Lx300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx300_29:              mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              al, 104;                             je    n132_lit_integer_α
                                                                              jmp   n132_lit_integer_α
n131_call_proc_staged_β:
                        mov              r11, 85;                             jmp   n132_lit_integer_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n133_lit_string_α
.Lx301_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 4
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n134_call_proc_staged_α
.Lx302_0:               .quad            .Lx302_0_s
.Lx302_0_s:             .string          "UNIX"
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              r11, 88
                        mov              edi, 0
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx304_1
                        lea              rcx, [rip + .Lx304_3]
                        lea              rdx, [rip + .Lx304_4];               jmp   rax
.Lx304_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx304_2
.Lx304_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx304_2
.Lx304_1:               call             rt_faildescr@PLT
.Lx304_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx304_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
.Lx304_29:              mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n135_var_α
                                                                              jmp   n135_var_α
n134_call_proc_staged_β:
                        mov              r11, 88;                             jmp   n135_var_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 3
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n137_call_proc_staged_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "VMS"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 91
                        mov              edi, 0
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx309_1
                        lea              rcx, [rip + .Lx309_3]
                        lea              rdx, [rip + .Lx309_4];               jmp   rax
.Lx309_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx309_2
.Lx309_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx309_2
.Lx309_1:               call             rt_faildescr@PLT
.Lx309_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx309_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
.Lx309_29:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n138_var_α
                                                                              jmp   n138_var_α
n137_call_proc_staged_β:
                        mov              r11, 91;                             jmp   n138_var_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 8
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n140_call_proc_staged_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "compiled"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        mov              r11, 94
                        mov              edi, 0
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx314_1
                        lea              rcx, [rip + .Lx314_3]
                        lea              rdx, [rip + .Lx314_4];               jmp   rax
.Lx314_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx314_2
.Lx314_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx314_2
.Lx314_1:               call             rt_faildescr@PLT
.Lx314_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx314_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
.Lx314_29:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n141_var_α
                                                                              jmp   n141_var_α
n140_call_proc_staged_β:
                        mov              r11, 94;                             jmp   n141_var_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 11
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n143_call_proc_staged_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "interpreted"
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        mov              r11, 97
                        mov              edi, 0
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx319_1
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4];               jmp   rax
.Lx319_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx319_2
.Lx319_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx319_2
.Lx319_1:               call             rt_faildescr@PLT
.Lx319_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx319_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
.Lx319_29:              mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n144_lit_integer_α
                                                                              jmp   n144_lit_integer_α
n143_call_proc_staged_β:
                        mov              r11, 97;                             jmp   n144_lit_integer_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 98
                        mov              qword ptr [rsp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n145_lit_string_α
.Lx320_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n146_call_proc_staged_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "Java"
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        mov              r11, 100
                        mov              edi, 0
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx323_1
                        lea              rcx, [rip + .Lx323_3]
                        lea              rdx, [rip + .Lx323_4];               jmp   rax
.Lx323_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx323_2
.Lx323_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx323_2
.Lx323_1:               call             rt_faildescr@PLT
.Lx323_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx323_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
.Lx323_29:              mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n147_lit_integer_α
                                                                              jmp   n147_lit_integer_α
n146_call_proc_staged_β:
                        mov              r11, 100;                            jmp   n147_lit_integer_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n148_lit_string_α
.Lx324_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 5
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n149_lit_integer_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "ASCII"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n150_call_proc_staged_α
.Lx326_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              r11, 104
                        lea              rsi, [rsp + 2288]
                        lea              rdx, [rsp + 2304]
                        lea              rcx, [rsp + 2320]
                        call             precheck_dcα;                        jmp   .Lx328_2
.Lx328_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx328_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
.Lx328_29:              mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n151_var_α
                                                                              jmp   n151_var_α
n150_call_proc_staged_β:
                        mov              r11, 104;                            jmp   n151_var_α
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 6
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n153_lit_integer_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "EBCDIC"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n154_call_proc_staged_α
.Lx332_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        mov              r11, 108
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2176]
                        lea              rcx, [rsp + 2192]
                        call             precheck_dcα;                        jmp   .Lx334_2
.Lx334_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx334_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
.Lx334_29:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n155_var_α
                                                                              jmp   n155_var_α
n154_call_proc_staged_β:
                        mov              r11, 108;                            jmp   n155_var_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 15
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n157_call_proc_staged_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "calling to Icon"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              r11, 111
                        mov              edi, 0
                        lea              rsi, [rsp + 2048]
                        lea              rdx, [rsp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx339_1
                        lea              rcx, [rip + .Lx339_3]
                        lea              rdx, [rip + .Lx339_4];               jmp   rax
.Lx339_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx339_2
.Lx339_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx339_2
.Lx339_1:               call             rt_faildescr@PLT
.Lx339_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx339_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
.Lx339_29:              mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n158_lit_integer_α
                                                                              jmp   n158_lit_integer_α
n157_call_proc_staged_β:
                        mov              r11, 111;                            jmp   n158_lit_integer_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n159_lit_string_α
.Lx340_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 14
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n160_call_proc_staged_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "co-expressions"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              r11, 114
                        mov              edi, 0
                        lea              rsi, [rsp + 1952]
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx343_1
                        lea              rcx, [rip + .Lx343_3]
                        lea              rdx, [rip + .Lx343_4];               jmp   rax
.Lx343_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx343_2
.Lx343_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx343_2
.Lx343_1:               call             rt_faildescr@PLT
.Lx343_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx343_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
.Lx343_29:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n161_var_α
                                                                              jmp   n161_var_α
n160_call_proc_staged_β:
                        mov              r11, 114;                            jmp   n161_var_α
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 16
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n163_call_proc_staged_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "direct execution"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        mov              r11, 117
                        mov              edi, 0
                        lea              rsi, [rsp + 1856]
                        lea              rdx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4];               jmp   rax
.Lx348_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx348_2
.Lx348_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx348_2
.Lx348_1:               call             rt_faildescr@PLT
.Lx348_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx348_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
.Lx348_29:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n164_var_α
                                                                              jmp   n164_var_α
n163_call_proc_staged_β:
                        mov              r11, 117;                            jmp   n164_var_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 16
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n166_call_proc_staged_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "event monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_proc_staged_α:
                        mov              r11, 120
                        mov              edi, 0
                        lea              rsi, [rsp + 1760]
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx353_1
                        lea              rcx, [rip + .Lx353_3]
                        lea              rdx, [rip + .Lx353_4];               jmp   rax
.Lx353_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx353_2
.Lx353_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx353_2
.Lx353_1:               call             rt_faildescr@PLT
.Lx353_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx353_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
.Lx353_29:              mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n167_var_α
                                                                              jmp   n167_var_α
n166_call_proc_staged_β:
                        mov              r11, 120;                            jmp   n167_var_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 17
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n169_call_proc_staged_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "executable images"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        mov              r11, 123
                        mov              edi, 0
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx358_1
                        lea              rcx, [rip + .Lx358_3]
                        lea              rdx, [rip + .Lx358_4];               jmp   rax
.Lx358_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx358_2
.Lx358_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx358_2
.Lx358_1:               call             rt_faildescr@PLT
.Lx358_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx358_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
.Lx358_29:              mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n170_var_α
                                                                              jmp   n170_var_α
n169_call_proc_staged_β:
                        mov              r11, 123;                            jmp   n170_var_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 18
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n172_call_proc_staged_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "external functions"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        mov              r11, 126
                        mov              edi, 0
                        lea              rsi, [rsp + 1568]
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx363_1
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4];               jmp   rax
.Lx363_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx363_2
.Lx363_1:               call             rt_faildescr@PLT
.Lx363_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx363_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
.Lx363_29:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n173_var_α
                                                                              jmp   n173_var_α
n172_call_proc_staged_β:
                        mov              r11, 126;                            jmp   n173_var_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 18
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n175_call_proc_staged_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "keyboard functions"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        mov              r11, 129
                        mov              edi, 0
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx368_1
                        lea              rcx, [rip + .Lx368_3]
                        lea              rdx, [rip + .Lx368_4];               jmp   rax
.Lx368_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx368_2
.Lx368_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx368_2
.Lx368_1:               call             rt_faildescr@PLT
.Lx368_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx368_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx368_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n176_lit_integer_α
                                                                              jmp   n176_lit_integer_α
n175_call_proc_staged_β:
                        mov              r11, 129;                            jmp   n176_lit_integer_α
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n177_lit_string_α
.Lx369_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 14
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n178_call_proc_staged_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n178_call_proc_staged_α:
                        mov              r11, 132
                        mov              edi, 0
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx372_1
                        lea              rcx, [rip + .Lx372_3]
                        lea              rdx, [rip + .Lx372_4];               jmp   rax
.Lx372_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx372_2
.Lx372_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx372_2
.Lx372_1:               call             rt_faildescr@PLT
.Lx372_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx372_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
.Lx372_29:              mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n179_var_α
                                                                              jmp   n179_var_α
n178_call_proc_staged_β:
                        mov              r11, 132;                            jmp   n179_var_α
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 17
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n181_call_proc_staged_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          "memory monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        mov              r11, 135
                        mov              edi, 0
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx377_1
                        lea              rcx, [rip + .Lx377_3]
                        lea              rdx, [rip + .Lx377_4];               jmp   rax
.Lx377_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx377_2
.Lx377_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx377_2
.Lx377_1:               call             rt_faildescr@PLT
.Lx377_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx377_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx377_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n182_var_α
                                                                              jmp   n182_var_α
n181_call_proc_staged_β:
                        mov              r11, 135;                            jmp   n182_var_α
.Lx377_0:               .quad            .Lx377_0_s
.Lx377_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 17
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n184_call_proc_staged_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "multiple programs"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        mov              r11, 138
                        mov              edi, 0
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx382_1
                        lea              rcx, [rip + .Lx382_3]
                        lea              rdx, [rip + .Lx382_4];               jmp   rax
.Lx382_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx382_2
.Lx382_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx382_2
.Lx382_1:               call             rt_faildescr@PLT
.Lx382_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx382_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
.Lx382_29:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n185_var_α
                                                                              jmp   n185_var_α
n184_call_proc_staged_β:
                        mov              r11, 138;                            jmp   n185_var_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              r11, 139
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 16
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n187_call_proc_staged_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "multiple regions"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        mov              r11, 141
                        mov              edi, 0
                        lea              rsi, [rsp + 1088]
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx387_1
                        lea              rcx, [rip + .Lx387_3]
                        lea              rdx, [rip + .Lx387_4];               jmp   rax
.Lx387_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx387_2
.Lx387_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx387_2
.Lx387_1:               call             rt_faildescr@PLT
.Lx387_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx387_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx387_29:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n188_lit_integer_α
                                                                              jmp   n188_lit_integer_α
n187_call_proc_staged_β:
                        mov              r11, 141;                            jmp   n188_lit_integer_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n189_lit_string_α
.Lx388_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 5
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n190_call_proc_staged_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "pipes"
#-----------------------------------------------------------------------------------------------------------------------
n190_call_proc_staged_α:
                        mov              r11, 144
                        mov              edi, 0
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx391_1
                        lea              rcx, [rip + .Lx391_3]
                        lea              rdx, [rip + .Lx391_4];               jmp   rax
.Lx391_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx391_2
.Lx391_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx391_2
.Lx391_1:               call             rt_faildescr@PLT
.Lx391_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx391_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
.Lx391_29:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n191_var_α
                                                                              jmp   n191_var_α
n190_call_proc_staged_β:
                        mov              r11, 144;                            jmp   n191_var_α
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 904], rax;          jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 10
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n193_call_proc_staged_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "record I/O"
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 147
                        mov              edi, 0
                        lea              rsi, [rsp + 896]
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx396_1
                        lea              rcx, [rip + .Lx396_3]
                        lea              rdx, [rip + .Lx396_4];               jmp   rax
.Lx396_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx396_2
.Lx396_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx396_2
.Lx396_1:               call             rt_faildescr@PLT
.Lx396_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx396_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
.Lx396_29:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n194_var_α
                                                                              jmp   n194_var_α
n193_call_proc_staged_β:
                        mov              r11, 147;                            jmp   n194_var_α
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 808], rax;          jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 17
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n196_call_proc_staged_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "string invocation"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_proc_staged_α:
                        mov              r11, 150
                        mov              edi, 0
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx401_1
                        lea              rcx, [rip + .Lx401_3]
                        lea              rdx, [rip + .Lx401_4];               jmp   rax
.Lx401_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx401_2
.Lx401_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx401_2
.Lx401_1:               call             rt_faildescr@PLT
.Lx401_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx401_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
.Lx401_29:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n197_lit_integer_α
                                                                              jmp   n197_lit_integer_α
n196_call_proc_staged_β:
                        mov              r11, 150;                            jmp   n197_lit_integer_α
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n198_lit_string_α
.Lx402_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 15
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n199_call_proc_staged_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "system function"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        mov              r11, 153
                        mov              edi, 0
                        lea              rsi, [rsp + 704]
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx405_1
                        lea              rcx, [rip + .Lx405_3]
                        lea              rdx, [rip + .Lx405_4];               jmp   rax
.Lx405_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx405_2
.Lx405_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx405_2
.Lx405_1:               call             rt_faildescr@PLT
.Lx405_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx405_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
.Lx405_29:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n200_var_α
                                                                              jmp   n200_var_α
n199_call_proc_staged_β:
                        mov              r11, 153;                            jmp   n200_var_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 616], rax;          jmp   n201_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 21
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n202_call_proc_staged_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "visualization support"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        mov              r11, 156
                        mov              edi, 0
                        lea              rsi, [rsp + 608]
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx410_1
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4];               jmp   rax
.Lx410_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx410_2
.Lx410_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx410_2
.Lx410_1:               call             rt_faildescr@PLT
.Lx410_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx410_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
.Lx410_29:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n203_var_α
                                                                              jmp   n203_var_α
n202_call_proc_staged_β:
                        mov              r11, 156;                            jmp   n203_var_α
.Lx410_0:               .quad            .Lx410_0_s
.Lx410_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 520], rax;          jmp   n204_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 16
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n205_call_proc_staged_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "window functions"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        mov              r11, 159
                        mov              edi, 0
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx415_1
                        lea              rcx, [rip + .Lx415_3]
                        lea              rdx, [rip + .Lx415_4];               jmp   rax
.Lx415_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx415_2
.Lx415_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx415_2
.Lx415_1:               call             rt_faildescr@PLT
.Lx415_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx415_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx415_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n206_var_α
                                                                              jmp   n206_var_α
n205_call_proc_staged_β:
                        mov              r11, 159;                            jmp   n206_var_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 9
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n208_call_proc_staged_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "X Windows"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              r11, 162
                        mov              edi, 0
                        lea              rsi, [rsp + 416]
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx420_1
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4];               jmp   rax
.Lx420_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx420_2
.Lx420_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx420_2
.Lx420_1:               call             rt_faildescr@PLT
.Lx420_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx420_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx420_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n209_var_α
                                                                              jmp   n209_var_α
n208_call_proc_staged_β:
                        mov              r11, 162;                            jmp   n209_var_α
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:             mov              r11, 163
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 328], rax;          jmp   n210_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 20
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n211_call_proc_staged_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "Presentation Manager"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        mov              r11, 165
                        mov              edi, 0
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx425_1
                        lea              rcx, [rip + .Lx425_3]
                        lea              rdx, [rip + .Lx425_4];               jmp   rax
.Lx425_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx425_2
.Lx425_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx425_2
.Lx425_1:               call             rt_faildescr@PLT
.Lx425_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx425_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx425_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n212_var_α
                                                                              jmp   n212_var_α
n211_call_proc_staged_β:
                        mov              r11, 165;                            jmp   n212_var_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 232], rax;          jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 21
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n214_call_proc_staged_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "Archimedes extensions"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_proc_staged_α:
                        mov              r11, 168
                        mov              edi, 0
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx430_1
                        lea              rcx, [rip + .Lx430_3]
                        lea              rdx, [rip + .Lx430_4];               jmp   rax
.Lx430_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx430_2
.Lx430_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx430_2
.Lx430_1:               call             rt_faildescr@PLT
.Lx430_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx430_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx430_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n215_var_α
                                                                              jmp   n215_var_α
n214_call_proc_staged_β:
                        mov              r11, 168;                            jmp   n215_var_α
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 136], rax;          jmp   n216_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 17
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n217_call_proc_staged_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "MS-DOS extensions"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        mov              r11, 171
                        mov              edi, 0
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx435_1
                        lea              rcx, [rip + .Lx435_3]
                        lea              rdx, [rip + .Lx435_4];               jmp   rax
.Lx435_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx435_2
.Lx435_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx435_2
.Lx435_1:               call             rt_faildescr@PLT
.Lx435_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx435_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx435_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n218_lit_string_α
                                                                              jmp   n218_lit_string_α
n217_call_proc_staged_β:
                        mov              r11, 171;                            jmp   n218_lit_string_α
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n219_call_builtin_icon_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_icon_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn438:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n219_call_builtin_icon_β:
                        mov              r11, 173;                            jmp   main_ω
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
.Lstartup_pname0:       .string          "precheck"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__precheck
                        .quad            precheck_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            800
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
