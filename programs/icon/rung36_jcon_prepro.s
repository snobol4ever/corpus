                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_precheck_α
proc_precheck_α:
proc_precheck_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n13_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx29_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   proc_precheck_ω
.Lx29_0:
                        cmp              eax, 1
                                                                                        jne   .Lx29_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   proc_precheck_ω
.Lx29_1:
                                                                                        jmp   proc_precheck_ω
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n16_disjunction_β
                                                                                        jmp   n1_disjunction_β
n0_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n1_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n8_var_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx31_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n0_disjunction_as
.Lx31_0:
                        cmp              eax, 1
                                                                                        jne   .Lx31_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n0_disjunction_as
.Lx31_1:
                                                                                        jmp   n0_disjunction_as
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n2_disjunction_β
n1_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n2_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n3_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1_disjunction_as
.Lx33_0:
                                                                                        jmp   n1_disjunction_as
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                                                                                        jmp   proc_precheck_ω
n2_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n4_unop_test_α
n3_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 104
                                                                                        je    n2_disjunction_af
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 15
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n6_var_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "no feature:    "
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn41:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn41]                          # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n2_disjunction_as
n7_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n9_unop_test_α
n8_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 104
                                                                                        je    n1_disjunction_af
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 40
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n11_var_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "error: unexpected predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn49:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]                          # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n1_disjunction_as
n12_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n14_keyword_icon_gen_α
n13_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 464], 0
.Lx52_1:
                        mov              rdi, qword ptr [rip + .Lx52_0]                 # sval
                        mov              rsi, qword ptr [rbp + 464]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              rax, qword ptr [rbp + 464]
                        add              rax, 1
                        mov              qword ptr [rbp + 464], rax
                                                                                        jmp   n15_binop_test_α
n14_keyword_icon_gen_β:
                                                                                        jmp   .Lx52_1
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 448]                     # rhs
                        mov              rcx, qword ptr [rbp + 456]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n14_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 448]                     # d
                        mov              rsi, qword ptr [rbp + 456]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n23_var_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx55_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
.Lx55_0:
                        cmp              eax, 1
                                                                                        jne   .Lx55_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
.Lx55_1:
                                                                                        jmp   n0_disjunction_as
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n17_disjunction_β
n16_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n17_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n18_var_α
n17_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx57_0
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n16_disjunction_as
.Lx57_0:
                                                                                        jmp   n16_disjunction_as
n17_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   proc_precheck_ω
n17_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n19_unop_test_α
n18_var_β:
                                                                                        jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 104
                                                                                        je    n17_disjunction_af
                        cmp              eax, 0
                                                                                        je    n17_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 15
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n21_var_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "found feature: "
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n22_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn65:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]                          # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n17_disjunction_as
n22_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n24_unop_test_α
n23_var_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 104
                                                                                        je    n16_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n16_disjunction_af
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 32
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n26_var_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "error: no predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn73:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]                          # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n16_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_dcα:
                        pop              r11
                        sub              rsp, 864
                        mov              qword ptr [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 816], r11
                        lea              rax, [rip + .Lx74_2]
                        mov              qword ptr [rbp + 824], rax
                        lea              rax, [rip + .Lx74_3]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 800                                       # suffix_off
                        mov              edx, 816                                       # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_precheck_α_body
