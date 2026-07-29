                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_optest_α
proc_optest_α:
                        .global          proc_optest_α
                        .global          proc_optest_β
                        .global          proc_optest_γ
                        .global          proc_optest_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_optest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n2_var_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n4_var_α
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n6_disjunction_α
.Lx21_0:
                        .quad            .Lx21_0_s
.Lx21_0_s:
                        .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n8_var_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx23_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx23_0:
                        cmp              eax, 1
                                                                                        jne   .Lx23_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx23_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n9_call_value_β
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n10_lit_string_α
                                                                                        jmp   proc_optest_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rbp + 80]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   proc_optest_ω
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n11_var_α
n8_var_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_call_value_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 392], rax
                        mov              qword ptr [rbp + 400], 0
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        lea              rdx, [rbp + 368]
                        mov              ecx, 2
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx29_7
                        lea              rcx, [rip + .Lx29_3]
                        lea              rdx, [rip + .Lx29_4]
                                                                                        jmp   rax
.Lx29_3:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx29_5
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx29_2
.Lx29_4:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx29_6
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx29_2
.Lx29_7:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        lea              rdx, [rbp + 368]
                        mov              ecx, 2
                        lea              r8, [rbp + 400]
                        call             rt_call_value_gen_h@PLT
.Lx29_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n9_call_value_β:
                        mov              rax, qword ptr [rbp + 400]
                        cmp              rax, 1
                                                                                        jne   .Lx29_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 408]
                                                                                        jmp   qword ptr [rsp]
.Lx29_8:
                        lea              rdi, [rbp + 400]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n6_disjunction_as
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n6_disjunction_as
n10_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n9_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_β:
                                                                                        jmp   proc_optest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 504]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_dcα:
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx35_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx35_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 496
                        mov              edx, 496
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_optest_α_body
.Lx35_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx35_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
                        .global          proc_foo_α
                        .global          proc_foo_β
                        .global          proc_foo_γ
                        .global          proc_foo_ω
                        sub              rsp, 64
                        mov              [rsp + 40], rcx
                        mov              [rsp + 48], rdx
                        mov              rdi, rsp
                        mov              esi, 32
                        mov              edx, 32
                        call             rt_jmp_frame_lexprep2@PLT
proc_foo_α_body:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 40]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rax, [rsp + 48]
                        add              rsp, 64
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 80
                        mov              qword ptr [rsp + 56], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 32], r11
                        lea              rax, [rip + .Lx36_2]
                        mov              qword ptr [rsp + 40], rax
                        lea              rax, [rip + .Lx36_3]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 32
                        mov              edx, 32
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx36_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -64
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx36_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -64
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "optest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_optest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_optest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 32
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_foo_dcα]
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
                        sub              rsp, 3000
                        mov              rdi, rsp
                        mov              ecx, 3000
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2992], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n39_keyword_icon_gen_α
n37_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx178_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n38_lit_integer_α
.Lx178_0:
                                                                                        jmp   n38_lit_integer_α
n37_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n38_lit_integer_α
n37_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n41_assign_α
.Lx179_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 2880], 0
.Lx180_1:
                        mov              rdi, qword ptr [rip + .Lx180_0]
                        mov              rsi, qword ptr [rbp + 2880]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n80_var_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        mov              rax, qword ptr [rbp + 2880]
                        add              rax, 1
                        mov              qword ptr [rbp + 2880], rax
                                                                                        jmp   n42_lit_string_α
n39_keyword_icon_gen_β:
                                                                                        jmp   .Lx180_1
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn182:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_integer_α
                                                                                        jmp   n37_disjunction_as
n40_call_builtin_icon_β:
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n44_binop_test_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n45_assign_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "2222222222"
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        mov              rdx, qword ptr [rbp + 2896]
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n39_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n47_assign_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "3333333333"
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n49_assign_α
.Lx190_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n50_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n50_disjunction_α:
                        mov              qword ptr [rbp + 2160], 0
                        mov              qword ptr [rbp + 2168], 0
                        mov              dword ptr [rbp + 2176], 0
                                                                                        jmp   n52_lit_string_α
