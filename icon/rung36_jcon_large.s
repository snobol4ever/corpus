                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__optest:
                        sub              rsp, 592
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
optest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax;          jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 1
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n2_var_α
.Lx15_0:                .quad            .Lx15_0_s
.Lx15_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               mov              r11, 3
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 248], rax;          jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n4_var_α
.Lx18_0:                .quad            .Lx18_0_s
.Lx18_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 280], rax;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 3
                        mov              rax, qword ptr [rip + .Lx21_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n6_disjunction_α
.Lx21_0:                .quad            .Lx21_0_s
.Lx21_0_s:              .string          " = "
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n9_var_α
n6_disjunction_as:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx23_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_builtin_icon_α
.Lx23_0:                cmp              eax, 1;                              jne   .Lx23_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_builtin_icon_α
.Lx23_1:                                                                      jmp   n7_call_builtin_icon_α
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              je    n12_call_value_β
                                                                              jmp   n6_disjunction_af
n6_disjunction_af:      mov              r11, 7
                        add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 1;                              je    n8_lit_string_α
                        add              rsp, 16;                             jmp   optest_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn25:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 80]
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n6_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   optest_γ
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 4
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n6_disjunction_as
n8_lit_string_β:        mov              r11, 9;                              jmp   n6_disjunction_af
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 344], rax;          jmp   n10_var_α
n9_var_β:               mov              r11, 10;                             jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 456], rax;          jmp   n11_var_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax;          jmp   n12_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_value_α:       mov              r11, 13
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 392], rax
                        mov              qword ptr [rsp + 400], 0
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        lea              rdx, [rsp + 368]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx34_7
                        lea              rcx, [rip + .Lx34_4]
                        push             rcx
                        lea              rcx, [rip + .Lx34_3]
                        push             rcx;                                 jmp   rax
.Lx34_3:                mov              qword ptr [rsp + 408], rsp
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx34_5
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx34_2
.Lx34_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx34_2
.Lx34_4:                mov              qword ptr [rsp + 408], rsp
                        mov              rax, qword ptr [rsp + 400]
                        test             rax, rax;                            jne   .Lx34_6
                        mov              qword ptr [rsp + 400], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx34_2
.Lx34_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx34_2
.Lx34_7:                mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        lea              rdx, [rsp + 368]
                        mov              ecx, 2
                        lea              r8, [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx34_2:                mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n6_disjunction_af
                                                                              jmp   n6_disjunction_as
n12_call_value_β:       mov              r11, 13
                        mov              rax, qword ptr [rsp + 400]
                        cmp              rax, 1;                              jne   .Lx34_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 408];          jmp   qword ptr [rsp]
.Lx34_8:                lea              rdi, [rsp + 400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n6_disjunction_af
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n6_disjunction_as
                                                                              jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
optest_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
optest_β:
                                                                              jmp   optest_ω
#-----------------------------------------------------------------------------------------------------------------------
optest_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 592;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
optest_ω:
                        add              rsp, 592;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
optest_dcα:
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
                        lea              rcx, [rip + .Lx35_3]
                        push             rcx
                        lea              rcx, [rip + .Lx35_2]
                        push             rcx;                                 jmp   FN__optest
.Lx35_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx35_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__foo:
                        sub              rsp, 96
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
foo_α_body:
                                                                              jmp   foo_γ
#-----------------------------------------------------------------------------------------------------------------------
foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
foo_β:
                                                                              jmp   foo_ω
#-----------------------------------------------------------------------------------------------------------------------
foo_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 96;                             jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
foo_ω:
                        add              rsp, 96;                             jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
foo_dcα:
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
                        lea              rcx, [rip + .Lx36_3]
                        push             rcx
                        lea              rcx, [rip + .Lx36_2]
                        push             rcx;                                 jmp   FN__foo
.Lx36_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx36_3:                add              rsp, 24
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
                        sub              rsp, 3120
                        mov              rdi, rsp
                        add              rdi, 2912
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n77_keyword_icon_gen_α
n37_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx178_0
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_integer_α
.Lx178_0:                                                                     jmp   n39_lit_integer_α
n37_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 2752];         jmp   n39_lit_integer_α
n37_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752]
                        add              rsp, 16;                             jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        .section         .rodata
.Lrkfn180:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rsp + 2784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    n39_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_disjunction_as
n38_call_builtin_icon_β:
                        mov              r11, 15;                             jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 2720], 3            # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n40_assign_α
.Lx181_0:               .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 17
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 10
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n42_assign_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "2222222222"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 10
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n44_assign_α
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "3333333333"
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n46_assign_α
.Lx187_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 23
                        mov              rax, qword ptr [rsp + 2672]
                        mov              rdx, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2176], 0;           jmp   n76_lit_string_α
