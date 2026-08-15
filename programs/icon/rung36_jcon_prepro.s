                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_precheck_α
proc_precheck_α:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_precheck_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:       mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n13_var_α
n0_disjunction_as:      mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx29_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   proc_precheck_γ
.Lx29_0:                cmp              eax, 1;                              jne   .Lx29_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 72], rax;           jmp   proc_precheck_γ
.Lx29_1:                                                                      jmp   proc_precheck_γ
n0_disjunction_β:       mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n16_disjunction_β
                                                                              jmp   n1_disjunction_β
n0_disjunction_af:      add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n1_disjunction_α
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n8_var_α
n1_disjunction_as:      mov              eax, dword ptr [rsp + 496]
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
n1_disjunction_β:       mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              je    proc_precheck_ω
                                                                              jmp   n2_disjunction_β
n1_disjunction_af:      add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 1;                              je    n2_disjunction_α
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n3_var_α
n2_disjunction_as:      mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx33_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1_disjunction_as
.Lx33_0:                                                                      jmp   n1_disjunction_as
n2_disjunction_β:       mov              eax, dword ptr [rsp + 656];          jmp   proc_precheck_ω
n2_disjunction_af:      add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656];          jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 792], rax;          jmp   n4_unop_test_α
n3_var_β:                                                                     jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_test_α:         mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 104;                            je    n2_disjunction_af
                        cmp              eax, 0;                              je    n2_disjunction_af
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 15
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n6_var_α
.Lx37_0:                .quad            .Lx37_0_s
.Lx37_0_s:              .string          "no feature:    "
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 760], rax;          jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 752]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    proc_precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_disjunction_as
n7_call_builtin_icon_β:                                                       jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 632], rax;          jmp   n9_unop_test_α
n8_var_β:                                                                     jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_test_α:         mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 104;                            je    n1_disjunction_af
                        cmp              eax, 0;                              je    n1_disjunction_af
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 40
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n11_var_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "error: unexpected predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 600], rax;          jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    proc_precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_disjunction_as
n12_call_builtin_icon_β:
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 440], rax;          jmp   n14_keyword_icon_gen_α
n13_var_β:                                                                    jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_gen_α: mov              qword ptr [rsp + 464], 0
.Lx52_1:                mov              rdi, qword ptr [rip + .Lx52_0]
                        mov              rsi, qword ptr [rsp + 464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n0_disjunction_af
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              rax, qword ptr [rsp + 464]
                        add              rax, 1
                        mov              qword ptr [rsp + 464], rax;          jmp   n15_binop_test_α
n14_keyword_icon_gen_β:                                                       jmp   .Lx52_1
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_test_α:       mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n14_keyword_icon_gen_β
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n23_var_α
n16_disjunction_as:     mov              eax, dword ptr [rsp + 112]
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
n16_disjunction_β:      mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    proc_precheck_ω
                                                                              jmp   n17_disjunction_β
n16_disjunction_af:     add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n17_disjunction_α
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:      mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n18_var_α
n17_disjunction_as:     mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx57_0
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax;          jmp   n16_disjunction_as
.Lx57_0:                                                                      jmp   n16_disjunction_as
n17_disjunction_β:      mov              eax, dword ptr [rsp + 272];          jmp   proc_precheck_ω
n17_disjunction_af:     add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272];          jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 408], rax;          jmp   n19_unop_test_α
n18_var_β:                                                                    jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_test_α:        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 104;                            je    n17_disjunction_af
                        cmp              eax, 0;                              je    n17_disjunction_af
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 392], rax;          jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 15
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n21_var_α
.Lx61_0:                .quad            .Lx61_0_s
.Lx61_0_s:              .string          "found feature: "
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 376], rax;          jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 104;                            je    proc_precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_disjunction_as
n22_call_builtin_icon_β:
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n24_unop_test_α
n23_var_β:                                                                    jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_test_α:        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 104;                            je    n16_disjunction_af
                        cmp              eax, 0;                              jne   n16_disjunction_af
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0;            jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 32
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n26_var_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "error: no predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax;          jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    proc_precheck_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_disjunction_as
n27_call_builtin_icon_β:
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_β:
                                                                              jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 872]
                        add              rsp, 896;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_ω:
                        mov              rcx, qword ptr [rsp + 880]
                        add              rsp, 896;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
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
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
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
                        add              rsp, 32
                        lea              rcx, [rip + .Lx74_2]
                        lea              rdx, [rip + .Lx74_3];                jmp   proc_precheck_α