.Lx74_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -848
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx74_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -848
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        sub              rsp, 4656
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4064], 0
                        mov              qword ptr [rsp + 4072], 0
                        mov              qword ptr [rsp + 4080], 0
                        mov              qword ptr [rsp + 4088], 0
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              qword ptr [rsp + 4128], 0
                        mov              qword ptr [rsp + 4136], 0
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4184], 0
                        mov              qword ptr [rsp + 4192], 0
                        mov              qword ptr [rsp + 4200], 0
                        mov              qword ptr [rsp + 4208], 0
                        mov              qword ptr [rsp + 4216], 0
                        mov              qword ptr [rsp + 4224], 0
                        mov              qword ptr [rsp + 4232], 0
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              qword ptr [rsp + 4256], 0
                        mov              qword ptr [rsp + 4264], 0
                        mov              qword ptr [rsp + 4272], 0
                        mov              qword ptr [rsp + 4280], 0
                        mov              qword ptr [rsp + 4288], 0
                        mov              qword ptr [rsp + 4296], 0
                        mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              qword ptr [rsp + 4336], 0
                        mov              qword ptr [rsp + 4344], 0
                        mov              qword ptr [rsp + 4352], 0
                        mov              qword ptr [rsp + 4360], 0
                        mov              qword ptr [rsp + 4368], 0
                        mov              qword ptr [rsp + 4376], 0
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              qword ptr [rsp + 4416], 0
                        mov              qword ptr [rsp + 4424], 0
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              qword ptr [rsp + 4480], 0
                        mov              qword ptr [rsp + 4488], 0
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              qword ptr [rsp + 4512], 0
                        mov              qword ptr [rsp + 4520], 0
                        mov              qword ptr [rsp + 4528], 0
                        mov              qword ptr [rsp + 4536], 0
                        mov              qword ptr [rsp + 4544], 0
                        mov              qword ptr [rsp + 4552], 0
                        mov              qword ptr [rsp + 4560], 0
                        mov              qword ptr [rsp + 4568], 0
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        mov              qword ptr [rsp + 4592], 0
                        mov              qword ptr [rsp + 4600], 0
                        mov              qword ptr [rsp + 4608], 0
                        mov              qword ptr [rsp + 4616], 0
                        mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              qword ptr [rsp + 4640], 0
                        mov              qword ptr [rsp + 4648], 0
                        mov              qword ptr [rsp + 4464], 2                      # result
                        mov              dword ptr [rsp + 4468], 19
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 4472], rax
                                                                                        jmp   n76_lit_integer_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 4480], 3                      # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 4488], rax
                                                                                        jmp   n77_lit_string_α
.Lx225_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rsp + 4496], 2                      # result
                        mov              dword ptr [rsp + 4500], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 4504], rax
                                                                                        jmp   n78_lit_integer_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rsp + 4512], 3                      # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 4520], rax
                                                                                        jmp   n79_lit_string_α
.Lx227_0:
                        .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rsp + 4528], 2                      # result
                        mov              dword ptr [rsp + 4532], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n80_lit_integer_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rsp + 4544], 3                      # result
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 4552], rax
                                                                                        jmp   n81_lit_string_α
.Lx229_0:
                        .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 4560], 2                      # result
                        mov              dword ptr [rsp + 4564], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 4568], rax
                                                                                        jmp   n82_lit_integer_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rsp + 4576], 3                      # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 4584], rax
                                                                                        jmp   n83_lit_string_α
.Lx231_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 4592], 2                      # result
                        mov              dword ptr [rsp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 4600], rax
                                                                                        jmp   n84_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rsp + 4624], 3                      # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 4632], rax
                                                                                        jmp   n85_lit_integer_α
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 4640], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 4648], rax
                                                                                        jmp   n86_binop_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              rdi, qword ptr [rsp + 4624]
                        mov              rsi, qword ptr [rsp + 4632]
                        mov              rdx, qword ptr [rsp + 4640]
                        mov              rcx, qword ptr [rsp + 4648]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n88_lit_string_α
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                                                                                        jmp   n87_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4296], rax
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4496]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4344], rax
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4352], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4360], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4376], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4592]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4600]
                        mov              qword ptr [rsp + 4424], rax
                        mov              rax, qword ptr [rsp + 4608]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4616]
                        mov              qword ptr [rsp + 4440], rax
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]                         # fn
                        lea              rsi, [rsp + 4288]                              # args
                        mov              edx, 10                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        cmp              eax, 104
                                                                                        je    n88_lit_string_α
                                                                                        jmp   n88_lit_string_α
n87_call_builtin_icon_β:
                                                                                        jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rsp + 4256], 2                      # result
                        mov              dword ptr [rsp + 4260], 15
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 4264], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "prepro.dat here"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4224], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4232], rax
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]                         # fn
                        lea              rsi, [rsp + 4224]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx
                        cmp              eax, 104
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 4176], 2                      # result
                        mov              dword ptr [rsp + 4180], 7
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 4184], rax
                                                                                        jmp   n91_lit_integer_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "xyzzy: "
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 4192], 3                      # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 4200], rax
                                                                                        jmp   n92_call_builtin_icon_α
.Lx242_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4136], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4152], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]                         # fn
                        lea              rsi, [rsp + 4128]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        cmp              eax, 104
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 3920], 2                      # result
                        mov              dword ptr [rsp + 3924], 19
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 3928], rax
                                                                                        jmp   n94_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rsp + 3936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 3944], rax
                                                                                        jmp   n95_lit_string_α
