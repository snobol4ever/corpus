                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_precheck_α
proc_precheck_α:
                        .global          proc_precheck_α
                        .global          proc_precheck_β
                        .global          proc_precheck_γ
                        .global          proc_precheck_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_precheck_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n1_var_α
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
                                                                                        je    n2_disjunction_β
                                                                                        jmp   n3_disjunction_β
n0_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n3_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n4_keyword_icon_gen_α
n1_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              qword ptr [rbp + 104], 0
                        mov              dword ptr [rbp + 112], 0
                                                                                        jmp   n5_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        jne   .Lx33_0
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
.Lx33_0:
                        cmp              eax, 1
                                                                                        jne   .Lx33_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
.Lx33_1:
                                                                                        jmp   n0_disjunction_as
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 0
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n6_disjunction_β
n2_disjunction_af:
                        add              dword ptr [rbp + 112], 1
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 1
                                                                                        je    n6_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n8_var_α
n3_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx35_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n0_disjunction_as
.Lx35_0:
                        cmp              eax, 1
                                                                                        jne   .Lx35_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n0_disjunction_as
.Lx35_1:
                                                                                        jmp   n0_disjunction_as
n3_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n9_disjunction_β
n3_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1
                                                                                        je    n9_disjunction_α
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 464], 0
.Lx36_1:
                        mov              rdi, qword ptr [rip + .Lx36_0]
                        mov              rsi, qword ptr [rbp + 464]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              rax, qword ptr [rbp + 464]
                        add              rax, 1
                        mov              qword ptr [rbp + 464], rax
                                                                                        jmp   n11_binop_test_α
n4_keyword_icon_gen_β:
                                                                                        jmp   .Lx36_1
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n12_unop_test_α
n5_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n13_var_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx40_0
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n2_disjunction_as
.Lx40_0:
                                                                                        jmp   n2_disjunction_as
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   proc_precheck_ω
n6_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn42:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
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
                                                                                        jmp   n15_unop_test_α
n8_var_β:
                                                                                        jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n16_var_α
n9_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx46_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n3_disjunction_as
.Lx46_0:
                                                                                        jmp   n3_disjunction_as
n9_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                                                                                        jmp   proc_precheck_ω
n9_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn48:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n3_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 99
                                                                                        je    n2_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n2_disjunction_af
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n19_unop_test_α
n13_var_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn54:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn54]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n6_disjunction_as
n14_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 99
                                                                                        je    n3_disjunction_af
                        cmp              eax, 0
                                                                                        je    n3_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n21_unop_test_α
n16_var_β:
                                                                                        jmp   n9_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn59:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_precheck_ω
                                                                                        jmp   n9_disjunction_as
n17_call_builtin_icon_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n22_var_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "error: no predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n24_var_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "error: unexpected predefined symbol for "
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_test_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        cmp              eax, 0
                                                                                        je    n9_disjunction_af
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n26_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "found feature: "
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n27_var_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "no feature:    "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_β:
                                                                                        jmp   proc_precheck_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 808]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_precheck_dcα:
                        pop              r11
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 800], r11
                        lea              rax, [rip + .Lx74_2]
                        mov              qword ptr [rbp + 808], rax
                        lea              rax, [rip + .Lx74_3]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 800
                        mov              edx, 800
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_precheck_α_body
.Lx74_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -832
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx74_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -832
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
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 5208
                        mov              rdi, rsp
                        mov              ecx, 5208
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rsp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rsp + 4520], rax
                                                                                        jmp   n76_lit_integer_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 4528], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n77_lit_string_α
.Lx225_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rsp + 4544], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 4552], rax
                                                                                        jmp   n78_lit_integer_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rsp + 4560], 6
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 4568], rax
                                                                                        jmp   n79_lit_string_α
.Lx227_0:
                        .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rsp + 4576], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 4584], rax
                                                                                        jmp   n80_lit_integer_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rsp + 4592], 6
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 4600], rax
                                                                                        jmp   n81_lit_string_α
.Lx229_0:
                        .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 4608], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 4616], rax
                                                                                        jmp   n82_lit_integer_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rsp + 4624], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 4632], rax
                                                                                        jmp   n83_lit_string_α