.Lx74_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx74_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "precheck"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_precheck_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_precheck_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 5248
                        mov              qword ptr [rsp + 5224], rcx
                        mov              qword ptr [rsp + 5232], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 19
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n76_lit_integer_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      mov              qword ptr [rsp + 4528], 3            # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 4536], rax;         jmp   n77_lit_string_α
.Lx225_0:               .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n78_lit_integer_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n79_lit_string_α
.Lx227_0:               .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 4576], 2            # result
                        mov              dword ptr [rsp + 4580], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n80_lit_integer_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      mov              qword ptr [rsp + 4592], 3            # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n81_lit_string_α
.Lx229_0:               .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 4608], 2            # result
                        mov              dword ptr [rsp + 4612], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 4616], rax;         jmp   n82_lit_integer_α
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rsp + 4624], 3            # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 4632], rax;         jmp   n83_lit_string_α
.Lx231_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 4640], 2            # result
                        mov              dword ptr [rsp + 4644], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 4648], rax;         jmp   n84_lit_integer_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n85_lit_integer_α
.Lx233_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rsp + 4688], 3            # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 4696], rax;         jmp   n86_binop_α
.Lx234_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              rdi, qword ptr [rsp + 4672]
                        mov              rsi, qword ptr [rsp + 4680]
                        mov              rdx, qword ptr [rsp + 4688]
                        mov              rcx, qword ptr [rsp + 4696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n88_lit_string_α
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4488], rax
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4472], rax
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
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 4336]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                        cmp              eax, 104;                            je    n88_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_lit_string_α
n87_call_builtin_icon_β:
                                                                              jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              qword ptr [rsp + 4304], 2            # result
                        mov              dword ptr [rsp + 4308], 15
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n89_call_builtin_icon_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "prepro.dat here"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4280], rax
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 4272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              eax, 104;                            je    n90_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                              jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 7
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n91_lit_integer_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "xyzzy: "
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n92_call_builtin_icon_α
.Lx242_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4184], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 4176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104;                            je    n93_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                                                                              jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 19
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n94_lit_integer_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              qword ptr [rsp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n95_lit_string_α
.Lx246_0:               .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n96_lit_integer_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n97_lit_string_α
.Lx248_0:               .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n98_lit_integer_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              qword ptr [rsp + 4048], 3            # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n99_lit_string_α
.Lx250_0:               .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 4064], 2            # result
                        mov              dword ptr [rsp + 4068], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 4072], rax;         jmp   n100_lit_integer_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              qword ptr [rsp + 4080], 3            # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 4088], rax;         jmp   n101_lit_string_α
.Lx252_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 4096], 2            # result
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n102_lit_integer_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n103_lit_integer_α
.Lx254_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              qword ptr [rsp + 4144], 3            # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n104_binop_α
.Lx255_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              rdx, qword ptr [rsp + 4144]
                        mov              rcx, qword ptr [rsp + 4152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n106_var_α
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
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
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104;                            je    n106_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_var_α
n105_call_builtin_icon_β:
                                                                              jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 5
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n108_call_proc_staged_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "Amiga"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3744]
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx263_1
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4];               jmp   rax
.Lx263_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx263_2
.Lx263_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx263_2
.Lx263_1:               call             rt_faildescr@PLT
.Lx263_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx263_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3680]
                        mov              rdx, qword ptr [rsp + 3688]
.Lx263_29:              mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              eax, 104;                            je    n109_var_α
                                                                              jmp   n109_var_α
