                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_optest_α
proc_optest_α:
proc_optest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 288
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 1
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
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
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
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 3
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
                                                                                        jmp   n9_var_α
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
                                                                                        je    n12_call_value_β
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n8_lit_string_α
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
                        lea              rdi, [rip + .Lrkfn25]                          # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 7                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_β
                        add              rsp, 288
                                                                                        jmp   proc_optest_ω
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 4
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n6_disjunction_as
n8_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n10_var_α
n9_var_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n12_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_value_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 392], rax
                        mov              qword ptr [rbp + 400], 0
                        mov              rdi, qword ptr [rbp + 336]                     # callee
                        mov              rsi, qword ptr [rbp + 344]                     # callee
                        lea              rdx, [rbp + 368]                               # argv
                        mov              ecx, 2                                         # n
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx34_7
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx34_5
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx34_6
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_7:
                        mov              rdi, qword ptr [rbp + 336]                     # callee
                        mov              rsi, qword ptr [rbp + 344]                     # callee
                        lea              rdx, [rbp + 368]                               # argv
                        mov              ecx, 2                                         # n
                        lea              r8, [rbp + 400]                                # hslot
                        call             rt_call_value_gen_h@PLT
.Lx34_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n12_call_value_β:
                        mov              rax, qword ptr [rbp + 400]
                        cmp              rax, 1
                                                                                        jne   .Lx34_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 408]
                                                                                        jmp   qword ptr [rsp]
.Lx34_8:
                        lea              rdi, [rbp + 400]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n6_disjunction_af
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n6_disjunction_as
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_β:
                                                                                        jmp   proc_optest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_optest_dcα:
                        pop              r11
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 512], r11
                        lea              rax, [rip + .Lx35_2]
                        mov              qword ptr [rbp + 520], rax
                        lea              rax, [rip + .Lx35_3]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 496                                       # suffix_off
                        mov              edx, 512                                       # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_optest_α_body
.Lx35_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx35_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 96
                        mov              qword ptr [rsp + 72], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 48], r11
                        lea              rax, [rip + .Lx36_2]
                        mov              qword ptr [rsp + 56], rax
                        lea              rax, [rip + .Lx36_3]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 32                                        # suffix_off
                        mov              edx, 48                                        # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx36_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -80
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx36_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -80
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n77_keyword_icon_gen_α
n37_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n39_lit_integer_α
.Lx107_0:
                                                                                        jmp   n39_lit_integer_α
n37_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n39_lit_integer_α
n37_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn109:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n39_lit_integer_α
                                                                                        jmp   n37_disjunction_as
n38_call_builtin_icon_β:
                                                                                        jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 3                      # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n40_assign_α
.Lx110_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 2704], 2                      # result
                        mov              dword ptr [rbp + 2708], 10
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n42_assign_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "2222222222"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 2688], 2                      # result
                        mov              dword ptr [rbp + 2692], 10
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n44_assign_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "3333333333"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n46_assign_α
.Lx116_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:
                        mov              qword ptr [rbp + 2160], 0
                        mov              qword ptr [rbp + 2168], 0
                        mov              dword ptr [rbp + 2176], 0
                                                                                        jmp   n76_lit_string_α
n47_disjunction_as:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        jne   .Lx119_0
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_0:
                        cmp              eax, 1
                                                                                        jne   .Lx119_1
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_1:
                        cmp              eax, 2
                                                                                        jne   .Lx119_2
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_2:
                        cmp              eax, 3
                                                                                        jne   .Lx119_3
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_3:
                        cmp              eax, 4
                                                                                        jne   .Lx119_4
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_4:
                        cmp              eax, 5
                                                                                        jne   .Lx119_5
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_5:
                        cmp              eax, 6
                                                                                        jne   .Lx119_6
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_6:
                        cmp              eax, 7
                                                                                        jne   .Lx119_7
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_7:
                        cmp              eax, 8
                                                                                        jne   .Lx119_8
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_8:
                        cmp              eax, 9
                                                                                        jne   .Lx119_9
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n48_disjunction_α
.Lx119_9:
                                                                                        jmp   n48_disjunction_α
n47_disjunction_β:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        je    n47_disjunction_af
                        cmp              eax, 1
                                                                                        je    n47_disjunction_af
                        cmp              eax, 2
                                                                                        je    n47_disjunction_af
                        cmp              eax, 3
                                                                                        je    n47_disjunction_af
                        cmp              eax, 4
                                                                                        je    n47_disjunction_af
                        cmp              eax, 5
                                                                                        je    n47_disjunction_af
                        cmp              eax, 6
                                                                                        je    n47_disjunction_af
                        cmp              eax, 7
                                                                                        je    n47_disjunction_af
                        cmp              eax, 8
                                                                                        je    n47_disjunction_af
                                                                                        jmp   n47_disjunction_af