.Lx246_0:
                        .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rsp + 3952], 2                      # result
                        mov              dword ptr [rsp + 3956], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 3960], rax
                                                                                        jmp   n96_lit_integer_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 3968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 3976], rax
                                                                                        jmp   n97_lit_string_α
.Lx248_0:
                        .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rsp + 3984], 2                      # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 3992], rax
                                                                                        jmp   n98_lit_integer_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 4000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 4008], rax
                                                                                        jmp   n99_lit_string_α
.Lx250_0:
                        .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 4016], 2                      # result
                        mov              dword ptr [rsp + 4020], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 4024], rax
                                                                                        jmp   n100_lit_integer_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 4032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 4040], rax
                                                                                        jmp   n101_lit_string_α
.Lx252_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 4048], 2                      # result
                        mov              dword ptr [rsp + 4052], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 4056], rax
                                                                                        jmp   n102_lit_integer_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rsp + 4080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 4088], rax
                                                                                        jmp   n103_lit_integer_α
.Lx254_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 4096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 4104], rax
                                                                                        jmp   n104_binop_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:
                        mov              rdi, qword ptr [rsp + 4080]
                        mov              rsi, qword ptr [rsp + 4088]
                        mov              rdx, qword ptr [rsp + 4096]
                        mov              rcx, qword ptr [rsp + 4104]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n106_var_α
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                                                                                        jmp   n105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3768], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3784], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3800], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3816], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 3880], rax
                        mov              rax, qword ptr [rsp + 4064]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 4072]
                        mov              qword ptr [rsp + 3896], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]                         # fn
                        lea              rsi, [rsp + 3744]                              # args
                        mov              edx, 10                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3728], rax
                        mov              qword ptr [rsp + 3736], rdx
                        cmp              eax, 104
                                                                                        je    n106_var_α
                                                                                        jmp   n106_var_α
n105_call_builtin_icon_β:
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 3704], rax
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rsp + 3712], 2                      # result
                        mov              dword ptr [rsp + 3716], 5
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 3720], rax
                                                                                        jmp   n108_call_proc_staged_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "Amiga"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3696]
                        lea              rdx, [rsp + 3712]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx263_1
                        lea              rcx, [rip + .Lx263_3]
                        lea              rdx, [rip + .Lx263_4]
                                                                                        jmp   rax
.Lx263_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx263_2
.Lx263_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx263_2
.Lx263_1:
                        call             rt_faildescr@PLT
.Lx263_2:
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx
                        cmp              eax, 104
                                                                                        je    n109_var_α
                                                                                        jmp   n109_var_α
n108_call_proc_staged_β:
                                                                                        jmp   n109_var_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 3608], rax
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rsp + 3616], 2                      # result
                        mov              dword ptr [rsp + 3620], 16
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 3624], rax
                                                                                        jmp   n111_call_proc_staged_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "Acorn Archimedes"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3600]
                        lea              rdx, [rsp + 3616]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4]
                                                                                        jmp   rax
.Lx268_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx268_2
.Lx268_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx268_2
.Lx268_1:
                        call             rt_faildescr@PLT
.Lx268_2:
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n112_var_α
                                                                                        jmp   n112_var_α
n111_call_proc_staged_β:
                                                                                        jmp   n112_var_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 3512], rax
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rsp + 3520], 2                      # result
                        mov              dword ptr [rsp + 3524], 8
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 3528], rax
                                                                                        jmp   n114_call_proc_staged_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "Atari ST"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3504]
                        lea              rdx, [rsp + 3520]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx273_1
                        lea              rcx, [rip + .Lx273_3]
                        lea              rdx, [rip + .Lx273_4]
                                                                                        jmp   rax
.Lx273_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx273_2
.Lx273_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx273_2
.Lx273_1:
                        call             rt_faildescr@PLT
.Lx273_2:
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              eax, 104
                                                                                        je    n115_var_α
                                                                                        jmp   n115_var_α
n114_call_proc_staged_β:
                                                                                        jmp   n115_var_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 3416], rax
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rsp + 3424], 2                      # result
                        mov              dword ptr [rsp + 3428], 3
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 3432], rax
                                                                                        jmp   n117_call_proc_staged_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "CMS"
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3408]
                        lea              rdx, [rsp + 3424]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx278_1
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4]
                                                                                        jmp   rax
.Lx278_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_1:
                        call             rt_faildescr@PLT