n47_disjunction_as:     mov              r11, 24
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              eax, 0;                              jne   .Lx190_0
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_0:               cmp              eax, 1;                              jne   .Lx190_1
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_1:               cmp              eax, 2;                              jne   .Lx190_2
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_2:               cmp              eax, 3;                              jne   .Lx190_3
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_3:               cmp              eax, 4;                              jne   .Lx190_4
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_4:               cmp              eax, 5;                              jne   .Lx190_5
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_5:               cmp              eax, 6;                              jne   .Lx190_6
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_6:               cmp              eax, 7;                              jne   .Lx190_7
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_7:               cmp              eax, 8;                              jne   .Lx190_8
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_8:               cmp              eax, 9;                              jne   .Lx190_9
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_disjunction_α
.Lx190_9:                                                                     jmp   n48_disjunction_α
n47_disjunction_β:      mov              r11, 24
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              eax, 0;                              je    n47_disjunction_af
                        cmp              eax, 1;                              je    n47_disjunction_af
                        cmp              eax, 2;                              je    n47_disjunction_af
                        cmp              eax, 3;                              je    n47_disjunction_af
                        cmp              eax, 4;                              je    n47_disjunction_af
                        cmp              eax, 5;                              je    n47_disjunction_af
                        cmp              eax, 6;                              je    n47_disjunction_af
                        cmp              eax, 7;                              je    n47_disjunction_af
                        cmp              eax, 8;                              je    n47_disjunction_af
                                                                              jmp   n47_disjunction_af
n47_disjunction_af:     mov              r11, 24
                        add              dword ptr [rsp + 2176], 1
                        mov              eax, dword ptr [rsp + 2176]
                        cmp              eax, 1;                              je    n75_lit_string_α
                        cmp              eax, 2;                              je    n74_lit_string_α
                        cmp              eax, 3;                              je    n73_lit_string_α
                        cmp              eax, 4;                              je    n72_lit_string_α
                        cmp              eax, 5;                              je    n71_lit_string_α
                        cmp              eax, 6;                              je    n70_lit_string_α
                        cmp              eax, 7;                              je    n69_lit_string_α
                        cmp              eax, 8;                              je    n68_lit_string_α
                        cmp              eax, 9;                              je    n67_lit_string_α
                        add              rsp, 16;                             jmp   n80_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n66_var_α
n48_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx192_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_disjunction_α
.Lx192_0:               cmp              eax, 1;                              jne   .Lx192_1
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_disjunction_α
.Lx192_1:               cmp              eax, 2;                              jne   .Lx192_2
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_disjunction_α
.Lx192_2:               cmp              eax, 3;                              jne   .Lx192_3
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_disjunction_α
.Lx192_3:                                                                     jmp   n49_disjunction_α
n48_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n48_disjunction_af
                        cmp              eax, 1;                              je    n48_disjunction_af
                        cmp              eax, 2;                              je    n48_disjunction_af
                                                                              jmp   n48_disjunction_af
n48_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n63_var_α
                        cmp              eax, 2;                              je    n62_var_α
                        cmp              eax, 3;                              je    n59_var_α
                        add              rsp, 16;                             jmp   n47_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2528], 0;           jmp   n58_var_α
n49_disjunction_as:     mov              r11, 26
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              jne   .Lx194_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_proc_staged_α
.Lx194_0:               cmp              eax, 1;                              jne   .Lx194_1
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_proc_staged_α
.Lx194_1:               cmp              eax, 2;                              jne   .Lx194_2
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_proc_staged_α
.Lx194_2:               cmp              eax, 3;                              jne   .Lx194_3
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_proc_staged_α
.Lx194_3:                                                                     jmp   n50_call_proc_staged_α
n49_disjunction_β:      mov              r11, 26
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              je    n49_disjunction_af
                        cmp              eax, 1;                              je    n49_disjunction_af
                        cmp              eax, 2;                              je    n49_disjunction_af
                                                                              jmp   n49_disjunction_af
n49_disjunction_af:     mov              r11, 26
                        add              dword ptr [rsp + 2528], 1
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 1;                              je    n55_var_α
                        cmp              eax, 2;                              je    n54_var_α
                        cmp              eax, 3;                              je    n51_var_α
                        add              rsp, 16;                             jmp   n48_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α: mov              r11, 27
                        lea              rsi, [rsp + 2160]
                        lea              rdx, [rsp + 2352]
                        lea              rcx, [rsp + 2512]
                        call             optest_dcα;                          jmp   .Lx196_2
.Lx196_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx196_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
.Lx196_29:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n49_disjunction_β
                                                                              jmp   n49_disjunction_β
n50_call_proc_staged_β: mov              r11, 27;                             jmp   n49_disjunction_β
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n52_coerce_numeric_α
n51_var_β:              mov              r11, 28;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:   mov              r11, 29
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Lx200_1
                        cmp              al, 3;                               jne   .Lx200_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Lx200_0