n47_disjunction_af:
                        add              dword ptr [rbp + 2176], 1
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 1
                                                                                        je    n75_lit_string_α
                        cmp              eax, 2
                                                                                        je    n74_lit_string_α
                        cmp              eax, 3
                                                                                        je    n73_lit_string_α
                        cmp              eax, 4
                                                                                        je    n72_lit_string_α
                        cmp              eax, 5
                                                                                        je    n71_lit_string_α
                        cmp              eax, 6
                                                                                        je    n70_lit_string_α
                        cmp              eax, 7
                                                                                        je    n69_lit_string_α
                        cmp              eax, 8
                                                                                        je    n68_lit_string_α
                        cmp              eax, 9
                                                                                        je    n67_lit_string_α
                                                                                        jmp   n80_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n66_var_α
n48_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx121_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n49_disjunction_α
.Lx121_0:
                        cmp              eax, 1
                                                                                        jne   .Lx121_1
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n49_disjunction_α
.Lx121_1:
                        cmp              eax, 2
                                                                                        jne   .Lx121_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n49_disjunction_α
.Lx121_2:
                        cmp              eax, 3
                                                                                        jne   .Lx121_3
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n49_disjunction_α
.Lx121_3:
                                                                                        jmp   n49_disjunction_α
n48_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n48_disjunction_af
                        cmp              eax, 1
                                                                                        je    n48_disjunction_af
                        cmp              eax, 2
                                                                                        je    n48_disjunction_af
                                                                                        jmp   n48_disjunction_af
n48_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n63_var_α
                        cmp              eax, 2
                                                                                        je    n62_var_α
                        cmp              eax, 3
                                                                                        je    n59_var_α
                                                                                        jmp   n47_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0
                                                                                        jmp   n58_var_α
n49_disjunction_as:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        jne   .Lx123_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n50_call_proc_staged_α
.Lx123_0:
                        cmp              eax, 1
                                                                                        jne   .Lx123_1
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n50_call_proc_staged_α
.Lx123_1:
                        cmp              eax, 2
                                                                                        jne   .Lx123_2
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n50_call_proc_staged_α
.Lx123_2:
                        cmp              eax, 3
                                                                                        jne   .Lx123_3
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n50_call_proc_staged_α
.Lx123_3:
                                                                                        jmp   n50_call_proc_staged_α
n49_disjunction_β:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        je    n49_disjunction_af
                        cmp              eax, 1
                                                                                        je    n49_disjunction_af
                        cmp              eax, 2
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n49_disjunction_af
n49_disjunction_af:
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1
                                                                                        je    n55_var_α
                        cmp              eax, 2
                                                                                        je    n54_var_α
                        cmp              eax, 3
                                                                                        je    n51_var_α
                                                                                        jmp   n48_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2352]
                        lea              rcx, [rbp + 2512]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx125_2
.Lx125_2:
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 104
                                                                                        je    n49_disjunction_β
                                                                                        jmp   n49_disjunction_β
n50_call_proc_staged_β:
                                                                                        jmp   n49_disjunction_β
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n52_coerce_numeric_α
n51_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx129_1
                        cmp              eax, 3
                                                                                        jne   .Lx129_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx129_0
.Lx129_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n53_unop_α
.Lx129_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 2640]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:
                        mov              rdi, qword ptr [rbp + 2640]                    # a
                        mov              rsi, qword ptr [rbp + 2648]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n49_disjunction_as
n53_unop_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n49_disjunction_as
n54_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n56_coerce_numeric_α
n55_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 5
                                                                                        je    .Lx136_1
                        cmp              eax, 3
                                                                                        jne   .Lx136_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 3
                                                                                        jne   .Lx136_0
.Lx136_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n57_unop_α
.Lx136_0:
                        lea              rdi, [rbp + 2928]                              # self
                        lea              rsi, [rbp + 2928]                              # other
                        lea              rdx, [rbp + 2576]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # a
                        mov              rsi, qword ptr [rbp + 2584]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n49_disjunction_as
n57_unop_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n49_disjunction_as
n58_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n60_coerce_numeric_α
n59_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 5
                                                                                        je    .Lx143_1
                        cmp              eax, 3
                                                                                        jne   .Lx143_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 3
                                                                                        jne   .Lx143_0
.Lx143_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n61_unop_α
.Lx143_0:
                        lea              rdi, [rbp + 2960]                              # self
                        lea              rsi, [rbp + 2960]                              # other
                        lea              rdx, [rbp + 2480]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n61_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_unop_α:
                        mov              rdi, qword ptr [rbp + 2480]                    # a
                        mov              rsi, qword ptr [rbp + 2488]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n48_disjunction_as