.Lx278_2:
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              eax, 104
                                                                                        je    n118_var_α
                                                                                        jmp   n118_var_α
n117_call_proc_staged_β:
                                                                                        jmp   n118_var_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 3320], rax
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rsp + 3328], 2                      # result
                        mov              dword ptr [rsp + 3332], 9
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 3336], rax
                                                                                        jmp   n120_call_proc_staged_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3312]
                        lea              rdx, [rsp + 3328]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx283_1
                        lea              rcx, [rip + .Lx283_3]
                        lea              rdx, [rip + .Lx283_4]
                                                                                        jmp   rax
.Lx283_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx283_2
.Lx283_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx283_2
.Lx283_1:
                        call             rt_faildescr@PLT
.Lx283_2:
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n121_var_α
                                                                                        jmp   n121_var_α
n120_call_proc_staged_β:
                                                                                        jmp   n121_var_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 3224], rax
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rsp + 3232], 2                      # result
                        mov              dword ptr [rsp + 3236], 10
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 3240], rax
                                                                                        jmp   n123_call_proc_staged_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "MS-DOS/386"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3216]
                        lea              rdx, [rsp + 3232]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx288_1
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4]
                                                                                        jmp   rax
.Lx288_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx288_2
.Lx288_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx288_2
.Lx288_1:
                        call             rt_faildescr@PLT
.Lx288_2:
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n124_var_α
                                                                                        jmp   n124_var_α
n123_call_proc_staged_β:
                                                                                        jmp   n124_var_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 3128], rax
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 3136], 2                      # result
                        mov              dword ptr [rsp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 3144], rax
                                                                                        jmp   n126_call_proc_staged_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "MS-DOS"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3120]
                        lea              rdx, [rsp + 3136]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx293_1
                        lea              rcx, [rip + .Lx293_3]
                        lea              rdx, [rip + .Lx293_4]
                                                                                        jmp   rax
.Lx293_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx293_2
.Lx293_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx293_2
.Lx293_1:
                        call             rt_faildescr@PLT
.Lx293_2:
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    n127_var_α
                                                                                        jmp   n127_var_α
n126_call_proc_staged_β:
                                                                                        jmp   n127_var_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 3032], rax
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rsp + 3040], 2                      # result
                        mov              dword ptr [rsp + 3044], 3
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 3048], rax
                                                                                        jmp   n129_call_proc_staged_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "MVS"
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3024]
                        lea              rdx, [rsp + 3040]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx298_1
                        lea              rcx, [rip + .Lx298_3]
                        lea              rdx, [rip + .Lx298_4]
                                                                                        jmp   rax
.Lx298_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx298_2
.Lx298_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx298_2
.Lx298_1:
                        call             rt_faildescr@PLT
.Lx298_2:
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              eax, 104
                                                                                        je    n130_var_α
                                                                                        jmp   n130_var_α
n129_call_proc_staged_β:
                                                                                        jmp   n130_var_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 2936], rax
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rsp + 2944], 2                      # result
                        mov              dword ptr [rsp + 2948], 4
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 2952], rax
                                                                                        jmp   n132_call_proc_staged_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "OS/2"
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2928]
                        lea              rdx, [rsp + 2944]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx303_1
                        lea              rcx, [rip + .Lx303_3]
                        lea              rdx, [rip + .Lx303_4]
                                                                                        jmp   rax
.Lx303_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx303_2
.Lx303_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx303_2
.Lx303_1:
                        call             rt_faildescr@PLT
.Lx303_2:
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n133_var_α
                                                                                        jmp   n133_var_α
n132_call_proc_staged_β:
                                                                                        jmp   n133_var_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 2840], rax
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rsp + 2848], 2                      # result
                        mov              dword ptr [rsp + 2852], 4
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 2856], rax
                                                                                        jmp   n135_call_proc_staged_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "PORT"
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2832]
                        lea              rdx, [rsp + 2848]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx308_1
                        lea              rcx, [rip + .Lx308_3]
                        lea              rdx, [rip + .Lx308_4]
                                                                                        jmp   rax
.Lx308_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx308_2
.Lx308_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx308_2
.Lx308_1:
                        call             rt_faildescr@PLT
.Lx308_2:
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n136_lit_integer_α
                                                                                        jmp   n136_lit_integer_α
n135_call_proc_staged_β:
                                                                                        jmp   n136_lit_integer_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rsp + 2736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 2744], rax
                                                                                        jmp   n137_lit_string_α