.Lx200_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n53_unop_α
.Lx200_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 2640]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:             mov              r11, 30
                        mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n49_disjunction_as
n53_unop_β:             mov              r11, 30;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n49_disjunction_as
n54_var_β:              mov              r11, 31;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n56_coerce_numeric_α
n55_var_β:              mov              r11, 32;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              r11, 33
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 5;                               je    .Lx207_1
                        cmp              al, 3;                               jne   .Lx207_0
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 3;                               jne   .Lx207_0
.Lx207_1:               mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n57_unop_α
.Lx207_0:               lea              rdi, [rsp + 2928]
                        lea              rsi, [rsp + 2928]
                        lea              rdx, [rsp + 2576]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_unop_α:             mov              r11, 34
                        mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n49_disjunction_as
n57_unop_β:             mov              r11, 34;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n49_disjunction_as
n58_var_β:              mov              r11, 35;                             jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n60_coerce_numeric_α
n59_var_β:              mov              r11, 36;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              r11, 37
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Lx214_1
                        cmp              al, 3;                               jne   .Lx214_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Lx214_0
.Lx214_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n61_unop_α
.Lx214_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 2480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_unop_α:             mov              r11, 38
                        mov              rdi, qword ptr [rsp + 2480]
                        mov              rsi, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n48_disjunction_as
n61_unop_β:             mov              r11, 38;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n48_disjunction_as
n62_var_β:              mov              r11, 39;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n64_coerce_numeric_α
n63_var_β:              mov              r11, 40;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   mov              r11, 41
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 5;                               je    .Lx221_1
                        cmp              al, 3;                               jne   .Lx221_0
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 3;                               jne   .Lx221_0
.Lx221_1:               mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n65_unop_α
.Lx221_0:               lea              rdi, [rsp + 2928]
                        lea              rsi, [rsp + 2928]
                        lea              rdx, [rsp + 2416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_unop_α:             mov              r11, 42
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n48_disjunction_as
n65_unop_β:             mov              r11, 42;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n48_disjunction_as
n66_var_β:              mov              r11, 43;                             jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n47_disjunction_as
n67_lit_string_β:       mov              r11, 44;                             jmp   n47_disjunction_af
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n47_disjunction_as
n68_lit_string_β:       mov              r11, 45;                             jmp   n47_disjunction_af
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 4
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n47_disjunction_as
n69_lit_string_β:       mov              r11, 46;                             jmp   n47_disjunction_af
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 3
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n47_disjunction_as
n70_lit_string_β:       mov              r11, 47;                             jmp   n47_disjunction_af
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 4
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n47_disjunction_as
n71_lit_string_β:       mov              r11, 48;                             jmp   n47_disjunction_af
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n47_disjunction_as
n72_lit_string_β:       mov              r11, 49;                             jmp   n47_disjunction_af
.Lx230_0:               .quad            .Lx230_0_s
.Lx230_0_s:             .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n47_disjunction_as
n73_lit_string_β:       mov              r11, 50;                             jmp   n47_disjunction_af
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n47_disjunction_as
n74_lit_string_β:       mov              r11, 51;                             jmp   n47_disjunction_af
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n47_disjunction_as
n75_lit_string_β:       mov              r11, 52;                             jmp   n47_disjunction_af
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n47_disjunction_as
n76_lit_string_β:       mov              r11, 53;                             jmp   n47_disjunction_af
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n77_keyword_icon_gen_α: mov              r11, 54
                        mov              qword ptr [rsp + 2880], 0
.Lx235_1:               mov              rdi, qword ptr [rip + .Lx235_0]
                        mov              rsi, qword ptr [rsp + 2880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n104_var_α
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              rax, qword ptr [rsp + 2880]
                        add              rax, 1
                        mov              qword ptr [rsp + 2880], rax;         jmp   n78_lit_string_α
n77_keyword_icon_gen_β: mov              r11, 54;                             jmp   .Lx235_1
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 14
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n79_binop_test_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "large integers"
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_test_α:       mov              r11, 56
                        mov              rdi, qword ptr [rsp + 2864]
                        mov              rsi, qword ptr [rsp + 2872]
                        mov              rdx, qword ptr [rsp + 2896]
                        mov              rcx, qword ptr [rsp + 2904]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n77_keyword_icon_gen_β
                        mov              rdi, qword ptr [rsp + 2896]
                        mov              rsi, qword ptr [rsp + 2904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1680], 0;           jmp   n103_lit_string_α
n80_disjunction_as:     mov              r11, 57
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              jne   .Lx239_0
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_0:               cmp              eax, 1;                              jne   .Lx239_1
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_1:               cmp              eax, 2;                              jne   .Lx239_2
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_2:               cmp              eax, 3;                              jne   .Lx239_3
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_3:               cmp              eax, 4;                              jne   .Lx239_4
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_4:               cmp              eax, 5;                              jne   .Lx239_5
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_5:               cmp              eax, 6;                              jne   .Lx239_6
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_6:               cmp              eax, 7;                              jne   .Lx239_7
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_7:               cmp              eax, 8;                              jne   .Lx239_8
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_8:               cmp              eax, 9;                              jne   .Lx239_9
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_disjunction_α
.Lx239_9:                                                                     jmp   n81_disjunction_α
n80_disjunction_β:      mov              r11, 57
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              je    n80_disjunction_af
                        cmp              eax, 1;                              je    n80_disjunction_af
                        cmp              eax, 2;                              je    n80_disjunction_af
                        cmp              eax, 3;                              je    n80_disjunction_af
                        cmp              eax, 4;                              je    n80_disjunction_af
                        cmp              eax, 5;                              je    n80_disjunction_af
                        cmp              eax, 6;                              je    n80_disjunction_af
                        cmp              eax, 7;                              je    n80_disjunction_af
                        cmp              eax, 8;                              je    n80_disjunction_af
                                                                              jmp   n80_disjunction_af
n80_disjunction_af:     mov              r11, 57
                        add              dword ptr [rsp + 1680], 1
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 1;                              je    n102_lit_string_α
                        cmp              eax, 2;                              je    n101_lit_string_α
                        cmp              eax, 3;                              je    n100_lit_string_α
                        cmp              eax, 4;                              je    n99_lit_string_α
                        cmp              eax, 5;                              je    n98_lit_string_α
                        cmp              eax, 6;                              je    n97_lit_string_α
                        cmp              eax, 7;                              je    n96_lit_string_α
                        cmp              eax, 8;                              je    n95_lit_string_α
                        cmp              eax, 9;                              je    n94_lit_string_α
                        add              rsp, 16;                             jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_disjunction_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1872], 0;           jmp   n93_var_α
n81_disjunction_as:     mov              r11, 58
                        mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 0;                              jne   .Lx241_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_disjunction_α
.Lx241_0:               cmp              eax, 1;                              jne   .Lx241_1
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_disjunction_α
.Lx241_1:               cmp              eax, 2;                              jne   .Lx241_2
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_disjunction_α
.Lx241_2:                                                                     jmp   n82_disjunction_α
n81_disjunction_β:      mov              r11, 58
                        mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 0;                              je    n81_disjunction_af
                        cmp              eax, 1;                              je    n81_disjunction_af
                                                                              jmp   n81_disjunction_af
n81_disjunction_af:     mov              r11, 58
                        add              dword ptr [rsp + 1872], 1
                        mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 1;                              je    n92_var_α
                        cmp              eax, 2;                              je    n89_var_α
                        add              rsp, 16;                             jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1984], 0;           jmp   n88_var_α