n50_disjunction_as:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        jne   .Lx193_0
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_0:
                        cmp              eax, 1
                                                                                        jne   .Lx193_1
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_1:
                        cmp              eax, 2
                                                                                        jne   .Lx193_2
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_2:
                        cmp              eax, 3
                                                                                        jne   .Lx193_3
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_3:
                        cmp              eax, 4
                                                                                        jne   .Lx193_4
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_4:
                        cmp              eax, 5
                                                                                        jne   .Lx193_5
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_5:
                        cmp              eax, 6
                                                                                        jne   .Lx193_6
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_6:
                        cmp              eax, 7
                                                                                        jne   .Lx193_7
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_7:
                        cmp              eax, 8
                                                                                        jne   .Lx193_8
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_8:
                        cmp              eax, 9
                                                                                        jne   .Lx193_9
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n51_disjunction_α
.Lx193_9:
                                                                                        jmp   n51_disjunction_α
n50_disjunction_β:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        je    n50_disjunction_af
                        cmp              eax, 1
                                                                                        je    n50_disjunction_af
                        cmp              eax, 2
                                                                                        je    n50_disjunction_af
                        cmp              eax, 3
                                                                                        je    n50_disjunction_af
                        cmp              eax, 4
                                                                                        je    n50_disjunction_af
                        cmp              eax, 5
                                                                                        je    n50_disjunction_af
                        cmp              eax, 6
                                                                                        je    n50_disjunction_af
                        cmp              eax, 7
                                                                                        je    n50_disjunction_af
                        cmp              eax, 8
                                                                                        je    n50_disjunction_af
                                                                                        jmp   n50_disjunction_af
n50_disjunction_af:
                        add              dword ptr [rbp + 2176], 1
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 1
                                                                                        je    n53_lit_string_α
                        cmp              eax, 2
                                                                                        je    n54_lit_string_α
                        cmp              eax, 3
                                                                                        je    n55_lit_string_α
                        cmp              eax, 4
                                                                                        je    n56_lit_string_α
                        cmp              eax, 5
                                                                                        je    n57_lit_string_α
                        cmp              eax, 6
                                                                                        je    n58_lit_string_α
                        cmp              eax, 7
                                                                                        je    n59_lit_string_α
                        cmp              eax, 8
                                                                                        je    n60_lit_string_α
                        cmp              eax, 9
                                                                                        je    n61_lit_string_α
                                                                                        jmp   n81_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n63_var_α
n51_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx195_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n62_disjunction_α
.Lx195_0:
                        cmp              eax, 1
                                                                                        jne   .Lx195_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n62_disjunction_α
.Lx195_1:
                        cmp              eax, 2
                                                                                        jne   .Lx195_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n62_disjunction_α
.Lx195_2:
                        cmp              eax, 3
                                                                                        jne   .Lx195_3
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n62_disjunction_α
.Lx195_3:
                                                                                        jmp   n62_disjunction_α
n51_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n51_disjunction_af
                        cmp              eax, 1
                                                                                        je    n51_disjunction_af
                        cmp              eax, 2
                                                                                        je    n51_disjunction_af
                                                                                        jmp   n51_disjunction_af
n51_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n64_var_α
                        cmp              eax, 2
                                                                                        je    n65_var_α
                        cmp              eax, 3
                                                                                        je    n66_var_α
                                                                                        jmp   n50_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n50_disjunction_as
n52_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n50_disjunction_as
n53_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n50_disjunction_as
n54_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n50_disjunction_as
n55_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n50_disjunction_as
n56_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n50_disjunction_as
n57_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n50_disjunction_as
n58_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n50_disjunction_as
n59_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n50_disjunction_as
n60_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n50_disjunction_as
n61_lit_string_β:
                                                                                        jmp   n50_disjunction_af
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0
                                                                                        jmp   n70_var_α
n62_disjunction_as:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        jne   .Lx207_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx207_0:
                        cmp              eax, 1
                                                                                        jne   .Lx207_1
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx207_1:
                        cmp              eax, 2
                                                                                        jne   .Lx207_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx207_2:
                        cmp              eax, 3
                                                                                        jne   .Lx207_3
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx207_3:
                                                                                        jmp   n69_call_proc_staged_α