n108_call_proc_staged_β:
                                                                              jmp   n109_var_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 16
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n111_call_proc_staged_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "Acorn Archimedes"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4];               jmp   rax
.Lx268_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx268_2
.Lx268_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx268_2
.Lx268_1:               call             rt_faildescr@PLT
.Lx268_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx268_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
.Lx268_29:              mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104;                            je    n112_var_α
                                                                              jmp   n112_var_α
n111_call_proc_staged_β:
                                                                              jmp   n112_var_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 8
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n114_call_proc_staged_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "Atari ST"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx273_1
                        lea              rcx, [rip + .Lx273_3]
                        lea              rdx, [rip + .Lx273_4];               jmp   rax
.Lx273_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx273_2
.Lx273_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx273_2
.Lx273_1:               call             rt_faildescr@PLT
.Lx273_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx273_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3488]
                        mov              rdx, qword ptr [rsp + 3496]
.Lx273_29:              mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 104;                            je    n115_var_α
                                                                              jmp   n115_var_α
n114_call_proc_staged_β:
                                                                              jmp   n115_var_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:      mov              qword ptr [rsp + 3472], 2            # result
                        mov              dword ptr [rsp + 3476], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n117_call_proc_staged_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "CMS"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx278_1
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4];               jmp   rax
.Lx278_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx278_2
.Lx278_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx278_2
.Lx278_1:               call             rt_faildescr@PLT
.Lx278_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx278_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3392]
                        mov              rdx, qword ptr [rsp + 3400]
.Lx278_29:              mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104;                            je    n118_var_α
                                                                              jmp   n118_var_α
n117_call_proc_staged_β:
                                                                              jmp   n118_var_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 3368], rax;         jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 9
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n120_call_proc_staged_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx283_1
                        lea              rcx, [rip + .Lx283_3]
                        lea              rdx, [rip + .Lx283_4];               jmp   rax
.Lx283_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx283_2
.Lx283_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx283_2
.Lx283_1:               call             rt_faildescr@PLT
.Lx283_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx283_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3296]
                        mov              rdx, qword ptr [rsp + 3304]
.Lx283_29:              mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104;                            je    n121_var_α
                                                                              jmp   n121_var_α
n120_call_proc_staged_β:
                                                                              jmp   n121_var_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 10
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n123_call_proc_staged_α
.Lx286_0:               .quad            .Lx286_0_s
.Lx286_0_s:             .string          "MS-DOS/386"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx288_1
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4];               jmp   rax
.Lx288_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx288_2
.Lx288_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx288_2
.Lx288_1:               call             rt_faildescr@PLT
.Lx288_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx288_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
.Lx288_29:              mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104;                            je    n124_var_α
                                                                              jmp   n124_var_α
n123_call_proc_staged_β:
                                                                              jmp   n124_var_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n126_call_proc_staged_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "MS-DOS"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx293_1
                        lea              rcx, [rip + .Lx293_3]
                        lea              rdx, [rip + .Lx293_4];               jmp   rax
.Lx293_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx293_2
.Lx293_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx293_2
.Lx293_1:               call             rt_faildescr@PLT
.Lx293_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx293_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3104]
                        mov              rdx, qword ptr [rsp + 3112]
.Lx293_29:              mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104;                            je    n127_var_α
                                                                              jmp   n127_var_α
n126_call_proc_staged_β:
                                                                              jmp   n127_var_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:             mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 3
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n129_call_proc_staged_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "MVS"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx298_1
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4];               jmp   rax
.Lx298_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx298_2
.Lx298_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx298_2
.Lx298_1:               call             rt_faildescr@PLT
.Lx298_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx298_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3008]
                        mov              rdx, qword ptr [rsp + 3016]
.Lx298_29:              mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104;                            je    n130_var_α
                                                                              jmp   n130_var_α