n82_disjunction_as:     mov              r11, 59
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 0;                              jne   .Lx243_0
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_proc_staged_α
.Lx243_0:               cmp              eax, 1;                              jne   .Lx243_1
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_proc_staged_α
.Lx243_1:               cmp              eax, 2;                              jne   .Lx243_2
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_proc_staged_α
.Lx243_2:                                                                     jmp   n83_call_proc_staged_α
n82_disjunction_β:      mov              r11, 59
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 0;                              je    n82_disjunction_af
                        cmp              eax, 1;                              je    n82_disjunction_af
                                                                              jmp   n82_disjunction_af
n82_disjunction_af:     mov              r11, 59
                        add              dword ptr [rsp + 1984], 1
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 1;                              je    n87_var_α
                        cmp              eax, 2;                              je    n84_var_α
                        add              rsp, 16;                             jmp   n81_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α: mov              r11, 60
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1856]
                        lea              rcx, [rsp + 1968]
                        call             optest_dcα;                          jmp   .Lx245_2
.Lx245_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx245_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
.Lx245_29:              mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n82_disjunction_β
                                                                              jmp   n82_disjunction_β
n83_call_proc_staged_β: mov              r11, 60;                             jmp   n82_disjunction_β
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 61
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n85_coerce_numeric_α
n84_var_β:              mov              r11, 61;                             jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              r11, 62
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              al, 5;                               je    .Lx249_1
                        cmp              al, 3;                               jne   .Lx249_0
                        mov              eax, dword ptr [rsp + 2976]
                        cmp              al, 3;                               jne   .Lx249_0