n61_unop_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n48_disjunction_as
n62_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n64_coerce_numeric_α
n63_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 5
                                                                                        je    .Lx150_1
                        cmp              eax, 3
                                                                                        jne   .Lx150_0
                        mov              eax, dword ptr [rbp + 2928]
                        cmp              eax, 3
                                                                                        jne   .Lx150_0
.Lx150_1:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n65_unop_α
.Lx150_0:
                        lea              rdi, [rbp + 2928]                              # self
                        lea              rsi, [rbp + 2928]                              # other
                        lea              rdx, [rbp + 2416]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n65_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_unop_α:
                        mov              rdi, qword ptr [rbp + 2416]                    # a
                        mov              rsi, qword ptr [rbp + 2424]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n48_disjunction_as
n65_unop_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n48_disjunction_as
n66_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 2336], 2                      # result
                        mov              dword ptr [rbp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n47_disjunction_as
n67_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n47_disjunction_as
n68_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 2304], 2                      # result
                        mov              dword ptr [rbp + 2308], 4
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n47_disjunction_as
n69_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 2288], 2                      # result
                        mov              dword ptr [rbp + 2292], 3
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n47_disjunction_as
n70_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 4
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n47_disjunction_as
n71_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n47_disjunction_as
n72_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 2240], 2                      # result
                        mov              dword ptr [rbp + 2244], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n47_disjunction_as
n73_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n47_disjunction_as
n74_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n47_disjunction_as
n75_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n47_disjunction_as
n76_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n77_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 2880], 0
.Lx164_1:
                        mov              rdi, qword ptr [rip + .Lx164_0]                # sval
                        mov              rsi, qword ptr [rbp + 2880]                    # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n104_var_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        mov              rax, qword ptr [rbp + 2880]
                        add              rax, 1
                        mov              qword ptr [rbp + 2880], rax
                                                                                        jmp   n78_lit_string_α
n77_keyword_icon_gen_β:
                                                                                        jmp   .Lx164_1
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], 14
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n79_binop_test_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2864]                    # lhs
                        mov              rsi, qword ptr [rbp + 2872]                    # lhs
                        mov              rdx, qword ptr [rbp + 2896]                    # rhs
                        mov              rcx, qword ptr [rbp + 2904]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n77_keyword_icon_gen_β
                        mov              rdi, qword ptr [rbp + 2896]                    # d
                        mov              rsi, qword ptr [rbp + 2904]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0
                                                                                        jmp   n103_lit_string_α
n80_disjunction_as:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        jne   .Lx168_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx168_1
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_1:
                        cmp              eax, 2
                                                                                        jne   .Lx168_2
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_2:
                        cmp              eax, 3
                                                                                        jne   .Lx168_3
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_3:
                        cmp              eax, 4
                                                                                        jne   .Lx168_4
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_4:
                        cmp              eax, 5
                                                                                        jne   .Lx168_5
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_5:
                        cmp              eax, 6
                                                                                        jne   .Lx168_6
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_6:
                        cmp              eax, 7
                                                                                        jne   .Lx168_7
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_7:
                        cmp              eax, 8
                                                                                        jne   .Lx168_8
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_8:
                        cmp              eax, 9
                                                                                        jne   .Lx168_9
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n81_disjunction_α
.Lx168_9:
                                                                                        jmp   n81_disjunction_α
n80_disjunction_β:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        je    n80_disjunction_af
                        cmp              eax, 1
                                                                                        je    n80_disjunction_af
                        cmp              eax, 2
                                                                                        je    n80_disjunction_af
                        cmp              eax, 3
                                                                                        je    n80_disjunction_af
                        cmp              eax, 4
                                                                                        je    n80_disjunction_af
                        cmp              eax, 5
                                                                                        je    n80_disjunction_af
                        cmp              eax, 6
                                                                                        je    n80_disjunction_af
                        cmp              eax, 7
                                                                                        je    n80_disjunction_af
                        cmp              eax, 8
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_af
n80_disjunction_af:
                        add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 1
                                                                                        je    n102_lit_string_α
                        cmp              eax, 2
                                                                                        je    n101_lit_string_α
                        cmp              eax, 3
                                                                                        je    n100_lit_string_α
                        cmp              eax, 4
                                                                                        je    n99_lit_string_α
                        cmp              eax, 5
                                                                                        je    n98_lit_string_α
                        cmp              eax, 6
                                                                                        je    n97_lit_string_α
                        cmp              eax, 7
                                                                                        je    n96_lit_string_α
                        cmp              eax, 8
                                                                                        je    n95_lit_string_α
                        cmp              eax, 9
                                                                                        je    n94_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_disjunction_α:
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              dword ptr [rbp + 1872], 0
                                                                                        jmp   n93_var_α