n62_disjunction_β:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        je    n62_disjunction_af
                        cmp              eax, 1
                                                                                        je    n62_disjunction_af
                        cmp              eax, 2
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_af
n62_disjunction_af:
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1
                                                                                        je    n71_var_α
                        cmp              eax, 2
                                                                                        je    n72_var_α
                        cmp              eax, 3
                                                                                        je    n73_var_α
                                                                                        jmp   n51_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n51_disjunction_as
n63_var_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n76_op75_α
n64_var_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n51_disjunction_as
n65_var_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n77_op75_α
n66_var_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_unop_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n51_disjunction_as
n67_unop_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_unop_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n51_disjunction_as
n68_unop_β:
                                                                                        jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2352]
                        lea              rcx, [rbp + 2512]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx219_2
.Lx219_2:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n62_disjunction_β
                                                                                        jmp   n62_disjunction_β
n69_call_proc_staged_β:
                                                                                        jmp   n62_disjunction_β
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n62_disjunction_as
n70_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n78_op75_α
n71_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n62_disjunction_as
n72_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n79_op75_α
n73_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_unop_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n62_disjunction_as
n74_unop_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_unop_α:
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n62_disjunction_as
n75_unop_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_op75_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 7
                                                                                        je    .Lx231_1
                        cmp              eax, 6
                                                                                        jne   .Lx231_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 6
                                                                                        jne   .Lx231_0
.Lx231_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n67_unop_α
.Lx231_0:
                        lea              rdi, [rbp + 2928]
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 2416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n67_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx233_1
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx233_0
.Lx233_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n68_unop_α
.Lx233_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 2480]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n68_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op75_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 7
                                                                                        je    .Lx235_1
                        cmp              eax, 6
                                                                                        jne   .Lx235_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 6
                                                                                        jne   .Lx235_0
.Lx235_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n74_unop_α
.Lx235_0:
                        lea              rdi, [rbp + 2928]
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 2576]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n74_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx237_1
                        cmp              eax, 6
                                                                                        jne   .Lx237_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx237_0
.Lx237_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n75_unop_α
.Lx237_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 2640]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                                                                                        jmp   n82_lit_string_α
n80_var_β:
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n81_disjunction_α:
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0
                                                                                        jmp   n85_lit_string_α
n81_disjunction_as:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        jne   .Lx240_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_0:
                        cmp              eax, 1
                                                                                        jne   .Lx240_1
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_1:
                        cmp              eax, 2
                                                                                        jne   .Lx240_2
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_2:
                        cmp              eax, 3
                                                                                        jne   .Lx240_3
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_3:
                        cmp              eax, 4
                                                                                        jne   .Lx240_4
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_4:
                        cmp              eax, 5
                                                                                        jne   .Lx240_5
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_5:
                        cmp              eax, 6
                                                                                        jne   .Lx240_6
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_6:
                        cmp              eax, 7
                                                                                        jne   .Lx240_7
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_7:
                        cmp              eax, 8
                                                                                        jne   .Lx240_8
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_8:
                        cmp              eax, 9
                                                                                        jne   .Lx240_9
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n83_disjunction_α
.Lx240_9:
                                                                                        jmp   n83_disjunction_α
n81_disjunction_β:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        je    n81_disjunction_af
                        cmp              eax, 1
                                                                                        je    n81_disjunction_af
                        cmp              eax, 2
                                                                                        je    n81_disjunction_af
                        cmp              eax, 3
                                                                                        je    n81_disjunction_af
                        cmp              eax, 4
                                                                                        je    n81_disjunction_af
                        cmp              eax, 5
                                                                                        je    n81_disjunction_af
                        cmp              eax, 6
                                                                                        je    n81_disjunction_af
                        cmp              eax, 7
                                                                                        je    n81_disjunction_af
                        cmp              eax, 8
                                                                                        je    n81_disjunction_af
                                                                                        jmp   n81_disjunction_af