.Lx249_1:               mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n86_unop_α
.Lx249_0:               lea              rdi, [rsp + 2976]
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2048]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_unop_α:             mov              r11, 63
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n82_disjunction_as
n86_unop_β:             mov              r11, 63;                             jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n82_disjunction_as
n87_var_β:              mov              r11, 64;                             jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              r11, 65
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n82_disjunction_as
n88_var_β:              mov              r11, 65;                             jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n90_coerce_numeric_α
n89_var_β:              mov              r11, 66;                             jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_coerce_numeric_α:   mov              r11, 67
                        mov              eax, dword ptr [rsp + 2944]
                        cmp              al, 5;                               je    .Lx258_1
                        cmp              al, 3;                               jne   .Lx258_0
                        mov              eax, dword ptr [rsp + 2944]
                        cmp              al, 3;                               jne   .Lx258_0
.Lx258_1:               mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n91_unop_α
.Lx258_0:               lea              rdi, [rsp + 2944]
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 1936]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n91_unop_α:             mov              r11, 68
                        mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n81_disjunction_as
n91_unop_β:             mov              r11, 68;                             jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n81_disjunction_as
n92_var_β:              mov              r11, 69;                             jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n81_disjunction_as
n93_var_β:              mov              r11, 70;                             jmp   n81_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n80_disjunction_as
n94_lit_string_β:       mov              r11, 71;                             jmp   n80_disjunction_af
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n80_disjunction_as
n95_lit_string_β:       mov              r11, 72;                             jmp   n80_disjunction_af
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 4
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n80_disjunction_as
n96_lit_string_β:       mov              r11, 73;                             jmp   n80_disjunction_af
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 3
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n80_disjunction_as
n97_lit_string_β:       mov              r11, 74;                             jmp   n80_disjunction_af
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 4
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n80_disjunction_as
n98_lit_string_β:       mov              r11, 75;                             jmp   n80_disjunction_af
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n80_disjunction_as
n99_lit_string_β:       mov              r11, 76;                             jmp   n80_disjunction_af
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "%"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n80_disjunction_as
n100_lit_string_β:      mov              r11, 77;                             jmp   n80_disjunction_af
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n80_disjunction_as
n101_lit_string_β:      mov              r11, 78;                             jmp   n80_disjunction_af
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n80_disjunction_as
n102_lit_string_β:      mov              r11, 79;                             jmp   n80_disjunction_af
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n80_disjunction_as
n103_lit_string_β:      mov              r11, 80;                             jmp   n80_disjunction_af
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 81
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0;           jmp   n105_lit_string_α
n104_var_β:             mov              r11, 81;                             jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 28
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n38_call_builtin_icon_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "large integers not supported"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n107_disjunction_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n107_disjunction_α:     sub              rsp, 16
                        mov              r11, 84
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1376], 0;           jmp   n119_var_α
n107_disjunction_as:    mov              r11, 84
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 0;                              jne   .Lx278_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_disjunction_α
.Lx278_0:               cmp              eax, 1;                              jne   .Lx278_1
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_disjunction_α
.Lx278_1:               cmp              eax, 2;                              jne   .Lx278_2
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_disjunction_α
.Lx278_2:               cmp              eax, 3;                              jne   .Lx278_3
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_disjunction_α
.Lx278_3:                                                                     jmp   n108_disjunction_α
n107_disjunction_β:     mov              r11, 84
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 0;                              je    n107_disjunction_af
                        cmp              eax, 1;                              je    n107_disjunction_af
                        cmp              eax, 2;                              je    n107_disjunction_af
                                                                              jmp   n107_disjunction_af
n107_disjunction_af:    mov              r11, 84
                        add              dword ptr [rsp + 1376], 1
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              eax, 1;                              je    n116_var_α
                        cmp              eax, 2;                              je    n115_var_α
                        cmp              eax, 3;                              je    n112_var_α
                        add              rsp, 16;                             jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_disjunction_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1536], 0;           jmp   n111_lit_integer_α
n108_disjunction_as:    mov              r11, 85
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              jne   .Lx280_0
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_call_proc_staged_α
.Lx280_0:               cmp              eax, 1;                              jne   .Lx280_1
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_call_proc_staged_α
.Lx280_1:                                                                     jmp   n109_call_proc_staged_α
n108_disjunction_β:     mov              r11, 85
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 0;                              je    n108_disjunction_af
                                                                              jmp   n108_disjunction_af
n108_disjunction_af:    mov              r11, 85
                        add              dword ptr [rsp + 1536], 1
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              eax, 1;                              je    n110_lit_integer_α
                        add              rsp, 16;                             jmp   n107_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              r11, 86
                        lea              rsi, [rsp + 1344]
                        lea              rdx, [rsp + 1360]
                        lea              rcx, [rsp + 1520]
                        call             optest_dcα;                          jmp   .Lx282_2
.Lx282_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx282_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
.Lx282_29:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n108_disjunction_β
                                                                              jmp   n108_disjunction_β