.Lx231_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rsp + 4640], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 4648], rax
                                                                                        jmp   n84_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rsp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 4680], rax
                                                                                        jmp   n85_lit_integer_α
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 4688], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 4696], rax
                                                                                        jmp   n86_binop_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              rdi, qword ptr [rsp + 4672]
                        mov              rsi, qword ptr [rsp + 4680]
                        mov              rdx, qword ptr [rsp + 4688]
                        mov              rcx, qword ptr [rsp + 4696]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n88_lit_string_α
                        mov              qword ptr [rsp + 4656], rax
                        mov              qword ptr [rsp + 4664], rdx
                                                                                        jmp   n87_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
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
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4456], rax
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4472], rax
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4488], rax
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 4336]
                        mov              edx, 10
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    n88_lit_string_α
                                                                                        jmp   n88_lit_string_α
n87_call_builtin_icon_β:
                                                                                        jmp   n88_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rsp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 4312], rax
                                                                                        jmp   n89_call_builtin_icon_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "prepro.dat here"
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 4232], rax
                                                                                        jmp   n91_lit_integer_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "xyzzy: "
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 4248], rax
                                                                                        jmp   n92_call_builtin_icon_α
.Lx242_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4200], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 4176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 3976], rax
                                                                                        jmp   n94_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "abc,def,ghi,xx,yy: "
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rsp + 3984], 6
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 3992], rax
                                                                                        jmp   n95_lit_string_α
.Lx246_0:
                        .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rsp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 4008], rax
                                                                                        jmp   n96_lit_integer_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rsp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 4024], rax
                                                                                        jmp   n97_lit_string_α
.Lx248_0:
                        .quad            456
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rsp + 4032], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 4040], rax
                                                                                        jmp   n98_lit_integer_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rsp + 4048], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 4056], rax
                                                                                        jmp   n99_lit_string_α
.Lx250_0:
                        .quad            987
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 4072], rax
                                                                                        jmp   n100_lit_integer_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 4080], 6
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rsp + 4088], rax
                                                                                        jmp   n101_lit_string_α
.Lx252_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rsp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 4104], rax
                                                                                        jmp   n102_lit_integer_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rsp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 4136], rax
                                                                                        jmp   n103_lit_integer_α
.Lx254_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 4144], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 4152], rax
                                                                                        jmp   n104_binop_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:
                        mov              rdi, qword ptr [rsp + 4128]
                        mov              rsi, qword ptr [rsp + 4136]
                        mov              rdx, qword ptr [rsp + 4144]
                        mov              rcx, qword ptr [rsp + 4152]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n106_var_α
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                                                                                        jmp   n105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
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
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 3912], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 3944], rax
                        .section         .rodata
.Lrkfn258:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 10
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n106_var_α
                                                                                        jmp   n106_var_α
n105_call_builtin_icon_β:
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rsp + 5184]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 5192]
                        mov              qword ptr [rsp + 3752], rax
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rsp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 3768], rax
                                                                                        jmp   n109_call_proc_staged_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "Amiga"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 3656], rax
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3744]
                        lea              rdx, [rsp + 3760]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx265_1
                        lea              rcx, [rip + .Lx265_3]
                        lea              rdx, [rip + .Lx265_4]
                                                                                        jmp   rax
.Lx265_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx265_2
.Lx265_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx265_2
.Lx265_1:
                        call             rt_faildescr@PLT
.Lx265_2:
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n108_var_α
                                                                                        jmp   n108_var_α
n109_call_proc_staged_β:
                                                                                        jmp   n108_var_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rsp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 3672], rax
                                                                                        jmp   n112_call_proc_staged_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "Acorn Archimedes"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 3560], rax
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx270_1
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_1:
                        call             rt_faildescr@PLT
.Lx270_2:
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n111_var_α
                                                                                        jmp   n111_var_α
n112_call_proc_staged_β:
                                                                                        jmp   n111_var_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rsp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 3576], rax
                                                                                        jmp   n115_call_proc_staged_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "Atari ST"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 3464], rax
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx275_1
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4]
                                                                                        jmp   rax
.Lx275_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_1:
                        call             rt_faildescr@PLT
.Lx275_2:
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n114_var_α
                                                                                        jmp   n114_var_α
n115_call_proc_staged_β:
                                                                                        jmp   n114_var_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rsp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 3480], rax
                                                                                        jmp   n118_call_proc_staged_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "CMS"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n117_var_α
                                                                                        jmp   n117_var_α