n81_disjunction_af:
                        add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 1
                                                                                        je    n86_lit_string_α
                        cmp              eax, 2
                                                                                        je    n87_lit_string_α
                        cmp              eax, 3
                                                                                        je    n88_lit_string_α
                        cmp              eax, 4
                                                                                        je    n89_lit_string_α
                        cmp              eax, 5
                                                                                        je    n90_lit_string_α
                        cmp              eax, 6
                                                                                        je    n91_lit_string_α
                        cmp              eax, 7
                                                                                        je    n92_lit_string_α
                        cmp              eax, 8
                                                                                        je    n93_lit_string_α
                        cmp              eax, 9
                                                                                        je    n94_lit_string_α
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "large integers not supported"
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              dword ptr [rbp + 1872], 0
                                                                                        jmp   n96_var_α
n83_disjunction_as:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        jne   .Lx243_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n95_disjunction_α
.Lx243_0:
                        cmp              eax, 1
                                                                                        jne   .Lx243_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n95_disjunction_α
.Lx243_1:
                        cmp              eax, 2
                                                                                        jne   .Lx243_2
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n95_disjunction_α
.Lx243_2:
                                                                                        jmp   n95_disjunction_α
n83_disjunction_β:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        je    n83_disjunction_af
                        cmp              eax, 1
                                                                                        je    n83_disjunction_af
                                                                                        jmp   n83_disjunction_af
n83_disjunction_af:
                        add              dword ptr [rbp + 1872], 1
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 1
                                                                                        je    n97_var_α
                        cmp              eax, 2
                                                                                        je    n98_var_α
                                                                                        jmp   n81_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n100_disjunction_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n81_disjunction_as
n85_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n81_disjunction_as
n86_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n81_disjunction_as
n87_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n81_disjunction_as
n88_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n81_disjunction_as
n89_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n81_disjunction_as
n90_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n81_disjunction_as
n91_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n81_disjunction_as
n92_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n81_disjunction_as
n93_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n81_disjunction_as
n94_lit_string_β:
                                                                                        jmp   n81_disjunction_af
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n95_disjunction_α:
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              dword ptr [rbp + 1984], 0
                                                                                        jmp   n102_var_α
n95_disjunction_as:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        jne   .Lx256_0
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n101_call_proc_staged_α
.Lx256_0:
                        cmp              eax, 1
                                                                                        jne   .Lx256_1
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n101_call_proc_staged_α
.Lx256_1:
                        cmp              eax, 2
                                                                                        jne   .Lx256_2
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n101_call_proc_staged_α
.Lx256_2:
                                                                                        jmp   n101_call_proc_staged_α
n95_disjunction_β:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        je    n95_disjunction_af
                        cmp              eax, 1
                                                                                        je    n95_disjunction_af
                                                                                        jmp   n95_disjunction_af
n95_disjunction_af:
                        add              dword ptr [rbp + 1984], 1
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 1
                                                                                        je    n103_var_α
                        cmp              eax, 2
                                                                                        je    n104_var_α
                                                                                        jmp   n83_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n83_disjunction_as
n96_var_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n83_disjunction_as
n97_var_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n106_op75_α
n98_var_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_unop_α:
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n83_disjunction_as
n99_unop_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n100_disjunction_α:
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              dword ptr [rbp + 1376], 0
                                                                                        jmp   n109_var_α
n100_disjunction_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        jne   .Lx265_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n107_disjunction_α
.Lx265_0:
                        cmp              eax, 1
                                                                                        jne   .Lx265_1
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n107_disjunction_α
.Lx265_1:
                        cmp              eax, 2
                                                                                        jne   .Lx265_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n107_disjunction_α
.Lx265_2:
                        cmp              eax, 3
                                                                                        jne   .Lx265_3
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n107_disjunction_α
.Lx265_3:
                                                                                        jmp   n107_disjunction_α
n100_disjunction_β:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        je    n100_disjunction_af
                        cmp              eax, 1
                                                                                        je    n100_disjunction_af
                        cmp              eax, 2
                                                                                        je    n100_disjunction_af
                                                                                        jmp   n100_disjunction_af