.Lx309_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rsp + 2752], 2                      # result
                        mov              dword ptr [rsp + 2756], 4
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 2760], rax
                                                                                        jmp   n138_call_proc_staged_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "UNIX"
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2736]
                        lea              rdx, [rsp + 2752]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx312_1
                        lea              rcx, [rip + .Lx312_3]
                        lea              rdx, [rip + .Lx312_4]
                                                                                        jmp   rax
.Lx312_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx312_2
.Lx312_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx312_2
.Lx312_1:
                        call             rt_faildescr@PLT
.Lx312_2:
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              eax, 104
                                                                                        je    n139_var_α
                                                                                        jmp   n139_var_α
n138_call_proc_staged_β:
                                                                                        jmp   n139_var_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 2648], rax
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rsp + 2656], 2                      # result
                        mov              dword ptr [rsp + 2660], 3
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 2664], rax
                                                                                        jmp   n141_call_proc_staged_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "VMS"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2640]
                        lea              rdx, [rsp + 2656]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx317_1
                        lea              rcx, [rip + .Lx317_3]
                        lea              rdx, [rip + .Lx317_4]
                                                                                        jmp   rax
.Lx317_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx317_2
.Lx317_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx317_2
.Lx317_1:
                        call             rt_faildescr@PLT
.Lx317_2:
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    n142_var_α
                                                                                        jmp   n142_var_α
n141_call_proc_staged_β:
                                                                                        jmp   n142_var_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 2552], rax
                                                                                        jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rsp + 2560], 2                      # result
                        mov              dword ptr [rsp + 2564], 8
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 2568], rax
                                                                                        jmp   n144_call_proc_staged_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "compiled"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2544]
                        lea              rdx, [rsp + 2560]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx322_1
                        lea              rcx, [rip + .Lx322_3]
                        lea              rdx, [rip + .Lx322_4]
                                                                                        jmp   rax
.Lx322_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx322_2
.Lx322_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx322_2
.Lx322_1:
                        call             rt_faildescr@PLT
.Lx322_2:
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n145_var_α
                                                                                        jmp   n145_var_α
n144_call_proc_staged_β:
                                                                                        jmp   n145_var_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 2456], rax
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rsp + 2464], 2                      # result
                        mov              dword ptr [rsp + 2468], 11
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 2472], rax
                                                                                        jmp   n147_call_proc_staged_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "interpreted"
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2448]
                        lea              rdx, [rsp + 2464]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx327_1
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4]
                                                                                        jmp   rax
.Lx327_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_1:
                        call             rt_faildescr@PLT
.Lx327_2:
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n148_lit_integer_α
                                                                                        jmp   n148_lit_integer_α
n147_call_proc_staged_β:
                                                                                        jmp   n148_lit_integer_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rsp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 2360], rax
                                                                                        jmp   n149_lit_string_α
.Lx328_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rsp + 2368], 2                      # result
                        mov              dword ptr [rsp + 2372], 4
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 2376], rax
                                                                                        jmp   n150_call_proc_staged_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "Java"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2352]
                        lea              rdx, [rsp + 2368]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx331_1
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4]
                                                                                        jmp   rax
.Lx331_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_1:
                        call             rt_faildescr@PLT
.Lx331_2:
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104
                                                                                        je    n151_lit_integer_α
                                                                                        jmp   n151_lit_integer_α
n150_call_proc_staged_β:
                                                                                        jmp   n151_lit_integer_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rsp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 2248], rax
                                                                                        jmp   n152_lit_string_α
.Lx332_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rsp + 2256], 2                      # result
                        mov              dword ptr [rsp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 2264], rax
                                                                                        jmp   n153_lit_integer_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "ASCII"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rsp + 2272], 3                      # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 2280], rax
                                                                                        jmp   n154_call_proc_staged_α
.Lx334_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rsp + 2240]
                        lea              rdx, [rsp + 2256]
                        lea              rcx, [rsp + 2272]
                        call             proc_precheck_dcα
                                                                                        jmp   .Lx336_2
.Lx336_2:
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104
                                                                                        je    n155_var_α
                                                                                        jmp   n155_var_α
n154_call_proc_staged_β:
                                                                                        jmp   n155_var_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 2120], rax
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rsp + 2128], 2                      # result
                        mov              dword ptr [rsp + 2132], 6
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 2136], rax
                                                                                        jmp   n157_lit_integer_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "EBCDIC"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 2144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 2152], rax
                                                                                        jmp   n158_call_proc_staged_α