n118_call_proc_staged_β:
                                                                                        jmp   n117_var_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rsp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 3384], rax
                                                                                        jmp   n121_call_proc_staged_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "Macintosh"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 3272], rax
                                                                                        jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx285_1
                        lea              rcx, [rip + .Lx285_3]
                        lea              rdx, [rip + .Lx285_4]
                                                                                        jmp   rax
.Lx285_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_1:
                        call             rt_faildescr@PLT
.Lx285_2:
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n120_var_α
                                                                                        jmp   n120_var_α
n121_call_proc_staged_β:
                                                                                        jmp   n120_var_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rsp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n124_call_proc_staged_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "MS-DOS/386"
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [rsp + 5088]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 5096]
                        mov              qword ptr [rsp + 3176], rax
                                                                                        jmp   n125_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx290_1
                        lea              rcx, [rip + .Lx290_3]
                        lea              rdx, [rip + .Lx290_4]
                                                                                        jmp   rax
.Lx290_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx290_2
.Lx290_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx290_2
.Lx290_1:
                        call             rt_faildescr@PLT
.Lx290_2:
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n123_var_α
                                                                                        jmp   n123_var_α
n124_call_proc_staged_β:
                                                                                        jmp   n123_var_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rsp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 3192], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "MS-DOS"
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rsp + 5072]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 5080]
                        mov              qword ptr [rsp + 3080], rax
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx295_1
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_1:
                        call             rt_faildescr@PLT
.Lx295_2:
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n126_var_α
                                                                                        jmp   n126_var_α
n127_call_proc_staged_β:
                                                                                        jmp   n126_var_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rsp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n130_call_proc_staged_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "MVS"
#-----------------------------------------------------------------------------------------------------------------------
n129_var_α:
                        mov              rax, qword ptr [rsp + 5056]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 5064]
                        mov              qword ptr [rsp + 2984], rax
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx300_1
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4]
                                                                                        jmp   rax
.Lx300_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx300_2
.Lx300_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx300_2
.Lx300_1:
                        call             rt_faildescr@PLT
.Lx300_2:
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n129_var_α
                                                                                        jmp   n129_var_α
n130_call_proc_staged_β:
                                                                                        jmp   n129_var_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rsp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 3000], rax
                                                                                        jmp   n133_call_proc_staged_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "OS/2"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rsp + 5040]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 5048]
                        mov              qword ptr [rsp + 2888], rax
                                                                                        jmp   n134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx305_1
                        lea              rcx, [rip + .Lx305_3]
                        lea              rdx, [rip + .Lx305_4]
                                                                                        jmp   rax
.Lx305_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx305_2
.Lx305_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx305_2
.Lx305_1:
                        call             rt_faildescr@PLT
.Lx305_2:
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n132_var_α
                                                                                        jmp   n132_var_α
n133_call_proc_staged_β:
                                                                                        jmp   n132_var_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rsp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "PORT"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rsp + 2784], 6
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 2792], rax
                                                                                        jmp   n137_lit_string_α
.Lx307_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx309_1
                        lea              rcx, [rip + .Lx309_3]
                        lea              rdx, [rip + .Lx309_4]
                                                                                        jmp   rax
.Lx309_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx309_2
.Lx309_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx309_2
.Lx309_1:
                        call             rt_faildescr@PLT
.Lx309_2:
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n135_lit_integer_α
                                                                                        jmp   n135_lit_integer_α
n136_call_proc_staged_β:
                                                                                        jmp   n135_lit_integer_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rsp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n138_call_proc_staged_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "UNIX"
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
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
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 2696], rax
                                                                                        jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rsp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 2712], rax
                                                                                        jmp   n142_call_proc_staged_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "VMS"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 2600], rax
                                                                                        jmp   n143_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx319_1
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4]
                                                                                        jmp   rax
.Lx319_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_1:
                        call             rt_faildescr@PLT
.Lx319_2:
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n141_var_α
                                                                                        jmp   n141_var_α
n142_call_proc_staged_β:
                                                                                        jmp   n141_var_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        mov              qword ptr [rsp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 2616], rax
                                                                                        jmp   n145_call_proc_staged_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "compiled"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 2504], rax
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx324_1
                        lea              rcx, [rip + .Lx324_3]
                        lea              rdx, [rip + .Lx324_4]
                                                                                        jmp   rax
.Lx324_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx324_2
.Lx324_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx324_2
.Lx324_1:
                        call             rt_faildescr@PLT