n81_disjunction_as:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        jne   .Lx170_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n82_disjunction_α
.Lx170_0:
                        cmp              eax, 1
                                                                                        jne   .Lx170_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n82_disjunction_α
.Lx170_1:
                        cmp              eax, 2
                                                                                        jne   .Lx170_2
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n82_disjunction_α
.Lx170_2:
                                                                                        jmp   n82_disjunction_α
n81_disjunction_β:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        je    n81_disjunction_af
                        cmp              eax, 1
                                                                                        je    n81_disjunction_af
                                                                                        jmp   n81_disjunction_af
n81_disjunction_af:
                        add              dword ptr [rbp + 1872], 1
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 1
                                                                                        je    n92_var_α
                        cmp              eax, 2
                                                                                        je    n89_var_α
                                                                                        jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              dword ptr [rbp + 1984], 0
                                                                                        jmp   n88_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        jne   .Lx172_0
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n83_call_proc_staged_α
.Lx172_0:
                        cmp              eax, 1
                                                                                        jne   .Lx172_1
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n83_call_proc_staged_α
.Lx172_1:
                        cmp              eax, 2
                                                                                        jne   .Lx172_2
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n83_call_proc_staged_α
.Lx172_2:
                                                                                        jmp   n83_call_proc_staged_α
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        je    n82_disjunction_af
                        cmp              eax, 1
                                                                                        je    n82_disjunction_af
                                                                                        jmp   n82_disjunction_af
n82_disjunction_af:
                        add              dword ptr [rbp + 1984], 1
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 1
                                                                                        je    n87_var_α
                        cmp              eax, 2
                                                                                        je    n84_var_α
                                                                                        jmp   n81_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        lea              rsi, [rbp + 1664]
                        lea              rdx, [rbp + 1856]
                        lea              rcx, [rbp + 1968]
                        call             proc_optest_dcα
                                                                                        jmp   .Lx174_2
.Lx174_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n82_disjunction_β
                                                                                        jmp   n82_disjunction_β
n83_call_proc_staged_β:
                                                                                        jmp   n82_disjunction_β
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n85_coerce_numeric_α
n84_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 5
                                                                                        je    .Lx178_1
                        cmp              eax, 3
                                                                                        jne   .Lx178_0
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 3
                                                                                        jne   .Lx178_0
.Lx178_1:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n86_unop_α
.Lx178_0:
                        lea              rdi, [rbp + 2976]                              # self
                        lea              rsi, [rbp + 2976]                              # other
                        lea              rdx, [rbp + 2048]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n86_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_unop_α:
                        mov              rdi, qword ptr [rbp + 2048]                    # a
                        mov              rsi, qword ptr [rbp + 2056]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n82_disjunction_as
n86_unop_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n82_disjunction_as
n87_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n82_disjunction_as
n88_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n90_coerce_numeric_α
n89_var_β:
                                                                                        jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 5
                                                                                        je    .Lx187_1
                        cmp              eax, 3
                                                                                        jne   .Lx187_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 3
                                                                                        jne   .Lx187_0
.Lx187_1:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n91_unop_α
.Lx187_0:
                        lea              rdi, [rbp + 2944]                              # self
                        lea              rsi, [rbp + 2944]                              # other
                        lea              rdx, [rbp + 1936]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n91_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n91_unop_α:
                        mov              rdi, qword ptr [rbp + 1936]                    # a
                        mov              rsi, qword ptr [rbp + 1944]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n81_disjunction_as
n91_unop_β:
                                                                                        jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n81_disjunction_as
n92_var_β:
                                                                                        jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n81_disjunction_as
n93_var_β:
                                                                                        jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 1840], 2                      # result
                        mov              dword ptr [rbp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n80_disjunction_as
n94_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1824], 2                      # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n80_disjunction_as
n95_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 1808], 2                      # result
                        mov              dword ptr [rbp + 1812], 4
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n80_disjunction_as
n96_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 3
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n80_disjunction_as
n97_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 4
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n80_disjunction_as
n98_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n80_disjunction_as
n99_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 1744], 2                      # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n80_disjunction_as
n100_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n80_disjunction_as
n101_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1712], 2                      # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n80_disjunction_as
n102_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 1696], 2                      # result
                        mov              dword ptr [rbp + 1700], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n80_disjunction_as
n103_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                                                                                        jmp   n105_lit_string_α
n104_var_β:
                                                                                        jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 2816], 2                      # result
                        mov              dword ptr [rbp + 2820], 28
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n38_call_builtin_icon_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "large integers not supported"
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