n129_call_proc_staged_β:
                                                                              jmp   n130_var_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 4
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n132_call_proc_staged_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "OS/2"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx303_1
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4];               jmp   rax
.Lx303_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_1:               call             rt_faildescr@PLT
.Lx303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx303_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2912]
                        mov              rdx, qword ptr [rsp + 2920]
.Lx303_29:              mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n133_var_α
                                                                              jmp   n133_var_α
n132_call_proc_staged_β:
                                                                              jmp   n133_var_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n135_call_proc_staged_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "PORT"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx308_1
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4];               jmp   rax
.Lx308_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx308_2
.Lx308_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx308_2
.Lx308_1:               call             rt_faildescr@PLT
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2816]
                        mov              rdx, qword ptr [rsp + 2824]
.Lx308_29:              mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104;                            je    n136_lit_integer_α
                                                                              jmp   n136_lit_integer_α
n135_call_proc_staged_β:
                                                                              jmp   n136_lit_integer_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n137_lit_string_α
.Lx309_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              qword ptr [rsp + 2800], 2            # result
                        mov              dword ptr [rsp + 2804], 4
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n138_call_proc_staged_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "UNIX"
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx312_1
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4];               jmp   rax
.Lx312_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx312_2
.Lx312_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx312_2
.Lx312_1:               call             rt_faildescr@PLT
.Lx312_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx312_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
.Lx312_29:              mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104;                            je    n139_var_α
                                                                              jmp   n139_var_α
n138_call_proc_staged_β:
                                                                              jmp   n139_var_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 3
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n141_call_proc_staged_α
.Lx315_0:               .quad            .Lx315_0_s
.Lx315_0_s:             .string          "VMS"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx317_1
                        lea              rcx, [rip + .Lx317_3]
                        lea              rdx, [rip + .Lx317_4];               jmp   rax
.Lx317_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx317_2
.Lx317_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx317_2
.Lx317_1:               call             rt_faildescr@PLT
.Lx317_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx317_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
.Lx317_29:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 104;                            je    n142_var_α
                                                                              jmp   n142_var_α
n141_call_proc_staged_β:
                                                                              jmp   n142_var_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 8
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n144_call_proc_staged_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "compiled"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx322_1
                        lea              rcx, [rip + .Lx322_3]
                        lea              rdx, [rip + .Lx322_4];               jmp   rax
.Lx322_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx322_2
.Lx322_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx322_2
.Lx322_1:               call             rt_faildescr@PLT
.Lx322_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx322_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
.Lx322_29:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 104;                            je    n145_var_α
                                                                              jmp   n145_var_α
n144_call_proc_staged_β:
                                                                              jmp   n145_var_α
.Lx322_0:               .quad            .Lx322_0_s
.Lx322_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:             mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 11
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n147_call_proc_staged_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "interpreted"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx327_1
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4];               jmp   rax
.Lx327_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx327_2
.Lx327_1:               call             rt_faildescr@PLT
.Lx327_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx327_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
.Lx327_29:              mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104;                            je    n148_lit_integer_α
                                                                              jmp   n148_lit_integer_α
n147_call_proc_staged_β:
                                                                              jmp   n148_lit_integer_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              qword ptr [rsp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n149_lit_string_α
.Lx328_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n150_call_proc_staged_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "Java"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx331_1
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4];               jmp   rax
.Lx331_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx331_2
.Lx331_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx331_2
.Lx331_1:               call             rt_faildescr@PLT
.Lx331_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx331_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344]
.Lx331_29:              mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104;                            je    n151_lit_integer_α
                                                                              jmp   n151_lit_integer_α
n150_call_proc_staged_β:
                                                                              jmp   n151_lit_integer_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              qword ptr [rsp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n152_lit_string_α
.Lx332_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 5
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n153_lit_integer_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "ASCII"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n154_call_proc_staged_α
.Lx334_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rsp + 2288]
                        lea              rdx, [rsp + 2304]
                        lea              rcx, [rsp + 2320]
                        call             proc_precheck_dcα;                   jmp   .Lx336_2
.Lx336_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx336_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
.Lx336_29:              mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 104;                            je    n155_var_α
                                                                              jmp   n155_var_α