.Lx324_2:
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n144_var_α
                                                                                        jmp   n144_var_α
n145_call_proc_staged_β:
                                                                                        jmp   n144_var_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rsp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 2520], rax
                                                                                        jmp   n148_call_proc_staged_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "interpreted"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rsp + 2400], 6
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 2408], rax
                                                                                        jmp   n149_lit_string_α
.Lx326_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx328_1
                        lea              rcx, [rip + .Lx328_3]
                        lea              rdx, [rip + .Lx328_4]
                                                                                        jmp   rax
.Lx328_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx328_2
.Lx328_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx328_2
.Lx328_1:
                        call             rt_faildescr@PLT
.Lx328_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n147_lit_integer_α
                                                                                        jmp   n147_lit_integer_α
n148_call_proc_staged_β:
                                                                                        jmp   n147_lit_integer_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rsp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 2424], rax
                                                                                        jmp   n150_call_proc_staged_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "Java"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
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
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 2296], rax
                                                                                        jmp   n152_lit_string_α
.Lx332_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rsp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 2312], rax
                                                                                        jmp   n153_lit_integer_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "ASCII"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rsp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n154_call_proc_staged_α
.Lx334_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rsp + 2288]
                        lea              rdx, [rsp + 2304]
                        lea              rcx, [rsp + 2320]
                        call             proc_precheck_dcα
                                                                                        jmp   .Lx336_2
.Lx336_2:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 2168], rax
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rsp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n158_lit_integer_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "EBCDIC"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 2056], rax
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:
                        mov              qword ptr [rsp + 2192], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 2200], rax
                                                                                        jmp   n161_call_proc_staged_α
.Lx342_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rsp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rsp + 2072], rax
                                                                                        jmp   n162_call_proc_staged_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "calling to Icon"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 1960], rax
                                                                                        jmp   n163_lit_string_α
.Lx344_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2176]
                        lea              rcx, [rsp + 2192]
                        call             proc_precheck_dcα
                                                                                        jmp   .Lx346_2
.Lx346_2:
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n157_var_α
                                                                                        jmp   n157_var_α
n161_call_proc_staged_β:
                                                                                        jmp   n157_var_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n162_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 2048]
                        lea              rdx, [rsp + 2064]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n160_lit_integer_α
                                                                                        jmp   n160_lit_integer_α
n162_call_proc_staged_β:
                                                                                        jmp   n160_lit_integer_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rsp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 1976], rax
                                                                                        jmp   n164_call_proc_staged_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "co-expressions"
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1952]
                        lea              rdx, [rsp + 1968]
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
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1864], rax
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rsp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 1880], rax
                                                                                        jmp   n168_call_proc_staged_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "direct execution"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1768], rax
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1856]
                        lea              rdx, [rsp + 1872]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx358_1
                        lea              rcx, [rip + .Lx358_3]
                        lea              rdx, [rip + .Lx358_4]
                                                                                        jmp   rax
.Lx358_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx358_2
.Lx358_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx358_2
.Lx358_1:
                        call             rt_faildescr@PLT
.Lx358_2:
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n167_var_α
                                                                                        jmp   n167_var_α
n168_call_proc_staged_β:
                                                                                        jmp   n167_var_α
.Lx358_0:
                        .quad            .Lx358_0_s
.Lx358_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rsp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1784], rax
                                                                                        jmp   n171_call_proc_staged_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "event monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 1672], rax
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1760]
                        lea              rdx, [rsp + 1776]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx363_1
                        lea              rcx, [rip + .Lx363_3]
                        lea              rdx, [rip + .Lx363_4]
                                                                                        jmp   rax
.Lx363_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx363_2
.Lx363_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx363_2
.Lx363_1:
                        call             rt_faildescr@PLT
.Lx363_2:
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n170_var_α
                                                                                        jmp   n170_var_α
n171_call_proc_staged_β:
                                                                                        jmp   n170_var_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rsp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1688], rax
                                                                                        jmp   n174_call_proc_staged_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "executable images"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1576], rax
                                                                                        jmp   n175_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1680]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx368_1
                        lea              rcx, [rip + .Lx368_3]
                        lea              rdx, [rip + .Lx368_4]
                                                                                        jmp   rax
.Lx368_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx368_2
.Lx368_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx368_2
.Lx368_1:
                        call             rt_faildescr@PLT
.Lx368_2:
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n173_var_α
                                                                                        jmp   n173_var_α