n100_disjunction_af:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 1
                                                                                        je    n110_var_α
                        cmp              eax, 2
                                                                                        je    n111_var_α
                        cmp              eax, 3
                                                                                        je    n112_var_α
                                                                                        jmp   n108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        lea              rsi, [rbp + 1664]
                        lea              rdx, [rbp + 1856]
                        lea              rcx, [rbp + 1968]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx267_2
.Lx267_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n95_disjunction_β
                                                                                        jmp   n95_disjunction_β
n101_call_proc_staged_β:
                                                                                        jmp   n95_disjunction_β
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n95_disjunction_as
n102_var_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n95_disjunction_as
n103_var_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n115_op75_α
n104_var_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_unop_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n95_disjunction_as
n105_unop_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n106_op75_α:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 7
                                                                                        je    .Lx276_1
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
.Lx276_1:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n99_unop_α
.Lx276_0:
                        lea              rdi, [rbp + 2944]
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 1936]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n99_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_disjunction_α:
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0
                                                                                        jmp   n117_lit_integer_α
n107_disjunction_as:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        jne   .Lx278_0
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n116_call_proc_staged_α
.Lx278_0:
                        cmp              eax, 1
                                                                                        jne   .Lx278_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n116_call_proc_staged_α
.Lx278_1:
                                                                                        jmp   n116_call_proc_staged_α
n107_disjunction_β:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0
                                                                                        je    n107_disjunction_af
                                                                                        jmp   n107_disjunction_af
n107_disjunction_af:
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 1
                                                                                        je    n118_lit_integer_α
                                                                                        jmp   n100_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n119_disjunction_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n100_disjunction_as
n109_var_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n120_op75_α
n110_var_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n100_disjunction_as
n111_var_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n121_op75_α
n112_var_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n113_unop_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n100_disjunction_as
n113_unop_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n100_disjunction_as
n114_unop_β:
                                                                                        jmp   n100_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n115_op75_α:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 7
                                                                                        je    .Lx291_1
                        cmp              eax, 6
                                                                                        jne   .Lx291_0
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 6
                                                                                        jne   .Lx291_0
.Lx291_1:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n105_unop_α
.Lx291_0:
                        lea              rdi, [rbp + 2976]
                        lea              rsi, [rbp + 2976]
                        lea              rdx, [rbp + 2048]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n105_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        lea              rsi, [rbp + 1344]
                        lea              rdx, [rbp + 1360]
                        lea              rcx, [rbp + 1520]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx293_2
.Lx293_2:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n107_disjunction_β
                                                                                        jmp   n107_disjunction_β
n116_call_proc_staged_β:
                                                                                        jmp   n107_disjunction_β
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n107_disjunction_as
n117_lit_integer_β:
                                                                                        jmp   n107_disjunction_af
.Lx294_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n107_disjunction_as
n118_lit_integer_β:
                                                                                        jmp   n107_disjunction_af
.Lx295_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n119_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n124_lit_integer_α
n119_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx297_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n122_disjunction_α
.Lx297_0:
                        cmp              eax, 1
                                                                                        jne   .Lx297_1
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n122_disjunction_α
.Lx297_1:
                                                                                        jmp   n122_disjunction_α
n119_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n119_disjunction_af
                                                                                        jmp   n119_disjunction_af
n119_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n125_lit_integer_α
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op75_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 7
                                                                                        je    .Lx299_1
                        cmp              eax, 6
                                                                                        jne   .Lx299_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 6
                                                                                        jne   .Lx299_0
.Lx299_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n113_unop_α
.Lx299_0:
                        lea              rdi, [rbp + 2928]
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 1424]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n113_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx301_1
                        cmp              eax, 6
                                                                                        jne   .Lx301_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx301_0
.Lx301_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n114_unop_α
.Lx301_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 1488]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n114_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n122_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n127_lit_integer_α
n122_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx303_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n126_call_proc_staged_α
.Lx303_0:
                        cmp              eax, 1
                                                                                        jne   .Lx303_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n126_call_proc_staged_α
.Lx303_1:
                                                                                        jmp   n126_call_proc_staged_α
n122_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n122_disjunction_af
                                                                                        jmp   n122_disjunction_af