n154_call_proc_staged_β:
                                                                              jmp   n155_var_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 6
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n157_lit_integer_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "EBCDIC"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n158_call_proc_staged_α
.Lx340_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2176]
                        lea              rcx, [rsp + 2192]
                        call             proc_precheck_dcα;                   jmp   .Lx342_2
.Lx342_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx342_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
.Lx342_29:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n159_var_α
                                                                              jmp   n159_var_α
n158_call_proc_staged_β:
                                                                              jmp   n159_var_α
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 15
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n161_call_proc_staged_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "calling to Icon"
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2048]
                        lea              rdx, [rsp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx347_1
                        lea              rcx, [rip + .Lx347_3]
                        lea              rdx, [rip + .Lx347_4];               jmp   rax
.Lx347_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx347_2
.Lx347_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx347_2
.Lx347_1:               call             rt_faildescr@PLT
.Lx347_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx347_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992]
.Lx347_29:              mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 104;                            je    n162_lit_integer_α
                                                                              jmp   n162_lit_integer_α
n161_call_proc_staged_β:
                                                                              jmp   n162_lit_integer_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n163_lit_string_α
.Lx348_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 14
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n164_call_proc_staged_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "co-expressions"
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1952]
                        lea              rdx, [rsp + 1968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx351_1
                        lea              rcx, [rip + .Lx351_3]
                        lea              rdx, [rip + .Lx351_4];               jmp   rax
.Lx351_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx351_2
.Lx351_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx351_2
.Lx351_1:               call             rt_faildescr@PLT
.Lx351_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx351_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
.Lx351_29:              mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n165_var_α
                                                                              jmp   n165_var_α
n164_call_proc_staged_β:
                                                                              jmp   n165_var_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 16
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n167_call_proc_staged_α
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "direct execution"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1856]
                        lea              rdx, [rsp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx356_1
                        lea              rcx, [rip + .Lx356_3]
                        lea              rdx, [rip + .Lx356_4];               jmp   rax
.Lx356_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx356_2
.Lx356_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx356_2
.Lx356_1:               call             rt_faildescr@PLT
.Lx356_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx356_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1792]
                        mov              rdx, qword ptr [rsp + 1800]
.Lx356_29:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 104;                            je    n168_var_α
                                                                              jmp   n168_var_α
n167_call_proc_staged_β:
                                                                              jmp   n168_var_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:      mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 16
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n170_call_proc_staged_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "event monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1760]
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx361_1
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4];               jmp   rax
.Lx361_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx361_2
.Lx361_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx361_2
.Lx361_1:               call             rt_faildescr@PLT
.Lx361_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx361_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1696]
                        mov              rdx, qword ptr [rsp + 1704]
.Lx361_29:              mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    n171_var_α
                                                                              jmp   n171_var_α
n170_call_proc_staged_β:
                                                                              jmp   n171_var_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 17
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n173_call_proc_staged_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "executable images"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx366_1
                        lea              rcx, [rip + .Lx366_3]
                        lea              rdx, [rip + .Lx366_4];               jmp   rax
.Lx366_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx366_2
.Lx366_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx366_2
.Lx366_1:               call             rt_faildescr@PLT
.Lx366_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx366_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
.Lx366_29:              mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              eax, 104;                            je    n174_var_α
                                                                              jmp   n174_var_α
n173_call_proc_staged_β:
                                                                              jmp   n174_var_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:             mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 18
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n176_call_proc_staged_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "external functions"
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1568]
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4];               jmp   rax
.Lx371_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx371_2
.Lx371_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx371_2
.Lx371_1:               call             rt_faildescr@PLT
.Lx371_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx371_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
.Lx371_29:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n177_var_α
                                                                              jmp   n177_var_α
n176_call_proc_staged_β:
                                                                              jmp   n177_var_α
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 18
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n179_call_proc_staged_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "keyboard functions"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx376_1
                        lea              rcx, [rip + .Lx376_3]
                        lea              rdx, [rip + .Lx376_4];               jmp   rax