n109_call_proc_staged_β:
                        mov              r11, 86;                             jmp   n108_disjunction_β
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n108_disjunction_as
n110_lit_integer_β:     mov              r11, 87;                             jmp   n108_disjunction_af
.Lx283_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n108_disjunction_as
n111_lit_integer_β:     mov              r11, 88;                             jmp   n108_disjunction_af
.Lx284_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n113_coerce_numeric_α
n112_var_β:             mov              r11, 89;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  mov              r11, 90
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 5;                               je    .Lx288_1
                        cmp              al, 3;                               jne   .Lx288_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              al, 3;                               jne   .Lx288_0
.Lx288_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n114_unop_α
.Lx288_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 1488]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:            mov              r11, 91
                        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n107_disjunction_as
n114_unop_β:            mov              r11, 91;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n107_disjunction_as
n115_var_β:             mov              r11, 92;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n117_coerce_numeric_α
n116_var_β:             mov              r11, 93;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n117_coerce_numeric_α:  mov              r11, 94
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 5;                               je    .Lx295_1
                        cmp              al, 3;                               jne   .Lx295_0
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 3;                               jne   .Lx295_0
.Lx295_1:               mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n118_unop_α
.Lx295_0:               lea              rdi, [rsp + 2928]
                        lea              rsi, [rsp + 2928]
                        lea              rdx, [rsp + 1424]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n118_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n118_unop_α:            mov              r11, 95
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n107_disjunction_as
n118_unop_β:            mov              r11, 95;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n107_disjunction_as
n119_var_β:             mov              r11, 96;                             jmp   n107_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n121_disjunction_α
.Lx299_0:               .quad            .Lx299_0_s
.Lx299_0_s:             .string          "^"
#-----------------------------------------------------------------------------------------------------------------------
n121_disjunction_α:     sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n127_lit_integer_α
n121_disjunction_as:    mov              r11, 98
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx301_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_disjunction_α
.Lx301_0:               cmp              eax, 1;                              jne   .Lx301_1
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_disjunction_α
.Lx301_1:                                                                     jmp   n122_disjunction_α
n121_disjunction_β:     mov              r11, 98
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              je    n121_disjunction_af
                                                                              jmp   n121_disjunction_af
n121_disjunction_af:    mov              r11, 98
                        add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 1;                              je    n126_lit_integer_α
                        add              rsp, 16;                             jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_disjunction_α:     sub              rsp, 16
                        mov              r11, 99
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1216], 0;           jmp   n125_lit_integer_α
n122_disjunction_as:    mov              r11, 99
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 0;                              jne   .Lx303_0
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_call_proc_staged_α
.Lx303_0:               cmp              eax, 1;                              jne   .Lx303_1
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_call_proc_staged_α
.Lx303_1:                                                                     jmp   n123_call_proc_staged_α
n122_disjunction_β:     mov              r11, 99
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 0;                              je    n122_disjunction_af
                                                                              jmp   n122_disjunction_af
n122_disjunction_af:    mov              r11, 99
                        add              dword ptr [rsp + 1216], 1
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 1;                              je    n124_lit_integer_α
                        add              rsp, 16;                             jmp   n121_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n123_call_proc_staged_α:
                        mov              r11, 100
                        lea              rsi, [rsp + 1120]
                        lea              rdx, [rsp + 1136]
                        lea              rcx, [rsp + 1200]
                        call             optest_dcα;                          jmp   .Lx305_2
.Lx305_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx305_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx305_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n122_disjunction_β
                                                                              jmp   n122_disjunction_β
n123_call_proc_staged_β:
                        mov              r11, 100;                            jmp   n122_disjunction_β
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n122_disjunction_as
n124_lit_integer_β:     mov              r11, 101;                            jmp   n122_disjunction_af
.Lx306_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n122_disjunction_as
n125_lit_integer_β:     mov              r11, 102;                            jmp   n122_disjunction_af
.Lx307_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n121_disjunction_as
n126_lit_integer_β:     mov              r11, 103;                            jmp   n121_disjunction_af
.Lx308_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n121_disjunction_as
n127_lit_integer_β:     mov              r11, 104;                            jmp   n121_disjunction_af
.Lx309_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n129_disjunction_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "ishift"
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n144_var_α
n129_disjunction_as:    mov              r11, 106
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx312_0
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_disjunction_α
.Lx312_0:               cmp              eax, 1;                              jne   .Lx312_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_disjunction_α
.Lx312_1:               cmp              eax, 2;                              jne   .Lx312_2
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_disjunction_α
.Lx312_2:               cmp              eax, 3;                              jne   .Lx312_3
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_disjunction_α
.Lx312_3:               cmp              eax, 4;                              jne   .Lx312_4
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_disjunction_α
.Lx312_4:                                                                     jmp   n130_disjunction_α
n129_disjunction_β:     mov              r11, 106
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n129_disjunction_af
                        cmp              eax, 1;                              je    n129_disjunction_af
                        cmp              eax, 2;                              je    n129_disjunction_af
                        cmp              eax, 3;                              je    n129_disjunction_af
                                                                              jmp   n129_disjunction_af