n122_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n128_lit_integer_α
                                                                                        jmp   n119_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n129_disjunction_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "ishift"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n119_disjunction_as
n124_lit_integer_β:
                                                                                        jmp   n119_disjunction_af
.Lx305_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n119_disjunction_as
n125_lit_integer_β:
                                                                                        jmp   n119_disjunction_af
.Lx306_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1136]
                        lea              rcx, [rbp + 1200]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx308_2
.Lx308_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n122_disjunction_β
                                                                                        jmp   n122_disjunction_β
n126_call_proc_staged_β:
                                                                                        jmp   n122_disjunction_β
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n122_disjunction_as
n127_lit_integer_β:
                                                                                        jmp   n122_disjunction_af
.Lx309_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n122_disjunction_as
n128_lit_integer_β:
                                                                                        jmp   n122_disjunction_af
.Lx310_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n132_var_α
n129_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx312_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n130_disjunction_α
.Lx312_0:
                        cmp              eax, 1
                                                                                        jne   .Lx312_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n130_disjunction_α
.Lx312_1:
                        cmp              eax, 2
                                                                                        jne   .Lx312_2
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n130_disjunction_α
.Lx312_2:
                        cmp              eax, 3
                                                                                        jne   .Lx312_3
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n130_disjunction_α
.Lx312_3:
                        cmp              eax, 4
                                                                                        jne   .Lx312_4
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n130_disjunction_α
.Lx312_4:
                                                                                        jmp   n130_disjunction_α
n129_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n129_disjunction_af
                        cmp              eax, 1
                                                                                        je    n129_disjunction_af
                        cmp              eax, 2
                                                                                        je    n129_disjunction_af
                        cmp              eax, 3
                                                                                        je    n129_disjunction_af
                                                                                        jmp   n129_disjunction_af
n129_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n133_var_α
                        cmp              eax, 2
                                                                                        je    n134_var_α
                        cmp              eax, 3
                                                                                        je    n135_var_α
                        cmp              eax, 4
                                                                                        je    n136_var_α
                                                                                        jmp   n131_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n130_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n140_lit_integer_α
n130_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx314_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx314_0:
                        cmp              eax, 1
                                                                                        jne   .Lx314_1
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx314_1:
                        cmp              eax, 2
                                                                                        jne   .Lx314_2
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx314_2:
                        cmp              eax, 3
                                                                                        jne   .Lx314_3
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx314_3:
                                                                                        jmp   n139_call_proc_staged_α
n130_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        je    n130_disjunction_af
                        cmp              eax, 1
                                                                                        je    n130_disjunction_af
                        cmp              eax, 2
                                                                                        je    n130_disjunction_af
                                                                                        jmp   n130_disjunction_af
n130_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1
                                                                                        je    n141_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n142_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n143_lit_integer_α
                                                                                        jmp   n129_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n131_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n145_lit_integer_α
n131_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx316_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n144_assign_α
.Lx316_0:
                        cmp              eax, 1
                                                                                        jne   .Lx316_1
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n144_assign_α
.Lx316_1:
                        cmp              eax, 2
                                                                                        jne   .Lx316_2
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n144_assign_α
.Lx316_2:
                        cmp              eax, 3
                                                                                        jne   .Lx316_3
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n144_assign_α
.Lx316_3:
                                                                                        jmp   n144_assign_α
n131_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n131_disjunction_af
                        cmp              eax, 1
                                                                                        je    n131_disjunction_af
                        cmp              eax, 2
                                                                                        je    n131_disjunction_af
                                                                                        jmp   n131_disjunction_af
n131_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n146_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n147_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n148_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n129_disjunction_as
n132_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n149_op75_α
n133_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n129_disjunction_as
n134_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n150_op75_α
n135_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n129_disjunction_as
n136_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n137_unop_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n129_disjunction_as
n137_unop_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_unop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n129_disjunction_as
n138_unop_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 768]
                        lea              rcx, [rbp + 944]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx330_2
.Lx330_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n130_disjunction_β
                                                                                        jmp   n130_disjunction_β