.Lx340_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2128]
                        lea              rcx, [rsp + 2144]
                        call             proc_precheck_dcα
                                                                                        jmp   .Lx342_2
.Lx342_2:
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    n159_var_α
                                                                                        jmp   n159_var_α
n158_call_proc_staged_β:
                                                                                        jmp   n159_var_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n160_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:
                        mov              qword ptr [rsp + 2016], 2                      # result
                        mov              dword ptr [rsp + 2020], 15
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n161_call_proc_staged_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "calling to Icon"
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2000]
                        lea              rdx, [rsp + 2016]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx347_1
                        lea              rcx, [rip + .Lx347_3]
                        lea              rdx, [rip + .Lx347_4]
                                                                                        jmp   rax
.Lx347_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx347_2
.Lx347_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx347_2
.Lx347_1:
                        call             rt_faildescr@PLT
.Lx347_2:
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n162_lit_integer_α
                                                                                        jmp   n162_lit_integer_α
n161_call_proc_staged_β:
                                                                                        jmp   n162_lit_integer_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rsp + 1904], 3                      # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 1912], rax
                                                                                        jmp   n163_lit_string_α
.Lx348_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rsp + 1920], 2                      # result
                        mov              dword ptr [rsp + 1924], 14
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 1928], rax
                                                                                        jmp   n164_call_proc_staged_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "co-expressions"
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1904]
                        lea              rdx, [rsp + 1920]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx351_1
                        lea              rcx, [rip + .Lx351_3]
                        lea              rdx, [rip + .Lx351_4]
                                                                                        jmp   rax
.Lx351_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx351_2
.Lx351_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx351_2
.Lx351_1:
                        call             rt_faildescr@PLT
.Lx351_2:
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n165_var_α
                                                                                        jmp   n165_var_α
n164_call_proc_staged_β:
                                                                                        jmp   n165_var_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1816], rax
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rsp + 1824], 2                      # result
                        mov              dword ptr [rsp + 1828], 16
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 1832], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "direct execution"
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1808]
                        lea              rdx, [rsp + 1824]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx356_1
                        lea              rcx, [rip + .Lx356_3]
                        lea              rdx, [rip + .Lx356_4]
                                                                                        jmp   rax
.Lx356_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx356_2
.Lx356_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx356_2
.Lx356_1:
                        call             rt_faildescr@PLT
.Lx356_2:
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n168_var_α
                                                                                        jmp   n168_var_α
n167_call_proc_staged_β:
                                                                                        jmp   n168_var_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rsp + 1728], 2                      # result
                        mov              dword ptr [rsp + 1732], 16
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n170_call_proc_staged_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "event monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1712]
                        lea              rdx, [rsp + 1728]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx361_1
                        lea              rcx, [rip + .Lx361_3]
                        lea              rdx, [rip + .Lx361_4]
                                                                                        jmp   rax
.Lx361_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx361_2
.Lx361_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx361_2
.Lx361_1:
                        call             rt_faildescr@PLT
.Lx361_2:
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n171_var_α
                                                                                        jmp   n171_var_α
n170_call_proc_staged_β:
                                                                                        jmp   n171_var_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rsp + 1632], 2                      # result
                        mov              dword ptr [rsp + 1636], 17
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1640], rax
                                                                                        jmp   n173_call_proc_staged_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "executable images"
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1616]
                        lea              rdx, [rsp + 1632]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx366_1
                        lea              rcx, [rip + .Lx366_3]
                        lea              rdx, [rip + .Lx366_4]
                                                                                        jmp   rax
.Lx366_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx366_2
.Lx366_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx366_2
.Lx366_1:
                        call             rt_faildescr@PLT
.Lx366_2:
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n174_var_α
                                                                                        jmp   n174_var_α
n173_call_proc_staged_β:
                                                                                        jmp   n174_var_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1528], rax
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rsp + 1536], 2                      # result
                        mov              dword ptr [rsp + 1540], 18
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1544], rax
                                                                                        jmp   n176_call_proc_staged_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "external functions"
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1520]
                        lea              rdx, [rsp + 1536]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4]
                                                                                        jmp   rax
.Lx371_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx371_2
.Lx371_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx371_2
.Lx371_1:
                        call             rt_faildescr@PLT
.Lx371_2:
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n177_var_α
                                                                                        jmp   n177_var_α