n129_disjunction_af:    mov              r11, 106
                        add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n141_var_α
                        cmp              eax, 2;                              je    n140_var_α
                        cmp              eax, 3;                              je    n137_var_α
                        cmp              eax, 4;                              je    n136_var_α
                        add              rsp, 16;                             jmp   n145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n130_disjunction_α:     sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n135_lit_integer_α
n130_disjunction_as:    mov              r11, 107
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx314_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_proc_staged_α
.Lx314_0:               cmp              eax, 1;                              jne   .Lx314_1
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_proc_staged_α
.Lx314_1:               cmp              eax, 2;                              jne   .Lx314_2
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_proc_staged_α
.Lx314_2:               cmp              eax, 3;                              jne   .Lx314_3
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_proc_staged_α
.Lx314_3:                                                                     jmp   n131_call_proc_staged_α
n130_disjunction_β:     mov              r11, 107
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              je    n130_disjunction_af
                        cmp              eax, 1;                              je    n130_disjunction_af
                        cmp              eax, 2;                              je    n130_disjunction_af
                                                                              jmp   n130_disjunction_af
n130_disjunction_af:    mov              r11, 107
                        add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 1;                              je    n134_lit_integer_α
                        cmp              eax, 2;                              je    n133_lit_integer_α
                        cmp              eax, 3;                              je    n132_lit_integer_α
                        add              rsp, 16;                             jmp   n129_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        mov              r11, 108
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 768]
                        lea              rcx, [rsp + 944]
                        call             optest_dcα;                          jmp   .Lx316_2
.Lx316_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx316_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
.Lx316_29:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n130_disjunction_β
                                                                              jmp   n130_disjunction_β
n131_call_proc_staged_β:
                        mov              r11, 108;                            jmp   n130_disjunction_β
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "optest"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n130_disjunction_as
n132_lit_integer_β:     mov              r11, 109;                            jmp   n130_disjunction_af
.Lx317_0:               .quad            18446744073709551577
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n130_disjunction_as
n133_lit_integer_β:     mov              r11, 110;                            jmp   n130_disjunction_af
.Lx318_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n130_disjunction_as
n134_lit_integer_β:     mov              r11, 111;                            jmp   n130_disjunction_af
.Lx319_0:               .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n130_disjunction_as
n135_lit_integer_β:     mov              r11, 112;                            jmp   n130_disjunction_af
.Lx320_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 936], rax;          jmp   n129_disjunction_as
n136_var_β:             mov              r11, 113;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 920], rax;          jmp   n138_coerce_numeric_α
n137_var_β:             mov              r11, 114;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n138_coerce_numeric_α:  mov              r11, 115
                        mov              eax, dword ptr [rsp + 2944]
                        cmp              al, 5;                               je    .Lx326_1
                        cmp              al, 3;                               jne   .Lx326_0
                        mov              eax, dword ptr [rsp + 2944]
                        cmp              al, 3;                               jne   .Lx326_0
.Lx326_1:               mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 904], rax;          jmp   n139_unop_α
.Lx326_0:               lea              rdi, [rsp + 2944]
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 896]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n139_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n139_unop_α:            mov              r11, 116
                        mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n129_disjunction_as
n139_unop_β:            mov              r11, 116;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 872], rax;          jmp   n129_disjunction_as
n140_var_β:             mov              r11, 117;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 856], rax;          jmp   n142_coerce_numeric_α
n141_var_β:             mov              r11, 118;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n142_coerce_numeric_α:  mov              r11, 119
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 5;                               je    .Lx333_1
                        cmp              al, 3;                               jne   .Lx333_0
                        mov              eax, dword ptr [rsp + 2928]
                        cmp              al, 3;                               jne   .Lx333_0
.Lx333_1:               mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 840], rax;          jmp   n143_unop_α
.Lx333_0:               lea              rdi, [rsp + 2928]
                        lea              rsi, [rsp + 2928]
                        lea              rdx, [rsp + 832]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n143_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n143_unop_α:            mov              r11, 120
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n129_disjunction_as
n143_unop_β:            mov              r11, 120;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 808], rax;          jmp   n129_disjunction_as
n144_var_β:             mov              r11, 121;                            jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n145_disjunction_α:     sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n176_lit_integer_α
n145_disjunction_as:    mov              r11, 122
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx338_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_assign_α
.Lx338_0:               cmp              eax, 1;                              jne   .Lx338_1
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_assign_α
.Lx338_1:               cmp              eax, 2;                              jne   .Lx338_2
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_assign_α
.Lx338_2:               cmp              eax, 3;                              jne   .Lx338_3
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_assign_α
.Lx338_3:                                                                     jmp   n146_assign_α
n145_disjunction_β:     mov              r11, 122
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n145_disjunction_af
                        cmp              eax, 1;                              je    n145_disjunction_af
                        cmp              eax, 2;                              je    n145_disjunction_af
                                                                              jmp   n145_disjunction_af