.Lx376_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx376_2
.Lx376_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx376_2
.Lx376_1:               call             rt_faildescr@PLT
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx376_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n180_lit_integer_α
                                                                              jmp   n180_lit_integer_α
n179_call_proc_staged_β:
                                                                              jmp   n180_lit_integer_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n181_lit_string_α
.Lx377_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 14
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n182_call_proc_staged_α
.Lx378_0:               .quad            .Lx378_0_s
.Lx378_0_s:             .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx380_1
                        lea              rcx, [rip + .Lx380_3]
                        lea              rdx, [rip + .Lx380_4];               jmp   rax
.Lx380_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx380_2
.Lx380_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx380_2
.Lx380_1:               call             rt_faildescr@PLT
.Lx380_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx380_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
.Lx380_29:              mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 104;                            je    n183_var_α
                                                                              jmp   n183_var_α
n182_call_proc_staged_β:
                                                                              jmp   n183_var_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 17
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n185_call_proc_staged_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "memory monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx385_1
                        lea              rcx, [rip + .Lx385_3]
                        lea              rdx, [rip + .Lx385_4];               jmp   rax
.Lx385_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx385_2
.Lx385_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx385_2
.Lx385_1:               call             rt_faildescr@PLT
.Lx385_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx385_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx385_29:              mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104;                            je    n186_var_α
                                                                              jmp   n186_var_α
n185_call_proc_staged_β:
                                                                              jmp   n186_var_α
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 17
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n188_call_proc_staged_α
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "multiple programs"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx390_1
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4];               jmp   rax
.Lx390_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx390_2
.Lx390_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx390_2
.Lx390_1:               call             rt_faildescr@PLT
.Lx390_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx390_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
.Lx390_29:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n189_var_α
                                                                              jmp   n189_var_α
n188_call_proc_staged_β:
                                                                              jmp   n189_var_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 16
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n191_call_proc_staged_α
.Lx393_0:               .quad            .Lx393_0_s
.Lx393_0_s:             .string          "multiple regions"
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1088]
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4];               jmp   rax
.Lx395_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx395_2
.Lx395_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx395_2
.Lx395_1:               call             rt_faildescr@PLT
.Lx395_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx395_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
.Lx395_29:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 104;                            je    n192_lit_integer_α
                                                                              jmp   n192_lit_integer_α
n191_call_proc_staged_β:
                                                                              jmp   n192_lit_integer_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n193_lit_string_α
.Lx396_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 5
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n194_call_proc_staged_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "pipes"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx399_1
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4];               jmp   rax
.Lx399_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx399_2
.Lx399_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx399_2
.Lx399_1:               call             rt_faildescr@PLT
.Lx399_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx399_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
.Lx399_29:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n195_var_α
                                                                              jmp   n195_var_α
n194_call_proc_staged_β:
                                                                              jmp   n195_var_α
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 904], rax;          jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 10
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n197_call_proc_staged_α
.Lx402_0:               .quad            .Lx402_0_s
.Lx402_0_s:             .string          "record I/O"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 896]
                        lea              rdx, [rsp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4];               jmp   rax
.Lx404_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx404_2
.Lx404_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx404_2
.Lx404_1:               call             rt_faildescr@PLT
.Lx404_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx404_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
.Lx404_29:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n198_var_α
                                                                              jmp   n198_var_α
n197_call_proc_staged_β:
                                                                              jmp   n198_var_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 808], rax;          jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 17
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n200_call_proc_staged_α
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "string invocation"
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx409_1
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4];               jmp   rax
.Lx409_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx409_2
.Lx409_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx409_2
.Lx409_1:               call             rt_faildescr@PLT
.Lx409_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx409_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
.Lx409_29:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n201_lit_integer_α
                                                                              jmp   n201_lit_integer_α
n200_call_proc_staged_β:
                                                                              jmp   n201_lit_integer_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n202_lit_string_α