n139_call_proc_staged_β:
                                                                                        jmp   n130_disjunction_β
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n130_disjunction_as
n140_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx331_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n130_disjunction_as
n141_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx332_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n130_disjunction_as
n142_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx333_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n130_disjunction_as
n143_lit_integer_β:
                                                                                        jmp   n130_disjunction_af
.Lx334_0:
                        .quad            18446744073709551577
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n151_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n131_disjunction_as
n145_lit_integer_β:
                                                                                        jmp   n131_disjunction_af
.Lx336_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n131_disjunction_as
n146_lit_integer_β:
                                                                                        jmp   n131_disjunction_af
.Lx337_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n131_disjunction_as
n147_lit_integer_β:
                                                                                        jmp   n131_disjunction_af
.Lx338_0:
                        .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n131_disjunction_as
n148_lit_integer_β:
                                                                                        jmp   n131_disjunction_af
.Lx339_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n149_op75_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 7
                                                                                        je    .Lx341_1
                        cmp              eax, 6
                                                                                        jne   .Lx341_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 6
                                                                                        jne   .Lx341_0
.Lx341_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n137_unop_α
.Lx341_0:
                        lea              rdi, [rbp + 2928]
                        lea              rsi, [rbp + 2928]
                        lea              rdx, [rbp + 832]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n137_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op75_α:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 7
                                                                                        je    .Lx343_1
                        cmp              eax, 6
                                                                                        jne   .Lx343_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 6
                                                                                        jne   .Lx343_0
.Lx343_1:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n138_unop_α
.Lx343_0:
                        lea              rdi, [rbp + 2944]
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 896]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n138_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n152_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n153_var_α
.Lx346_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n154_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n154_op75_α:
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 7
                                                                                        je    .Lx350_1
                        cmp              eax, 6
                                                                                        jne   .Lx350_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx350_0
.Lx350_1:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n156_binop_α
.Lx350_0:
                        lea              rdi, [rbp + 2912]
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 624]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n156_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n157_var_α
.Lx351_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n158_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n159_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn356:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn356]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n155_lit_integer_α
                                                                                        jmp   n155_lit_integer_α
n158_call_builtin_icon_β:
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op75_α:
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 7
                                                                                        je    .Lx358_1
                        cmp              eax, 6
                                                                                        jne   .Lx358_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx358_0
.Lx358_1:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n161_binop_α
.Lx358_0:
                        lea              rdi, [rbp + 2912]
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 384]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n161_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n162_var_α
.Lx359_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n161_binop_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n160_lit_integer_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n164_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n166_binop_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n164_op75_α:
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 7
                                                                                        je    .Lx365_1
                        cmp              eax, 6
                                                                                        jne   .Lx365_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx365_0
.Lx365_1:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n167_binop_α
.Lx365_0:
                        lea              rdi, [rbp + 2912]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n167_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n165_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n131_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n168_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n165_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n170_var_α
.Lx370_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        call             proc_foo_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n165_unmark_α
                                                                                        jmp   n171_conjunction_α
n169_call_proc_staged_β:
                                                                                        jmp   n165_unmark_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n172_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n171_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n165_unmark_α
n171_conjunction_β:
                                                                                        jmp   n165_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n172_op75_α:
                        mov              eax, dword ptr [rbp + 2912]
                        cmp              eax, 7
                                                                                        je    .Lx377_1
                        cmp              eax, 6
                                                                                        jne   .Lx377_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 6
                                                                                        jne   .Lx377_0
.Lx377_1:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n173_binop_α
.Lx377_0:
                        lea              rdi, [rbp + 2912]
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 512]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n173_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n173_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n160_lit_integer_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n174_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn380:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n160_lit_integer_α
                                                                                        jmp   n175_binop_α
n174_call_builtin_icon_β:
                                                                                        jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n176_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn383:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn383]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n160_lit_integer_α
                                                                                        jmp   n160_lit_integer_α
n176_call_builtin_icon_β:
                                                                                        jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2992]
                        add              rsp, 3000
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2992]
                        add              rsp, 3000
                        ret
                        .section         .note.GNU-stack,"",@progbits