n145_disjunction_af:    mov              r11, 122
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n175_lit_integer_α
                        cmp              eax, 2;                              je    n174_lit_integer_α
                        cmp              eax, 3;                              je    n173_lit_integer_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 123
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n147_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n147_bound_α:           mov              r11, 124
                        mov              qword ptr [rsp + 112], rsp;          jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n149_var_α
.Lx342_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 664], rax;          jmp   n150_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n150_coerce_numeric_α:  mov              r11, 127
                        mov              eax, dword ptr [rsp + 2912]
                        cmp              al, 5;                               je    .Lx346_1
                        cmp              al, 3;                               jne   .Lx346_0
                        mov              eax, dword ptr [rsp + 640]
                        cmp              al, 3;                               jne   .Lx346_0
.Lx346_1:               mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 632], rax;          jmp   n151_binop_α
.Lx346_0:               lea              rdi, [rsp + 2912]
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           mov              r11, 128
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n153_lit_integer_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn349:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n153_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_lit_integer_α
n152_call_builtin_icon_β:
                        mov              r11, 129;                            jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n154_var_α
.Lx350_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 424], rax;          jmp   n155_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n155_coerce_numeric_α:  mov              r11, 132
                        mov              eax, dword ptr [rsp + 2912]
                        cmp              al, 5;                               je    .Lx354_1
                        cmp              al, 3;                               jne   .Lx354_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              al, 3;                               jne   .Lx354_0
.Lx354_1:               mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 392], rax;          jmp   n156_binop_α
.Lx354_0:               lea              rdi, [rsp + 2912]
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 384]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n156_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           mov              r11, 133
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n166_lit_integer_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n157_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n158_binop_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:           mov              r11, 135
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n160_var_α
.Lx358_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 552], rax;          jmp   n161_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n161_coerce_numeric_α:  mov              r11, 138
                        mov              eax, dword ptr [rsp + 2912]
                        cmp              al, 5;                               je    .Lx362_1
                        cmp              al, 3;                               jne   .Lx362_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 3;                               jne   .Lx362_0
.Lx362_1:               mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 520], rax;          jmp   n162_binop_α
.Lx362_0:               lea              rdi, [rsp + 2912]
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 512]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n162_binop_α:           mov              r11, 139
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n166_lit_integer_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn365:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n166_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_binop_α
n163_call_builtin_icon_β:
                        mov              r11, 140;                            jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n164_binop_α:           mov              r11, 141
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n165_call_builtin_icon_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn368:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n166_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_lit_integer_α
n165_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n167_var_α
.Lx369_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 280], rax;          jmp   n168_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n168_coerce_numeric_α:  mov              r11, 145
                        mov              eax, dword ptr [rsp + 2912]
                        cmp              al, 5;                               je    .Lx373_1
                        cmp              al, 3;                               jne   .Lx373_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx373_0
.Lx373_1:               mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 248], rax;          jmp   n169_binop_α
.Lx373_0:               lea              rdi, [rsp + 2912]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n169_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n169_binop_α:           mov              r11, 146
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              al, 104;                             je    n172_unmark_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              r11, 147
                        lea              rsi, [rsp + 224]
                        call             foo_dcα;                             jmp   .Lx376_2
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx376_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n172_unmark_α
                                                                              jmp   n171_conjunction_α
n170_call_proc_staged_β:
                        mov              r11, 147;                            jmp   n172_unmark_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n171_conjunction_α:     mov              r11, 148
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n172_unmark_α
n171_conjunction_β:     mov              r11, 148;                            jmp   n172_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n172_unmark_α:          mov              r11, 149
                        mov              rsp, qword ptr [rsp + 112];          jmp   n145_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n145_disjunction_as
n173_lit_integer_β:     mov              r11, 150;                            jmp   n145_disjunction_af
.Lx380_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 80], 3              # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n145_disjunction_as
n174_lit_integer_β:     mov              r11, 151;                            jmp   n145_disjunction_af
.Lx381_0:               .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n145_disjunction_as
n175_lit_integer_β:     mov              r11, 152;                            jmp   n145_disjunction_af
.Lx382_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n145_disjunction_as
n176_lit_integer_β:     mov              r11, 153;                            jmp   n145_disjunction_af
.Lx383_0:               .quad            10
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
.Lstartup_pname0:       .string          "optest"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__optest
                        .quad            optest_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            496
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "foo"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__foo
                        .quad            foo_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            32
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