n174_call_proc_staged_β:
                                                                                        jmp   n173_var_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rsp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 1592], rax
                                                                                        jmp   n177_call_proc_staged_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "external functions"
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 1480], rax
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1568]
                        lea              rdx, [rsp + 1584]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx373_1
                        lea              rcx, [rip + .Lx373_3]
                        lea              rdx, [rip + .Lx373_4]
                                                                                        jmp   rax
.Lx373_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx373_2
.Lx373_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx373_2
.Lx373_1:
                        call             rt_faildescr@PLT
.Lx373_2:
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n176_var_α
                                                                                        jmp   n176_var_α
n177_call_proc_staged_β:
                                                                                        jmp   n176_var_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rsp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 1496], rax
                                                                                        jmp   n180_call_proc_staged_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "keyboard functions"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rsp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 1384], rax
                                                                                        jmp   n181_lit_string_α
.Lx375_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1472]
                        lea              rdx, [rsp + 1488]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx377_1
                        lea              rcx, [rip + .Lx377_3]
                        lea              rdx, [rip + .Lx377_4]
                                                                                        jmp   rax
.Lx377_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx377_2
.Lx377_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx377_2
.Lx377_1:
                        call             rt_faildescr@PLT
.Lx377_2:
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_integer_α
                                                                                        jmp   n179_lit_integer_α
n180_call_proc_staged_β:
                                                                                        jmp   n179_lit_integer_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rsp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rsp + 1400], rax
                                                                                        jmp   n182_call_proc_staged_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1392]
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
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 1288], rax
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rsp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 1304], rax
                                                                                        jmp   n186_call_proc_staged_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "memory monitoring"
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 1192], rax
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx387_1
                        lea              rcx, [rip + .Lx387_3]
                        lea              rdx, [rip + .Lx387_4]
                                                                                        jmp   rax
.Lx387_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx387_2
.Lx387_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx387_2
.Lx387_1:
                        call             rt_faildescr@PLT
.Lx387_2:
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n185_var_α
                                                                                        jmp   n185_var_α
n186_call_proc_staged_β:
                                                                                        jmp   n185_var_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rsp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 1208], rax
                                                                                        jmp   n189_call_proc_staged_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "multiple programs"
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 1096], rax
                                                                                        jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1200]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx392_1
                        lea              rcx, [rip + .Lx392_3]
                        lea              rdx, [rip + .Lx392_4]
                                                                                        jmp   rax
.Lx392_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx392_2
.Lx392_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx392_2
.Lx392_1:
                        call             rt_faildescr@PLT
.Lx392_2:
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n188_var_α
                                                                                        jmp   n188_var_α
n189_call_proc_staged_β:
                                                                                        jmp   n188_var_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rsp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1112], rax
                                                                                        jmp   n192_call_proc_staged_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "multiple regions"
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rsp + 992], 6
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 1000], rax
                                                                                        jmp   n193_lit_string_α
.Lx394_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n192_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 1088]
                        lea              rdx, [rsp + 1104]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx396_1
                        lea              rcx, [rip + .Lx396_3]
                        lea              rdx, [rip + .Lx396_4]
                                                                                        jmp   rax
.Lx396_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx396_2
.Lx396_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx396_2
.Lx396_1:
                        call             rt_faildescr@PLT
.Lx396_2:
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n191_lit_integer_α
                                                                                        jmp   n191_lit_integer_α
n192_call_proc_staged_β:
                                                                                        jmp   n191_lit_integer_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rsp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 1016], rax
                                                                                        jmp   n194_call_proc_staged_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "pipes"
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
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
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 904], rax
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rsp + 912], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 920], rax
                                                                                        jmp   n198_call_proc_staged_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "record I/O"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n199_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 896]
                        lea              rdx, [rsp + 912]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx406_1
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4]
                                                                                        jmp   rax
.Lx406_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx406_2
.Lx406_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx406_2
.Lx406_1:
                        call             rt_faildescr@PLT
.Lx406_2:
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n197_var_α
                                                                                        jmp   n197_var_α
n198_call_proc_staged_β:
                                                                                        jmp   n197_var_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rsp + 816], 1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n201_call_proc_staged_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "string invocation"
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rsp + 704], 6
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n202_lit_string_α
.Lx408_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n201_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 816]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx410_1
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_1:
                        call             rt_faildescr@PLT