n176_call_proc_staged_β:
                                                                                        jmp   n177_var_α
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rsp + 1440], 2                      # result
                        mov              dword ptr [rsp + 1444], 18
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 1448], rax
                                                                                        jmp   n179_call_proc_staged_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "keyboard functions"
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1424]
                        lea              rdx, [rsp + 1440]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx376_1
                        lea              rcx, [rip + .Lx376_3]
                        lea              rdx, [rip + .Lx376_4]
                                                                                        jmp   rax
.Lx376_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx376_2
.Lx376_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx376_2
.Lx376_1:
                        call             rt_faildescr@PLT
.Lx376_2:
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n180_lit_integer_α
                                                                                        jmp   n180_lit_integer_α
n179_call_proc_staged_β:
                                                                                        jmp   n180_lit_integer_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:
                        mov              qword ptr [rsp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n181_lit_string_α
.Lx377_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rsp + 1344], 2                      # result
                        mov              dword ptr [rsp + 1348], 14
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 1352], rax
                                                                                        jmp   n182_call_proc_staged_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1328]
                        lea              rdx, [rsp + 1344]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx380_1
                        lea              rcx, [rip + .Lx380_3]
                        lea              rdx, [rip + .Lx380_4]
                                                                                        jmp   rax
.Lx380_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx380_2
.Lx380_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx380_2
.Lx380_1:
                        call             rt_faildescr@PLT
.Lx380_2:
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n183_var_α
                                                                                        jmp   n183_var_α
n182_call_proc_staged_β:
                                                                                        jmp   n183_var_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:
                        mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rsp + 1248], 2                      # result
                        mov              dword ptr [rsp + 1252], 17
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 1256], rax
                                                                                        jmp   n185_call_proc_staged_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "memory monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1232]
                        lea              rdx, [rsp + 1248]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx385_1
                        lea              rcx, [rip + .Lx385_3]
                        lea              rdx, [rip + .Lx385_4]
                                                                                        jmp   rax
.Lx385_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx385_2
.Lx385_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx385_2
.Lx385_1:
                        call             rt_faildescr@PLT
.Lx385_2:
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n186_var_α
                                                                                        jmp   n186_var_α
n185_call_proc_staged_β:
                                                                                        jmp   n186_var_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rsp + 1152], 2                      # result
                        mov              dword ptr [rsp + 1156], 17
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 1160], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "multiple programs"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1136]
                        lea              rdx, [rsp + 1152]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx390_1
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4]
                                                                                        jmp   rax
.Lx390_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_1:
                        call             rt_faildescr@PLT
.Lx390_2:
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n189_var_α
                                                                                        jmp   n189_var_α
n188_call_proc_staged_β:
                                                                                        jmp   n189_var_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rsp + 1056], 2                      # result
                        mov              dword ptr [rsp + 1060], 16
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1064], rax
                                                                                        jmp   n191_call_proc_staged_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "multiple regions"
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1040]
                        lea              rdx, [rsp + 1056]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n192_lit_integer_α
                                                                                        jmp   n192_lit_integer_α
n191_call_proc_staged_β:
                                                                                        jmp   n192_lit_integer_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        mov              qword ptr [rsp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n193_lit_string_α
.Lx396_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rsp + 960], 2                       # result
                        mov              dword ptr [rsp + 964], 5
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n194_call_proc_staged_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "pipes"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 944]
                        lea              rdx, [rsp + 960]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx399_1
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_1:
                        call             rt_faildescr@PLT
.Lx399_2:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n195_var_α
                                                                                        jmp   n195_var_α
n194_call_proc_staged_β:
                                                                                        jmp   n195_var_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rsp + 864], 2                       # result
                        mov              dword ptr [rsp + 868], 10
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n197_call_proc_staged_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "record I/O"
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 864]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4]
                                                                                        jmp   rax
.Lx404_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_1:
                        call             rt_faildescr@PLT
.Lx404_2:
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n198_var_α
                                                                                        jmp   n198_var_α
n197_call_proc_staged_β:
                                                                                        jmp   n198_var_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rsp + 768], 2                       # result
                        mov              dword ptr [rsp + 772], 17
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n200_call_proc_staged_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "string invocation"
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 768]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx409_1
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4]
                                                                                        jmp   rax
.Lx409_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_1:
                        call             rt_faildescr@PLT
.Lx409_2:
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n201_lit_integer_α
                                                                                        jmp   n201_lit_integer_α