.Lx410_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 15
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n203_call_proc_staged_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "system function"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 704]
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx413_1
                        lea              rcx, [rip + .Lx413_3]
                        lea              rdx, [rip + .Lx413_4];               jmp   rax
.Lx413_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx413_2
.Lx413_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx413_2
.Lx413_1:               call             rt_faildescr@PLT
.Lx413_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx413_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
.Lx413_29:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104;                            je    n204_var_α
                                                                              jmp   n204_var_α
n203_call_proc_staged_β:
                                                                              jmp   n204_var_α
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 616], rax;          jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 21
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n206_call_proc_staged_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "visualization support"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 608]
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx418_1
                        lea              rcx, [rip + .Lx418_3]
                        lea              rdx, [rip + .Lx418_4];               jmp   rax
.Lx418_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx418_2
.Lx418_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx418_2
.Lx418_1:               call             rt_faildescr@PLT
.Lx418_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx418_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
.Lx418_29:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n207_var_α
                                                                              jmp   n207_var_α
n206_call_proc_staged_β:
                                                                              jmp   n207_var_α
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 520], rax;          jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 16
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n209_call_proc_staged_α
.Lx421_0:               .quad            .Lx421_0_s
.Lx421_0_s:             .string          "window functions"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx423_1
                        lea              rcx, [rip + .Lx423_3]
                        lea              rdx, [rip + .Lx423_4];               jmp   rax
.Lx423_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx423_2
.Lx423_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx423_2
.Lx423_1:               call             rt_faildescr@PLT
.Lx423_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx423_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx423_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n210_var_α
                                                                              jmp   n210_var_α
n209_call_proc_staged_β:
                                                                              jmp   n210_var_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 424], rax;          jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 9
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n212_call_proc_staged_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "X Windows"
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 416]
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx428_1
                        lea              rcx, [rip + .Lx428_3]
                        lea              rdx, [rip + .Lx428_4];               jmp   rax
.Lx428_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx428_2
.Lx428_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx428_2
.Lx428_1:               call             rt_faildescr@PLT
.Lx428_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx428_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
.Lx428_29:              mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n213_var_α
                                                                              jmp   n213_var_α
n212_call_proc_staged_β:
                                                                              jmp   n213_var_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 328], rax;          jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 20
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n215_call_proc_staged_α
.Lx431_0:               .quad            .Lx431_0_s
.Lx431_0_s:             .string          "Presentation Manager"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx433_1
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4];               jmp   rax
.Lx433_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx433_2
.Lx433_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx433_2
.Lx433_1:               call             rt_faildescr@PLT
.Lx433_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx433_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx433_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n216_var_α
                                                                              jmp   n216_var_α
n215_call_proc_staged_β:
                                                                              jmp   n216_var_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 232], rax;          jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 21
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n218_call_proc_staged_α
.Lx436_0:               .quad            .Lx436_0_s
.Lx436_0_s:             .string          "Archimedes extensions"
#-----------------------------------------------------------------------------------------------------------------------
n218_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx438_1
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4];               jmp   rax
.Lx438_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx438_2
.Lx438_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx438_2
.Lx438_1:               call             rt_faildescr@PLT
.Lx438_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx438_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx438_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n219_var_α
                                                                              jmp   n219_var_α
n218_call_proc_staged_β:
                                                                              jmp   n219_var_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 136], rax;          jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 17
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n221_call_proc_staged_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "MS-DOS extensions"
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx443_1
                        lea              rcx, [rip + .Lx443_3]
                        lea              rdx, [rip + .Lx443_4];               jmp   rax
.Lx443_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx443_2
.Lx443_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx443_2
.Lx443_1:               call             rt_faildescr@PLT
.Lx443_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx443_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx443_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    n222_lit_string_α
                                                                              jmp   n222_lit_string_α
n221_call_proc_staged_β:
                                                                              jmp   n222_lit_string_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 4
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n223_call_builtin_icon_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn446:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_γ
n223_call_builtin_icon_β:
                                                                              jmp   main_ω
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