.Lx410_2:
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n200_lit_integer_α
                                                                                        jmp   n200_lit_integer_α
n201_call_proc_staged_β:
                                                                                        jmp   n200_lit_integer_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rsp + 720], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n203_call_proc_staged_α
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
                        .string          "system function"
#-----------------------------------------------------------------------------------------------------------------------
n203_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 704]
                        lea              rdx, [rsp + 720]
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
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rsp + 624], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 632], rax
                                                                                        jmp   n207_call_proc_staged_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "visualization support"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 520], rax
                                                                                        jmp   n208_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 608]
                        lea              rdx, [rsp + 624]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx420_1
                        lea              rcx, [rip + .Lx420_3]
                        lea              rdx, [rip + .Lx420_4]
                                                                                        jmp   rax
.Lx420_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx420_2
.Lx420_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx420_2
.Lx420_1:
                        call             rt_faildescr@PLT
.Lx420_2:
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n206_var_α
                                                                                        jmp   n206_var_α
n207_call_proc_staged_β:
                                                                                        jmp   n206_var_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rsp + 528], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rsp + 536], rax
                                                                                        jmp   n210_call_proc_staged_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "window functions"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n211_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 528]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx425_1
                        lea              rcx, [rip + .Lx425_3]
                        lea              rdx, [rip + .Lx425_4]
                                                                                        jmp   rax
.Lx425_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx425_2
.Lx425_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx425_2
.Lx425_1:
                        call             rt_faildescr@PLT
.Lx425_2:
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n209_var_α
                                                                                        jmp   n209_var_α
n210_call_proc_staged_β:
                                                                                        jmp   n209_var_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:
                        mov              qword ptr [rsp + 432], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n213_call_proc_staged_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "X Windows"
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 328], rax
                                                                                        jmp   n214_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 416]
                        lea              rdx, [rsp + 432]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx430_1
                        lea              rcx, [rip + .Lx430_3]
                        lea              rdx, [rip + .Lx430_4]
                                                                                        jmp   rax
.Lx430_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx430_2
.Lx430_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx430_2
.Lx430_1:
                        call             rt_faildescr@PLT
.Lx430_2:
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n212_var_α
                                                                                        jmp   n212_var_α
n213_call_proc_staged_β:
                                                                                        jmp   n212_var_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rsp + 336], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rsp + 344], rax
                                                                                        jmp   n216_call_proc_staged_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "Presentation Manager"
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:
                        mov              rax, qword ptr [rsp + 4720]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 4728]
                        mov              qword ptr [rsp + 232], rax
                                                                                        jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 336]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx435_1
                        lea              rcx, [rip + .Lx435_3]
                        lea              rdx, [rip + .Lx435_4]
                                                                                        jmp   rax
.Lx435_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx435_2
.Lx435_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx435_2
.Lx435_1:
                        call             rt_faildescr@PLT
.Lx435_2:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n215_var_α
                                                                                        jmp   n215_var_α
n216_call_proc_staged_β:
                                                                                        jmp   n215_var_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rsp + 240], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n219_call_proc_staged_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "Archimedes extensions"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx440_1
                        lea              rcx, [rip + .Lx440_3]
                        lea              rdx, [rip + .Lx440_4]
                                                                                        jmp   rax
.Lx440_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx440_2
.Lx440_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx440_2
.Lx440_1:
                        call             rt_faildescr@PLT
.Lx440_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n218_var_α
                                                                                        jmp   n218_var_α
n219_call_proc_staged_β:
                                                                                        jmp   n218_var_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "precheck"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rsp + 144], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n222_call_proc_staged_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "MS-DOS extensions"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n223_call_builtin_icon_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n222_call_proc_staged_α:
                        mov              edi, 0
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        call             rt_proc_call_open_det2@PLT
                        test             rax, rax
                                                                                        je    .Lx444_1
                        lea              rcx, [rip + .Lx444_3]
                        lea              rdx, [rip + .Lx444_4]
                                                                                        jmp   rax
.Lx444_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx444_2
.Lx444_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx444_2
.Lx444_1:
                        call             rt_faildescr@PLT
.Lx444_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n221_lit_string_α
                                                                                        jmp   n221_lit_string_α
n222_call_proc_staged_β:
                                                                                        jmp   n221_lit_string_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "precheck"
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
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n223_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 5208
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 5208
                        ret
                        .section         .note.GNU-stack,"",@progbits