n200_call_proc_staged_β:
                                                                                        jmp   n201_lit_integer_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rsp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n202_lit_string_α
.Lx410_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rsp + 672], 2                       # result
                        mov              dword ptr [rsp + 676], 15
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n203_call_proc_staged_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "system function"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 672]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx413_1
                        lea              rcx, [rip + .Lx413_3]
                        lea              rdx, [rip + .Lx413_4]
                                                                                        jmp   rax
.Lx413_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx413_2
.Lx413_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx413_2
.Lx413_1:
                        call             rt_faildescr@PLT
.Lx413_2:
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n204_var_α
                                                                                        jmp   n204_var_α
n203_call_proc_staged_β:
                                                                                        jmp   n204_var_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rsp + 576], 2                       # result
                        mov              dword ptr [rsp + 580], 21
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n206_call_proc_staged_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "visualization support"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 576]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx418_1
                        lea              rcx, [rip + .Lx418_3]
                        lea              rdx, [rip + .Lx418_4]
                                                                                        jmp   rax
.Lx418_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx418_2
.Lx418_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx418_2
.Lx418_1:
                        call             rt_faildescr@PLT
.Lx418_2:
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n207_var_α
                                                                                        jmp   n207_var_α
n206_call_proc_staged_β:
                                                                                        jmp   n207_var_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rsp + 480], 2                       # result
                        mov              dword ptr [rsp + 484], 16
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n209_call_proc_staged_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "window functions"
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 480]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx423_1
                        lea              rcx, [rip + .Lx423_3]
                        lea              rdx, [rip + .Lx423_4]
                                                                                        jmp   rax
.Lx423_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx423_2
.Lx423_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx423_2
.Lx423_1:
                        call             rt_faildescr@PLT
.Lx423_2:
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n210_var_α
                                                                                        jmp   n210_var_α
n209_call_proc_staged_β:
                                                                                        jmp   n210_var_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rsp + 384], 2                       # result
                        mov              dword ptr [rsp + 388], 9
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n212_call_proc_staged_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "X Windows"
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 384]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx428_1
                        lea              rcx, [rip + .Lx428_3]
                        lea              rdx, [rip + .Lx428_4]
                                                                                        jmp   rax
.Lx428_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx428_2
.Lx428_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx428_2
.Lx428_1:
                        call             rt_faildescr@PLT
.Lx428_2:
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n213_var_α
                                                                                        jmp   n213_var_α
n212_call_proc_staged_β:
                                                                                        jmp   n213_var_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rsp + 288], 2                       # result
                        mov              dword ptr [rsp + 292], 20
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n215_call_proc_staged_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "Presentation Manager"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 288]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx433_1
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4]
                                                                                        jmp   rax
.Lx433_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx433_2
.Lx433_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx433_2
.Lx433_1:
                        call             rt_faildescr@PLT
.Lx433_2:
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n216_var_α
                                                                                        jmp   n216_var_α
n215_call_proc_staged_β:
                                                                                        jmp   n216_var_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rsp + 192], 2                       # result
                        mov              dword ptr [rsp + 196], 21
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n218_call_proc_staged_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "Archimedes extensions"
#-----------------------------------------------------------------------------------------------------------------------
n218_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx438_1
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_1:
                        call             rt_faildescr@PLT
.Lx438_2:
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n219_var_α
                                                                                        jmp   n219_var_α
n218_call_proc_staged_β:
                                                                                        jmp   n219_var_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rsp + 96], 2                        # result
                        mov              dword ptr [rsp + 100], 17
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n221_call_proc_staged_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "MS-DOS extensions"
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 96]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx443_1
                        lea              rcx, [rip + .Lx443_3]
                        lea              rdx, [rip + .Lx443_4]
                                                                                        jmp   rax
.Lx443_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx443_2
.Lx443_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx443_2
.Lx443_1:
                        call             rt_faildescr@PLT
.Lx443_2:
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n222_lit_string_α
                                                                                        jmp   n222_lit_string_α
n221_call_proc_staged_β:
                                                                                        jmp   n222_lit_string_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n223_call_builtin_icon_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn446:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]                         # fn
                        lea              rsi, [rsp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx445_240
                        add              rsp, 4656
                                                                                        jmp   main_ω
.Lx445_240:
                        add              rsp, 4656
                                                                                        jmp   main_ω
n223_call_builtin_icon_β:
                        add              rsp, 4656
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
