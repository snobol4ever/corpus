                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__try:
                        sub              rsp, 848
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 264], rax;          jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx23_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n2_call_builtin_icon_α
.Lx23_0:                .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn25:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn25]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n20_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n20_return_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n4_var_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 360], rax;          jmp   n5_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_proc_staged_α:  mov              r11, 6
                        lea              rsi, [rsp + 352]
                        call             r_dcα;                               jmp   .Lx30_2
.Lx30_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx30_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx30_29:               mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n20_return_α
                                                                              jmp   n6_disjunction_α
n5_call_proc_staged_β:  mov              r11, 6;                              jmp   n20_return_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n15_lit_string_α
n6_disjunction_as:      mov              r11, 7
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_string_α
.Lx32_0:                cmp              eax, 1;                              jne   .Lx32_1
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_string_α
.Lx32_1:                                                                      jmp   n7_lit_string_α
n6_disjunction_β:       mov              r11, 7
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n6_disjunction_af
                                                                              jmp   n6_disjunction_af
n6_disjunction_af:      mov              r11, 7
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n14_keyword_icon_α
                        add              rsp, 16;                             jmp   n20_return_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 4
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n8_var_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 9
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 616], rax;          jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 728], rax;          jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 744], rax;          jmp   n11_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_value_α:       mov              r11, 12
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], 0
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        lea              rdx, [rsp + 640]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx41_7
                        lea              rcx, [rip + .Lx41_4]
                        push             rcx
                        lea              rcx, [rip + .Lx41_3]
                        push             rcx;                                 jmp   rax
.Lx41_3:                mov              qword ptr [rsp + 680], rsp
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx41_5
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx41_2
.Lx41_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx41_2
.Lx41_4:                mov              qword ptr [rsp + 680], rsp
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx41_6
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx41_2
.Lx41_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx41_2
.Lx41_7:                mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        lea              rdx, [rsp + 640]
                        mov              ecx, 2
                        lea              r8, [rsp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx41_2:                mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n6_disjunction_β
                                                                              jmp   n12_call_proc_staged_α
n11_call_value_β:       mov              r11, 12
                        mov              rax, qword ptr [rsp + 672]
                        cmp              rax, 1;                              jne   .Lx41_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 680];          jmp   qword ptr [rsp]
.Lx41_8:                lea              rdi, [rsp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n6_disjunction_β
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n12_call_proc_staged_α
                                                                              jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α: mov              r11, 13
                        lea              rsi, [rsp + 624]
                        call             r_dcα;                               jmp   .Lx43_2
.Lx43_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx43_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
.Lx43_29:               mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n11_call_value_β
                                                                              jmp   n13_call_builtin_icon_α
n12_call_proc_staged_β: mov              r11, 13;                             jmp   n11_call_value_β
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn45:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rsp + 80]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    n11_call_value_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_return_α
n13_call_builtin_icon_β:
                        mov              r11, 14;                             jmp   n11_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_α:     mov              r11, 15
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0;            jmp   n6_disjunction_as
n14_keyword_icon_β:     mov              r11, 15;                             jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n16_var_α
n15_lit_string_β:       mov              r11, 16;                             jmp   n6_disjunction_af
.Lx47_0:                .quad            .Lx47_0_s
.Lx47_0_s:              .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 504], rax;          jmp   n17_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n17_unop_test_α:        mov              r11, 18
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 104;                             je    n6_disjunction_af
                        cmp              eax, 0;                              je    n6_disjunction_af
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 488], rax;          jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 19
                        lea              rsi, [rsp + 480]
                        call             r_dcα;                               jmp   .Lx52_2
.Lx52_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx52_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
.Lx52_29:               mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n6_disjunction_af
                                                                              jmp   n19_binop_α
n18_call_proc_staged_β: mov              r11, 19;                             jmp   n6_disjunction_af
.Lx52_0:                .quad            .Lx52_0_s
.Lx52_0_s:              .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_disjunction_as
n19_binop_β:            mov              r11, 20;                             jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_return_α:           mov              r11, 21
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   try_γ
#-----------------------------------------------------------------------------------------------------------------------
try_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
try_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
try_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 848;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
try_ω:
                        add              rsp, 848;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
try_dcα:
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
                        lea              rcx, [rip + .Lx55_3]
                        push             rcx
                        lea              rcx, [rip + .Lx55_2]
                        push             rcx;                                 jmp   FN__try
.Lx55_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx55_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__r:
                        sub              rsp, 592
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
r_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n69_var_α
n56_disjunction_as:     mov              r11, 22
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx85_0
                                                                              jmp   r_γ
.Lx85_0:                cmp              eax, 1;                              jne   .Lx85_1
                                                                              jmp   r_γ
.Lx85_1:                                                                      jmp   r_γ
n56_disjunction_β:      mov              r11, 22
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    r_ω
                                                                              jmp   r_ω
n56_disjunction_af:     mov              r11, 22
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n57_var_α
                        add              rsp, 16;                             jmp   r_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 472], rax;          jmp   n58_lit_integer_α
n57_var_β:              mov              r11, 23;                             jmp   r_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n59_coerce_numeric_α
.Lx88_0:                .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              r11, 25
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx90_1
                        cmp              al, 3;                               jne   .Lx90_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lx90_0
.Lx90_1:                mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 456], rax;          jmp   n60_binop_α
.Lx90_0:                lea              rdi, [rsp + 16]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              r11, 26
                        mov              eax, dword ptr [rsp + 448]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx91_2
                        mov              rax, qword ptr [rsp + 456]
                        mov              rdx, 1000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax;          jmp   .Lx91_7
.Lx91_2:                and              edx, 1;                              jz    .Lx91_0
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdi, 1000
                        cmp              al, 5;                               je    .Lx91_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx91_4
.Lx91_3:                movq             xmm0, rsi
.Lx91_4:                cmp              cl, 5;                               je    .Lx91_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx91_6
.Lx91_5:                movq             xmm1, rdi
.Lx91_6:                mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 432], 5
                        mov              qword ptr [rsp + 440], rax
.Lx91_7:                                                                      jmp   n61_lit_real_α
.Lx91_0:                mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_real_α:         mov              r11, 27
                        mov              qword ptr [rsp + 496], 5             # result
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n62_coerce_numeric_α
.Lx92_0:                .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n62_coerce_numeric_α:   mov              r11, 28
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 5;                               je    .Lx94_1
                        cmp              al, 3;                               jne   .Lx94_0
                        mov              eax, dword ptr [rsp + 496]
                        cmp              al, 3;                               jne   .Lx94_0
.Lx94_1:                mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n63_binop_α
.Lx94_0:                lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 496]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            mov              r11, 29
                        mov              eax, dword ptr [rsp + 416]
                        mov              ecx, dword ptr [rsp + 496]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx95_2
                        mov              rax, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 504]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   .Lx95_7
.Lx95_2:                and              edx, 1;                              jz    .Lx95_0
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdi, qword ptr [rsp + 504]
                        cmp              al, 5;                               je    .Lx95_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx95_4
.Lx95_3:                movq             xmm0, rsi
.Lx95_4:                cmp              cl, 5;                               je    .Lx95_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx95_6
.Lx95_5:                movq             xmm1, rdi
.Lx95_6:                subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 400], 5
                        mov              qword ptr [rsp + 408], rax
.Lx95_7:                                                                      jmp   n64_call_builtin_icon_α
.Lx95_0:                mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn97:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    r_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_lit_real_α
n64_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   r_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_real_α:         mov              r11, 31
                        mov              qword ptr [rsp + 512], 5             # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n66_coerce_numeric_α
.Lx98_0:                .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n66_coerce_numeric_α:   mov              r11, 32
                        mov              eax, dword ptr [rsp + 352]
                        cmp              al, 5;                               je    .Lx100_1
                        cmp              al, 3;                               jne   .Lx100_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx100_0
.Lx100_1:               mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax;          jmp   n67_binop_α
.Lx100_0:               lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            mov              r11, 33
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_return_α
#-----------------------------------------------------------------------------------------------------------------------
n68_return_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   r_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n70_lit_integer_α
n69_var_β:              mov              r11, 35;                             jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n71_binop_test_α
.Lx105_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_test_α:       mov              r11, 37
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx106_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 112;                             je    .Lx106_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx106_2
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lx106_2
.Lx106_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              rax, rcx;                            jl    n56_disjunction_af
                        mov              rcx, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rcx
                        mov              rcx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rcx;          jmp   n72_var_α
.Lx106_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
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
                        test             eax, eax;                            je    .Lx106_1
                        cmp              eax, 1;                              je    n56_disjunction_af
                                                                              jmp   n72_var_α
.Lx106_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n56_disjunction_af
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n72_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n73_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n74_coerce_numeric_α
.Lx109_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   mov              r11, 40
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx111_1
                        cmp              al, 3;                               jne   .Lx111_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              al, 3;                               jne   .Lx111_0
.Lx111_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n75_binop_α
.Lx111_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 192]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            mov              r11, 41
                        mov              eax, dword ptr [rsp + 192]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx112_2
                        mov              rax, qword ptr [rsp + 200]
                        mov              rdx, 1000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax;          jmp   .Lx112_7
.Lx112_2:               and              edx, 1;                              jz    .Lx112_0
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdi, 1000
                        cmp              al, 5;                               je    .Lx112_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx112_4
.Lx112_3:               movq             xmm0, rsi
.Lx112_4:               cmp              cl, 5;                               je    .Lx112_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx112_6
.Lx112_5:               movq             xmm1, rdi
.Lx112_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 176], 5
                        mov              qword ptr [rsp + 184], rax
.Lx112_7:                                                                     jmp   n76_lit_real_α
.Lx112_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_real_α:         mov              r11, 42
                        mov              qword ptr [rsp + 240], 5             # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n77_coerce_numeric_α
.Lx113_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n77_coerce_numeric_α:   mov              r11, 43
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 5;                               je    .Lx115_1
                        cmp              al, 3;                               jne   .Lx115_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              al, 3;                               jne   .Lx115_0
.Lx115_1:               mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n78_binop_α
.Lx115_0:               lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 160]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            mov              r11, 44
                        mov              eax, dword ptr [rsp + 160]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx116_2
                        mov              rax, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 248]
                        add              rax, rdx
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   .Lx116_7
.Lx116_2:               and              edx, 1;                              jz    .Lx116_0
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdi, qword ptr [rsp + 248]
                        cmp              al, 5;                               je    .Lx116_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx116_4
.Lx116_3:               movq             xmm0, rsi
.Lx116_4:               cmp              cl, 5;                               je    .Lx116_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx116_6
.Lx116_5:               movq             xmm1, rdi
.Lx116_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 144], 5
                        mov              qword ptr [rsp + 152], rax
.Lx116_7:                                                                     jmp   n79_call_builtin_icon_α
.Lx116_0:               mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn118:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    r_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_lit_real_α
n79_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   r_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_real_α:         mov              r11, 46
                        mov              qword ptr [rsp + 256], 5             # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n81_coerce_numeric_α
.Lx119_0:               .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   mov              r11, 47
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 5;                               je    .Lx121_1
                        cmp              al, 3;                               jne   .Lx121_0
                        mov              eax, dword ptr [rsp + 256]
                        cmp              al, 3;                               jne   .Lx121_0
.Lx121_1:               mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 88], rax;           jmp   n82_binop_α
.Lx121_0:               lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 80]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            mov              r11, 48
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    r_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_return_α
#-----------------------------------------------------------------------------------------------------------------------
n83_return_α:           mov              r11, 49
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   r_γ
#-----------------------------------------------------------------------------------------------------------------------
r_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
r_β:
                                                                              jmp   r_ω
#-----------------------------------------------------------------------------------------------------------------------
r_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 592;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
r_ω:
                        add              rsp, 592;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
r_dcα:
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
                        lea              rcx, [rip + .Lx124_3]
                        push             rcx
                        lea              rcx, [rip + .Lx124_2]
                        push             rcx;                                 jmp   FN__r
.Lx124_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx124_3:               add              rsp, 24
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
                        sub              rsp, 2912
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_proc_value_α:      mov              r11, 50
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n126_disjunction_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:     sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n133_lit_real_α
n126_disjunction_as:    mov              r11, 51
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx252_0
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_0:               cmp              eax, 1;                              jne   .Lx252_1
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_1:               cmp              eax, 2;                              jne   .Lx252_2
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_2:               cmp              eax, 3;                              jne   .Lx252_3
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_3:               cmp              eax, 4;                              jne   .Lx252_4
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_4:               cmp              eax, 5;                              jne   .Lx252_5
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_call_proc_staged_α
.Lx252_5:                                                                     jmp   n127_call_proc_staged_α
n126_disjunction_β:     mov              r11, 51
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              je    n126_disjunction_af
                        cmp              eax, 1;                              je    n126_disjunction_af
                        cmp              eax, 2;                              je    n126_disjunction_af
                        cmp              eax, 3;                              je    n126_disjunction_af
                        cmp              eax, 4;                              je    n126_disjunction_af
                                                                              jmp   n126_disjunction_af
n126_disjunction_af:    mov              r11, 51
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 1;                              je    n132_lit_real_α
                        cmp              eax, 2;                              je    n131_lit_integer_α
                        cmp              eax, 3;                              je    n130_lit_real_α
                        cmp              eax, 4;                              je    n129_lit_string_α
                        cmp              eax, 5;                              je    n128_lit_real_α
                        add              rsp, 16;                             jmp   n134_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 52
                        mov              edi, 0
                        lea              rsi, [rsp + 2720]
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx254_1
                        lea              rcx, [rip + .Lx254_4]
                        push             rcx
                        lea              rcx, [rip + .Lx254_3]
                        push             rcx;                                 jmp   rax
.Lx254_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx254_2
.Lx254_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx254_2
.Lx254_1:               call             rt_faildescr@PLT
.Lx254_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
.Lx254_29:              mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    n126_disjunction_β
                                                                              jmp   n126_disjunction_β
n127_call_proc_staged_β:
                        mov              r11, 52;                             jmp   n126_disjunction_β
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_real_α:        mov              r11, 53
                        mov              qword ptr [rsp + 2848], 5            # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n126_disjunction_as
n128_lit_real_β:        mov              r11, 53;                             jmp   n126_disjunction_af
.Lx255_0:               .quad            4643211215818981376
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 54
                        mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n126_disjunction_as
n129_lit_string_β:      mov              r11, 54;                             jmp   n126_disjunction_af
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "4"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_real_α:        mov              r11, 55
                        mov              qword ptr [rsp + 2816], 5            # result
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n126_disjunction_as
n130_lit_real_β:        mov              r11, 55;                             jmp   n126_disjunction_af
.Lx257_0:               .quad            4612248968380809216
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     mov              r11, 56
                        mov              qword ptr [rsp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n126_disjunction_as
n131_lit_integer_β:     mov              r11, 56;                             jmp   n126_disjunction_af
.Lx258_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_real_α:        mov              r11, 57
                        mov              qword ptr [rsp + 2784], 5            # result
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n126_disjunction_as
n132_lit_real_β:        mov              r11, 57;                             jmp   n126_disjunction_af
.Lx259_0:               .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_real_α:        mov              r11, 58
                        mov              qword ptr [rsp + 2768], 5            # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n126_disjunction_as
n133_lit_real_β:        mov              r11, 58;                             jmp   n126_disjunction_af
.Lx260_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n134_proc_value_α:      mov              r11, 59
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n135_disjunction_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n135_disjunction_α:     sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2512], 0;           jmp   n143_lit_real_α
n135_disjunction_as:    mov              r11, 60
                        mov              eax, dword ptr [rsp + 2512]
                        cmp              eax, 0;                              jne   .Lx264_0
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_0:               cmp              eax, 1;                              jne   .Lx264_1
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_1:               cmp              eax, 2;                              jne   .Lx264_2
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_2:               cmp              eax, 3;                              jne   .Lx264_3
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_3:               cmp              eax, 4;                              jne   .Lx264_4
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_4:               cmp              eax, 5;                              jne   .Lx264_5
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_5:               cmp              eax, 6;                              jne   .Lx264_6
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_proc_staged_α
.Lx264_6:                                                                     jmp   n136_call_proc_staged_α
n135_disjunction_β:     mov              r11, 60
                        mov              eax, dword ptr [rsp + 2512]
                        cmp              eax, 0;                              je    n135_disjunction_af
                        cmp              eax, 1;                              je    n135_disjunction_af
                        cmp              eax, 2;                              je    n135_disjunction_af
                        cmp              eax, 3;                              je    n135_disjunction_af
                        cmp              eax, 4;                              je    n135_disjunction_af
                        cmp              eax, 5;                              je    n135_disjunction_af
                                                                              jmp   n135_disjunction_af
n135_disjunction_af:    mov              r11, 60
                        add              dword ptr [rsp + 2512], 1
                        mov              eax, dword ptr [rsp + 2512]
                        cmp              eax, 1;                              je    n142_lit_real_α
                        cmp              eax, 2;                              je    n141_lit_real_α
                        cmp              eax, 3;                              je    n140_keyword_icon_α
                        cmp              eax, 4;                              je    n139_lit_string_α
                        cmp              eax, 5;                              je    n138_lit_integer_α
                        cmp              eax, 6;                              je    n137_lit_integer_α
                        add              rsp, 16;                             jmp   n144_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        mov              r11, 61
                        mov              edi, 0
                        lea              rsi, [rsp + 2480]
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx266_1
                        lea              rcx, [rip + .Lx266_4]
                        push             rcx
                        lea              rcx, [rip + .Lx266_3]
                        push             rcx;                                 jmp   rax
.Lx266_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx266_2
.Lx266_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx266_2
.Lx266_1:               call             rt_faildescr@PLT
.Lx266_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx266_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2416]
                        mov              rdx, qword ptr [rsp + 2424]
.Lx266_29:              mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n135_disjunction_β
                                                                              jmp   n135_disjunction_β
n136_call_proc_staged_β:
                        mov              r11, 61;                             jmp   n135_disjunction_β
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              r11, 62
                        mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n135_disjunction_as
n137_lit_integer_β:     mov              r11, 62;                             jmp   n135_disjunction_af
.Lx267_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n135_disjunction_as
n138_lit_integer_β:     mov              r11, 63;                             jmp   n135_disjunction_af
.Lx268_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 2
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n135_disjunction_as
n139_lit_string_β:      mov              r11, 64;                             jmp   n135_disjunction_af
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "10"
#-----------------------------------------------------------------------------------------------------------------------
n140_keyword_icon_α:    mov              r11, 65
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n135_disjunction_af
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n135_disjunction_as
n140_keyword_icon_β:    mov              r11, 65;                             jmp   n135_disjunction_af
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_real_α:        mov              r11, 66
                        mov              qword ptr [rsp + 2560], 5            # result
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n135_disjunction_as
n141_lit_real_β:        mov              r11, 66;                             jmp   n135_disjunction_af
.Lx271_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_real_α:        mov              r11, 67
                        mov              qword ptr [rsp + 2544], 5            # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n135_disjunction_as
n142_lit_real_β:        mov              r11, 67;                             jmp   n135_disjunction_af
.Lx272_0:               .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_real_α:        mov              r11, 68
                        mov              qword ptr [rsp + 2528], 5            # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n135_disjunction_as
n143_lit_real_β:        mov              r11, 68;                             jmp   n135_disjunction_af
.Lx273_0:               .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n144_proc_value_α:      mov              r11, 69
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n145_disjunction_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n145_disjunction_α:     sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n154_lit_real_α
n145_disjunction_as:    mov              r11, 70
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Lx277_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_0:               cmp              eax, 1;                              jne   .Lx277_1
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_1:               cmp              eax, 2;                              jne   .Lx277_2
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_2:               cmp              eax, 3;                              jne   .Lx277_3
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_3:               cmp              eax, 4;                              jne   .Lx277_4
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_4:               cmp              eax, 5;                              jne   .Lx277_5
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_5:               cmp              eax, 6;                              jne   .Lx277_6
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_lit_integer_α
.Lx277_6:                                                                     jmp   n146_lit_integer_α
n145_disjunction_β:     mov              r11, 70
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              je    n145_disjunction_af
                        cmp              eax, 1;                              je    n145_disjunction_af
                        cmp              eax, 2;                              je    n145_disjunction_af
                        cmp              eax, 3;                              je    n145_disjunction_af
                        cmp              eax, 4;                              je    n145_disjunction_af
                        cmp              eax, 5;                              je    n145_disjunction_af
                                                                              jmp   n145_disjunction_af
n145_disjunction_af:    mov              r11, 70
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 1;                              je    n153_lit_real_α
                        cmp              eax, 2;                              je    n152_lit_real_α
                        cmp              eax, 3;                              je    n151_keyword_icon_α
                        cmp              eax, 4;                              je    n150_lit_string_α
                        cmp              eax, 5;                              je    n149_lit_integer_α
                        cmp              eax, 6;                              je    n148_lit_integer_α
                        add              rsp, 16;                             jmp   n155_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n147_call_proc_staged_α
.Lx278_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              r11, 72
                        lea              rsi, [rsp + 2224]
                        lea              rdx, [rsp + 2240]
                        lea              rcx, [rsp + 2400]
                        call             try_dcα;                             jmp   .Lx280_2
.Lx280_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx280_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
.Lx280_29:              mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n145_disjunction_β
                                                                              jmp   n145_disjunction_β
n147_call_proc_staged_β:
                        mov              r11, 72;                             jmp   n145_disjunction_β
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     mov              r11, 73
                        mov              qword ptr [rsp + 2384], 3            # result
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n145_disjunction_as
n148_lit_integer_β:     mov              r11, 73;                             jmp   n145_disjunction_af
.Lx281_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rsp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n145_disjunction_as
n149_lit_integer_β:     mov              r11, 74;                             jmp   n145_disjunction_af
.Lx282_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 2
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n145_disjunction_as
n150_lit_string_β:      mov              r11, 75;                             jmp   n145_disjunction_af
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "10"
#-----------------------------------------------------------------------------------------------------------------------
n151_keyword_icon_α:    mov              r11, 76
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n145_disjunction_af
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n145_disjunction_as
n151_keyword_icon_β:    mov              r11, 76;                             jmp   n145_disjunction_af
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_real_α:        mov              r11, 77
                        mov              qword ptr [rsp + 2304], 5            # result
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n145_disjunction_as
n152_lit_real_β:        mov              r11, 77;                             jmp   n145_disjunction_af
.Lx285_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_real_α:        mov              r11, 78
                        mov              qword ptr [rsp + 2288], 5            # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n145_disjunction_as
n153_lit_real_β:        mov              r11, 78;                             jmp   n145_disjunction_af
.Lx286_0:               .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_real_α:        mov              r11, 79
                        mov              qword ptr [rsp + 2272], 5            # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n145_disjunction_as
n154_lit_real_β:        mov              r11, 79;                             jmp   n145_disjunction_af
.Lx287_0:               .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n155_proc_value_α:      mov              r11, 80
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n156_disjunction_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n156_disjunction_α:     sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 2032], 0;           jmp   n163_lit_integer_α
n156_disjunction_as:    mov              r11, 81
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 0;                              jne   .Lx291_0
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_0:               cmp              eax, 1;                              jne   .Lx291_1
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_1:               cmp              eax, 2;                              jne   .Lx291_2
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_2:               cmp              eax, 3;                              jne   .Lx291_3
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_3:               cmp              eax, 4;                              jne   .Lx291_4
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_4:               cmp              eax, 5;                              jne   .Lx291_5
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_call_proc_staged_α
.Lx291_5:                                                                     jmp   n157_call_proc_staged_α
n156_disjunction_β:     mov              r11, 81
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 0;                              je    n156_disjunction_af
                        cmp              eax, 1;                              je    n156_disjunction_af
                        cmp              eax, 2;                              je    n156_disjunction_af
                        cmp              eax, 3;                              je    n156_disjunction_af
                        cmp              eax, 4;                              je    n156_disjunction_af
                                                                              jmp   n156_disjunction_af
n156_disjunction_af:    mov              r11, 81
                        add              dword ptr [rsp + 2032], 1
                        mov              eax, dword ptr [rsp + 2032]
                        cmp              eax, 1;                              je    n162_lit_integer_α
                        cmp              eax, 2;                              je    n161_lit_integer_α
                        cmp              eax, 3;                              je    n160_lit_real_α
                        cmp              eax, 4;                              je    n159_lit_string_α
                        cmp              eax, 5;                              je    n158_lit_charset_α
                        add              rsp, 16;                             jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              r11, 82
                        mov              edi, 0
                        lea              rsi, [rsp + 2000]
                        lea              rdx, [rsp + 2016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx293_1
                        lea              rcx, [rip + .Lx293_4]
                        push             rcx
                        lea              rcx, [rip + .Lx293_3]
                        push             rcx;                                 jmp   rax
.Lx293_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx293_2
.Lx293_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx293_2
.Lx293_1:               call             rt_faildescr@PLT
.Lx293_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx293_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
.Lx293_29:              mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n156_disjunction_β
                                                                              jmp   n156_disjunction_β
n157_call_proc_staged_β:
                        mov              r11, 82;                             jmp   n156_disjunction_β
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_charset_α:     mov              r11, 83
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n156_disjunction_as
n158_lit_charset_β:     mov              r11, 83;                             jmp   n156_disjunction_af
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n156_disjunction_as
n159_lit_string_β:      mov              r11, 84;                             jmp   n156_disjunction_af
.Lx295_0:               .quad            .Lx295_0_s
.Lx295_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_real_α:        mov              r11, 85
                        mov              qword ptr [rsp + 2096], 5            # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n156_disjunction_as
n160_lit_real_β:        mov              r11, 85;                             jmp   n156_disjunction_af
.Lx296_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     mov              r11, 86
                        mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n156_disjunction_as
n161_lit_integer_β:     mov              r11, 86;                             jmp   n156_disjunction_af
.Lx297_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n156_disjunction_as
n162_lit_integer_β:     mov              r11, 87;                             jmp   n156_disjunction_af
.Lx298_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n156_disjunction_as
n163_lit_integer_β:     mov              r11, 88;                             jmp   n156_disjunction_af
.Lx299_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        mov              r11, 89
                        .section         .rodata
.Lrkfn301:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n165_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_proc_value_α
n164_call_builtin_icon_β:
                        mov              r11, 89;                             jmp   n165_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n165_proc_value_α:      mov              r11, 90
                        mov              rdi, qword ptr [rip + .Lx303_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n166_disjunction_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "dtor"
#-----------------------------------------------------------------------------------------------------------------------
n166_disjunction_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1776], 0;           jmp   n174_lit_integer_α
n166_disjunction_as:    mov              r11, 91
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              jne   .Lx305_0
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_0:               cmp              eax, 1;                              jne   .Lx305_1
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_1:               cmp              eax, 2;                              jne   .Lx305_2
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_2:               cmp              eax, 3;                              jne   .Lx305_3
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_3:               cmp              eax, 4;                              jne   .Lx305_4
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_4:               cmp              eax, 5;                              jne   .Lx305_5
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_5:               cmp              eax, 6;                              jne   .Lx305_6
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx305_6:                                                                     jmp   n167_call_proc_staged_α
n166_disjunction_β:     mov              r11, 91
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 0;                              je    n166_disjunction_af
                        cmp              eax, 1;                              je    n166_disjunction_af
                        cmp              eax, 2;                              je    n166_disjunction_af
                        cmp              eax, 3;                              je    n166_disjunction_af
                        cmp              eax, 4;                              je    n166_disjunction_af
                        cmp              eax, 5;                              je    n166_disjunction_af
                                                                              jmp   n166_disjunction_af
n166_disjunction_af:    mov              r11, 91
                        add              dword ptr [rsp + 1776], 1
                        mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 1;                              je    n173_lit_integer_α
                        cmp              eax, 2;                              je    n172_lit_integer_α
                        cmp              eax, 3;                              je    n171_lit_charset_α
                        cmp              eax, 4;                              je    n170_lit_string_α
                        cmp              eax, 5;                              je    n169_lit_integer_α
                        cmp              eax, 6;                              je    n168_lit_integer_α
                        add              rsp, 16;                             jmp   n175_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              r11, 92
                        mov              edi, 0
                        lea              rsi, [rsp + 1744]
                        lea              rdx, [rsp + 1760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx307_1
                        lea              rcx, [rip + .Lx307_4]
                        push             rcx
                        lea              rcx, [rip + .Lx307_3]
                        push             rcx;                                 jmp   rax
.Lx307_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx307_2
.Lx307_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx307_2
.Lx307_1:               call             rt_faildescr@PLT
.Lx307_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx307_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
.Lx307_29:              mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n166_disjunction_β
                                                                              jmp   n166_disjunction_β
n167_call_proc_staged_β:
                        mov              r11, 92;                             jmp   n166_disjunction_β
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n166_disjunction_as
n168_lit_integer_β:     mov              r11, 93;                             jmp   n166_disjunction_af
.Lx308_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              r11, 94
                        mov              qword ptr [rsp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n166_disjunction_as
n169_lit_integer_β:     mov              r11, 94;                             jmp   n166_disjunction_af
.Lx309_0:               .quad            360
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 95
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 2
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n166_disjunction_as
n170_lit_string_β:      mov              r11, 95;                             jmp   n166_disjunction_af
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "45"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_charset_α:     mov              r11, 96
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], -1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n166_disjunction_as
n171_lit_charset_β:     mov              r11, 96;                             jmp   n166_disjunction_af
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n166_disjunction_as
n172_lit_integer_β:     mov              r11, 97;                             jmp   n166_disjunction_af
.Lx312_0:               .quad            18446744073709551526
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     mov              r11, 98
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n166_disjunction_as
n173_lit_integer_β:     mov              r11, 98;                             jmp   n166_disjunction_af
.Lx313_0:               .quad            18446744073709551256
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n166_disjunction_as
n174_lit_integer_β:     mov              r11, 99;                             jmp   n166_disjunction_af
.Lx314_0:               .quad            18446744073709550616
#-----------------------------------------------------------------------------------------------------------------------
n175_proc_value_α:      mov              r11, 100
                        mov              rdi, qword ptr [rip + .Lx316_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n176_disjunction_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "rtod"
#-----------------------------------------------------------------------------------------------------------------------
n176_disjunction_α:     sub              rsp, 16
                        mov              r11, 101
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1168], 0;           jmp   n199_lit_integer_α
n176_disjunction_as:    mov              r11, 101
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              jne   .Lx318_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_0:               cmp              eax, 1;                              jne   .Lx318_1
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_1:               cmp              eax, 2;                              jne   .Lx318_2
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_2:               cmp              eax, 3;                              jne   .Lx318_3
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_3:               cmp              eax, 4;                              jne   .Lx318_4
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_4:               cmp              eax, 5;                              jne   .Lx318_5
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_5:               cmp              eax, 6;                              jne   .Lx318_6
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_6:               cmp              eax, 7;                              jne   .Lx318_7
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n177_call_proc_staged_α
.Lx318_7:                                                                     jmp   n177_call_proc_staged_α
n176_disjunction_β:     mov              r11, 101
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              je    n176_disjunction_af
                        cmp              eax, 1;                              je    n176_disjunction_af
                        cmp              eax, 2;                              je    n176_disjunction_af
                        cmp              eax, 3;                              je    n176_disjunction_af
                        cmp              eax, 4;                              je    n176_disjunction_af
                        cmp              eax, 5;                              je    n176_disjunction_af
                        cmp              eax, 6;                              je    n176_disjunction_af
                                                                              jmp   n176_disjunction_af
n176_disjunction_af:    mov              r11, 101
                        add              dword ptr [rsp + 1168], 1
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 1;                              je    n195_lit_integer_α
                        cmp              eax, 2;                              je    n192_keyword_icon_α
                        cmp              eax, 3;                              je    n191_lit_charset_α
                        cmp              eax, 4;                              je    n187_keyword_icon_α
                        cmp              eax, 5;                              je    n183_keyword_icon_α
                        cmp              eax, 6;                              je    n182_lit_string_α
                        cmp              eax, 7;                              je    n178_lit_integer_α
                        add              rsp, 16;                             jmp   n203_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              r11, 102
                        mov              edi, 0
                        lea              rsi, [rsp + 1136]
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx320_1
                        lea              rcx, [rip + .Lx320_4]
                        push             rcx
                        lea              rcx, [rip + .Lx320_3]
                        push             rcx;                                 jmp   rax
.Lx320_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx320_2
.Lx320_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx320_2
.Lx320_1:               call             rt_faildescr@PLT
.Lx320_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx320_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
.Lx320_29:              mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n176_disjunction_β
                                                                              jmp   n176_disjunction_β
n177_call_proc_staged_β:
                        mov              r11, 102;                            jmp   n176_disjunction_β
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rsp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n179_keyword_icon_α
n178_lit_integer_β:     mov              r11, 103;                            jmp   n176_disjunction_af
.Lx321_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n179_keyword_icon_α:    mov              r11, 104
                        mov              rdi, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n180_coerce_numeric_α
n179_keyword_icon_β:    mov              r11, 104;                            jmp   n176_disjunction_af
.Lx322_0:               .quad            .Lx322_0_s
.Lx322_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n180_coerce_numeric_α:  mov              r11, 105
                        mov              eax, dword ptr [rsp + 1648]
                        cmp              al, 5;                               je    .Lx324_1
                        cmp              al, 3;                               jne   .Lx324_0
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 3;                               jne   .Lx324_0
.Lx324_1:               mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n181_binop_α
.Lx324_0:               lea              rdi, [rsp + 1648]
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1616]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n181_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n181_binop_α:           mov              r11, 106
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1616]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx325_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rsp + 1624]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1600], 3
                        mov              qword ptr [rsp + 1608], rax;         jmp   .Lx325_7
.Lx325_2:               and              edx, 1;                              jz    .Lx325_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 1624]
                        cmp              al, 5;                               je    .Lx325_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx325_4
.Lx325_3:               movq             xmm0, rsi
.Lx325_4:               cmp              cl, 5;                               je    .Lx325_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx325_6
.Lx325_5:               movq             xmm1, rdi
.Lx325_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1600], 5
                        mov              qword ptr [rsp + 1608], rax
.Lx325_7:                                                                     jmp   n176_disjunction_as
.Lx325_0:               mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1616]
                        mov              rcx, qword ptr [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_disjunction_as
n181_binop_β:           mov              r11, 106;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 12
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n176_disjunction_as
n182_lit_string_β:      mov              r11, 107;                            jmp   n176_disjunction_af
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          "3.1415936535"
#-----------------------------------------------------------------------------------------------------------------------
n183_keyword_icon_α:    mov              r11, 108
                        mov              rdi, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n184_lit_integer_α
n183_keyword_icon_β:    mov              r11, 108;                            jmp   n176_disjunction_af
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n185_coerce_numeric_α
.Lx328_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n185_coerce_numeric_α:  mov              r11, 110
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              al, 5;                               je    .Lx330_1
                        cmp              al, 3;                               jne   .Lx330_0
                        mov              eax, dword ptr [rsp + 1568]
                        cmp              al, 3;                               jne   .Lx330_0
.Lx330_1:               mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n186_binop_α
.Lx330_0:               lea              rdi, [rsp + 1536]
                        lea              rsi, [rsp + 1568]
                        lea              rdx, [rsp + 1520]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n186_binop_α:           mov              r11, 111
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              rdx, qword ptr [rsp + 1568]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_disjunction_as
n186_binop_β:           mov              r11, 111;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n187_keyword_icon_α:    mov              r11, 112
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n188_lit_integer_α
n187_keyword_icon_β:    mov              r11, 112;                            jmp   n176_disjunction_af
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n189_coerce_numeric_α
.Lx333_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n189_coerce_numeric_α:  mov              r11, 114
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              al, 5;                               je    .Lx335_1
                        cmp              al, 3;                               jne   .Lx335_0
                        mov              eax, dword ptr [rsp + 1488]
                        cmp              al, 3;                               jne   .Lx335_0
.Lx335_1:               mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n190_binop_α
.Lx335_0:               lea              rdi, [rsp + 1456]
                        lea              rsi, [rsp + 1488]
                        lea              rdx, [rsp + 1440]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:           mov              r11, 115
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1488]
                        mov              rcx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_disjunction_as
n190_binop_β:           mov              r11, 115;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_charset_α:     mov              r11, 116
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], -1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n176_disjunction_as
n191_lit_charset_β:     mov              r11, 116;                            jmp   n176_disjunction_af
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n192_keyword_icon_α:    mov              r11, 117
                        mov              rdi, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n193_coerce_numeric_α
n192_keyword_icon_β:    mov              r11, 117;                            jmp   n176_disjunction_af
.Lx338_0:               .quad            .Lx338_0_s
.Lx338_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n193_coerce_numeric_α:  mov              r11, 118
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 5;                               je    .Lx340_1
                        cmp              al, 3;                               jne   .Lx340_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lx340_0
.Lx340_1:               mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n194_unop_α
.Lx340_0:               lea              rdi, [rsp + 1376]
                        lea              rsi, [rsp + 1376]
                        lea              rdx, [rsp + 1360]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n194_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n194_unop_α:            mov              r11, 119
                        mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n176_disjunction_as
n194_unop_β:            mov              r11, 119;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n196_keyword_icon_α
n195_lit_integer_β:     mov              r11, 120;                            jmp   n176_disjunction_af
.Lx342_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n196_keyword_icon_α:    mov              r11, 121
                        mov              rdi, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n197_coerce_numeric_α
n196_keyword_icon_β:    mov              r11, 121;                            jmp   n176_disjunction_af
.Lx343_0:               .quad            .Lx343_0_s
.Lx343_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n197_coerce_numeric_α:  mov              r11, 122
                        mov              eax, dword ptr [rsp + 1312]
                        cmp              al, 5;                               je    .Lx345_1
                        cmp              al, 3;                               jne   .Lx345_0
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              al, 3;                               jne   .Lx345_0
.Lx345_1:               mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n198_binop_α
.Lx345_0:               lea              rdi, [rsp + 1312]
                        lea              rsi, [rsp + 1296]
                        lea              rdx, [rsp + 1280]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n198_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n198_binop_α:           mov              r11, 123
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1280]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx346_2
                        mov              rax, -2
                        mov              rdx, qword ptr [rsp + 1288]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1264], 3
                        mov              qword ptr [rsp + 1272], rax;         jmp   .Lx346_7
.Lx346_2:               and              edx, 1;                              jz    .Lx346_0
                        mov              rsi, -2
                        mov              rdi, qword ptr [rsp + 1288]
                        cmp              al, 5;                               je    .Lx346_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx346_4
.Lx346_3:               movq             xmm0, rsi
.Lx346_4:               cmp              cl, 5;                               je    .Lx346_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx346_6
.Lx346_5:               movq             xmm1, rdi
.Lx346_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1264], 5
                        mov              qword ptr [rsp + 1272], rax
.Lx346_7:                                                                     jmp   n176_disjunction_as
.Lx346_0:               mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_disjunction_as
n198_binop_β:           mov              r11, 123;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     mov              r11, 124
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n200_keyword_icon_α
n199_lit_integer_β:     mov              r11, 124;                            jmp   n176_disjunction_af
.Lx347_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n200_keyword_icon_α:    mov              r11, 125
                        mov              rdi, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n201_coerce_numeric_α
n200_keyword_icon_β:    mov              r11, 125;                            jmp   n176_disjunction_af
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n201_coerce_numeric_α:  mov              r11, 126
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              al, 5;                               je    .Lx350_1
                        cmp              al, 3;                               jne   .Lx350_0
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              al, 3;                               jne   .Lx350_0
.Lx350_1:               mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n202_binop_α
.Lx350_0:               lea              rdi, [rsp + 1232]
                        lea              rsi, [rsp + 1216]
                        lea              rdx, [rsp + 1200]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           mov              r11, 127
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 1200]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx351_2
                        mov              rax, -3
                        mov              rdx, qword ptr [rsp + 1208]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1184], 3
                        mov              qword ptr [rsp + 1192], rax;         jmp   .Lx351_7
.Lx351_2:               and              edx, 1;                              jz    .Lx351_0
                        mov              rsi, -3
                        mov              rdi, qword ptr [rsp + 1208]
                        cmp              al, 5;                               je    .Lx351_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx351_4
.Lx351_3:               movq             xmm0, rsi
.Lx351_4:               cmp              cl, 5;                               je    .Lx351_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx351_6
.Lx351_5:               movq             xmm1, rdi
.Lx351_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1184], 5
                        mov              qword ptr [rsp + 1192], rax
.Lx351_7:                                                                     jmp   n176_disjunction_as
.Lx351_0:               mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n176_disjunction_af
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_disjunction_as
n202_binop_β:           mov              r11, 127;                            jmp   n176_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n203_disjunction_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n216_proc_value_α
n203_disjunction_as:    mov              r11, 128
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx353_0
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_disjunction_α
.Lx353_0:               cmp              eax, 1;                              jne   .Lx353_1
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_disjunction_α
.Lx353_1:               cmp              eax, 2;                              jne   .Lx353_2
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_disjunction_α
.Lx353_2:                                                                     jmp   n204_disjunction_α
n203_disjunction_β:     mov              r11, 128
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              je    n203_disjunction_af
                        cmp              eax, 1;                              je    n203_disjunction_af
                                                                              jmp   n203_disjunction_af
n203_disjunction_af:    mov              r11, 128
                        add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 1;                              je    n215_proc_value_α
                        cmp              eax, 2;                              je    n214_proc_value_α
                        add              rsp, 16;                             jmp   n217_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n204_disjunction_α:     sub              rsp, 16
                        mov              r11, 129
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n208_keyword_icon_α
n204_disjunction_as:    mov              r11, 129
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Lx355_0
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_call_proc_staged_α
.Lx355_0:               cmp              eax, 1;                              jne   .Lx355_1
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_call_proc_staged_α
.Lx355_1:               cmp              eax, 2;                              jne   .Lx355_2
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_call_proc_staged_α
.Lx355_2:                                                                     jmp   n205_call_proc_staged_α
n204_disjunction_β:     mov              r11, 129
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              je    n204_disjunction_af
                        cmp              eax, 1;                              je    n204_disjunction_af
                                                                              jmp   n204_disjunction_af
n204_disjunction_af:    mov              r11, 129
                        add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 1;                              je    n207_lit_charset_α
                        cmp              eax, 2;                              je    n206_lit_string_α
                        add              rsp, 16;                             jmp   n203_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        mov              r11, 130
                        mov              edi, 0
                        lea              rsi, [rsp + 816]
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx357_1
                        lea              rcx, [rip + .Lx357_4]
                        push             rcx
                        lea              rcx, [rip + .Lx357_3]
                        push             rcx;                                 jmp   rax
.Lx357_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx357_2
.Lx357_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx357_2
.Lx357_1:               call             rt_faildescr@PLT
.Lx357_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx357_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
.Lx357_29:              mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n204_disjunction_β
                                                                              jmp   n204_disjunction_β
n205_call_proc_staged_β:
                        mov              r11, 130;                            jmp   n204_disjunction_β
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 12
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n204_disjunction_as
n206_lit_string_β:      mov              r11, 131;                            jmp   n204_disjunction_af
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          "3.1415926535"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_charset_α:     mov              r11, 132
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], -1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n204_disjunction_as
n207_lit_charset_β:     mov              r11, 132;                            jmp   n204_disjunction_af
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n208_keyword_icon_α:    mov              r11, 133
                        mov              rdi, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n204_disjunction_af
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n209_coerce_numeric_α
n208_keyword_icon_β:    mov              r11, 133;                            jmp   n204_disjunction_af
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "&pi"
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  mov              r11, 134
                        mov              eax, dword ptr [rsp + 992]
                        cmp              al, 5;                               je    .Lx362_1
                        cmp              al, 3;                               jne   .Lx362_0
                        mov              eax, dword ptr [rsp + 992]
                        cmp              al, 3;                               jne   .Lx362_0
.Lx362_1:               mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 984], rax;          jmp   n210_unop_α
.Lx362_0:               lea              rdi, [rsp + 992]
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 976]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n210_unop_α:            mov              r11, 135
                        mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n211_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n212_coerce_numeric_α
.Lx364_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n212_coerce_numeric_α:  mov              r11, 137
                        mov              eax, dword ptr [rsp + 960]
                        cmp              al, 5;                               je    .Lx366_1
                        cmp              al, 3;                               jne   .Lx366_0
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              al, 3;                               jne   .Lx366_0
.Lx366_1:               mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 952], rax;          jmp   n213_binop_α
.Lx366_0:               lea              rdi, [rsp + 960]
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 944]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n213_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:           mov              r11, 138
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 1024]
                        mov              rcx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              al, 104;                             je    n204_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_disjunction_as
n213_binop_β:           mov              r11, 138;                            jmp   n204_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n214_proc_value_α:      mov              r11, 139
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n203_disjunction_as
n214_proc_value_β:      mov              r11, 139;                            jmp   n203_disjunction_af
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n215_proc_value_α:      mov              r11, 140
                        mov              rdi, qword ptr [rip + .Lx371_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n203_disjunction_as
n215_proc_value_β:      mov              r11, 140;                            jmp   n203_disjunction_af
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n216_proc_value_α:      mov              r11, 141
                        mov              rdi, qword ptr [rip + .Lx373_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n203_disjunction_as
n216_proc_value_β:      mov              r11, 141;                            jmp   n203_disjunction_af
.Lx373_0:               .quad            .Lx373_0_s
.Lx373_0_s:             .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n217_disjunction_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 592], 0;            jmp   n226_proc_value_α
n217_disjunction_as:    mov              r11, 142
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              jne   .Lx375_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_disjunction_α
.Lx375_0:               cmp              eax, 1;                              jne   .Lx375_1
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_disjunction_α
.Lx375_1:                                                                     jmp   n218_disjunction_α
n217_disjunction_β:     mov              r11, 142
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              je    n217_disjunction_af
                                                                              jmp   n217_disjunction_af
n217_disjunction_af:    mov              r11, 142
                        add              dword ptr [rsp + 592], 1
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 1;                              je    n225_proc_value_α
                        add              rsp, 16;                             jmp   n227_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n218_disjunction_α:     sub              rsp, 16
                        mov              r11, 143
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n224_lit_charset_α
n218_disjunction_as:    mov              r11, 143
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx377_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_proc_staged_α
.Lx377_0:               cmp              eax, 1;                              jne   .Lx377_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_proc_staged_α
.Lx377_1:               cmp              eax, 2;                              jne   .Lx377_2
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_proc_staged_α
.Lx377_2:               cmp              eax, 3;                              jne   .Lx377_3
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_proc_staged_α
.Lx377_3:               cmp              eax, 4;                              jne   .Lx377_4
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_call_proc_staged_α
.Lx377_4:                                                                     jmp   n219_call_proc_staged_α
n218_disjunction_β:     mov              r11, 143
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n218_disjunction_af
                        cmp              eax, 1;                              je    n218_disjunction_af
                        cmp              eax, 2;                              je    n218_disjunction_af
                        cmp              eax, 3;                              je    n218_disjunction_af
                                                                              jmp   n218_disjunction_af
n218_disjunction_af:    mov              r11, 143
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n223_lit_real_α
                        cmp              eax, 2;                              je    n222_lit_string_α
                        cmp              eax, 3;                              je    n221_lit_real_α
                        cmp              eax, 4;                              je    n220_lit_real_α
                        add              rsp, 16;                             jmp   n217_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              r11, 144
                        mov              edi, 0
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx379_1
                        lea              rcx, [rip + .Lx379_4]
                        push             rcx
                        lea              rcx, [rip + .Lx379_3]
                        push             rcx;                                 jmp   rax
.Lx379_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx379_2
.Lx379_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx379_2
.Lx379_1:               call             rt_faildescr@PLT
.Lx379_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx379_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx379_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n218_disjunction_β
                                                                              jmp   n218_disjunction_β
n219_call_proc_staged_β:
                        mov              r11, 144;                            jmp   n218_disjunction_β
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_real_α:        mov              r11, 145
                        mov              qword ptr [rsp + 736], 5             # result
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n218_disjunction_as
n220_lit_real_β:        mov              r11, 145;                            jmp   n218_disjunction_af
.Lx380_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_real_α:        mov              r11, 146
                        mov              qword ptr [rsp + 720], 5             # result
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n218_disjunction_as
n221_lit_real_β:        mov              r11, 146;                            jmp   n218_disjunction_af
.Lx381_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n218_disjunction_as
n222_lit_string_β:      mov              r11, 147;                            jmp   n218_disjunction_af
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_real_α:        mov              r11, 148
                        mov              qword ptr [rsp + 688], 5             # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n218_disjunction_as
n223_lit_real_β:        mov              r11, 148;                            jmp   n218_disjunction_af
.Lx383_0:               .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_charset_α:     mov              r11, 149
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], -1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n218_disjunction_as
n224_lit_charset_β:     mov              r11, 149;                            jmp   n218_disjunction_af
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "-1"
#-----------------------------------------------------------------------------------------------------------------------
n225_proc_value_α:      mov              r11, 150
                        mov              rdi, qword ptr [rip + .Lx386_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n217_disjunction_as
n225_proc_value_β:      mov              r11, 150;                            jmp   n217_disjunction_af
.Lx386_0:               .quad            .Lx386_0_s
.Lx386_0_s:             .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n226_proc_value_α:      mov              r11, 151
                        mov              rdi, qword ptr [rip + .Lx388_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n217_disjunction_as
n226_proc_value_β:      mov              r11, 151;                            jmp   n217_disjunction_af
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n227_proc_value_α:      mov              r11, 152
                        mov              rdi, qword ptr [rip + .Lx390_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n228_disjunction_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n228_disjunction_α:     sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n238_lit_string_α
n228_disjunction_as:    mov              r11, 153
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx392_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_0:               cmp              eax, 1;                              jne   .Lx392_1
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_1:               cmp              eax, 2;                              jne   .Lx392_2
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_2:               cmp              eax, 3;                              jne   .Lx392_3
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_3:               cmp              eax, 4;                              jne   .Lx392_4
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_4:               cmp              eax, 5;                              jne   .Lx392_5
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_5:               cmp              eax, 6;                              jne   .Lx392_6
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_6:               cmp              eax, 7;                              jne   .Lx392_7
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_7:               cmp              eax, 8;                              jne   .Lx392_8
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_call_proc_staged_α
.Lx392_8:                                                                     jmp   n229_call_proc_staged_α
n228_disjunction_β:     mov              r11, 153
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n228_disjunction_af
                        cmp              eax, 1;                              je    n228_disjunction_af
                        cmp              eax, 2;                              je    n228_disjunction_af
                        cmp              eax, 3;                              je    n228_disjunction_af
                        cmp              eax, 4;                              je    n228_disjunction_af
                        cmp              eax, 5;                              je    n228_disjunction_af
                        cmp              eax, 6;                              je    n228_disjunction_af
                        cmp              eax, 7;                              je    n228_disjunction_af
                                                                              jmp   n228_disjunction_af
n228_disjunction_af:    mov              r11, 153
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n237_lit_integer_α
                        cmp              eax, 2;                              je    n236_lit_integer_α
                        cmp              eax, 3;                              je    n235_lit_real_α
                        cmp              eax, 4;                              je    n234_lit_charset_α
                        cmp              eax, 5;                              je    n233_lit_real_α
                        cmp              eax, 6;                              je    n232_lit_integer_α
                        cmp              eax, 7;                              je    n231_lit_integer_α
                        cmp              eax, 8;                              je    n230_lit_integer_α
                        add              rsp, 16;                             jmp   n239_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        mov              r11, 154
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
                        test             rax, rax;                            je    .Lx394_1
                        lea              rcx, [rip + .Lx394_4]
                        push             rcx
                        lea              rcx, [rip + .Lx394_3]
                        push             rcx;                                 jmp   rax
.Lx394_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx394_2
.Lx394_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx394_2
.Lx394_1:               call             rt_faildescr@PLT
.Lx394_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx394_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx394_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n228_disjunction_β
                                                                              jmp   n228_disjunction_β
n229_call_proc_staged_β:
                        mov              r11, 154;                            jmp   n228_disjunction_β
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n228_disjunction_as
n230_lit_integer_β:     mov              r11, 155;                            jmp   n228_disjunction_af
.Lx395_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n228_disjunction_as
n231_lit_integer_β:     mov              r11, 156;                            jmp   n228_disjunction_af
.Lx396_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n228_disjunction_as
n232_lit_integer_β:     mov              r11, 157;                            jmp   n228_disjunction_af
.Lx397_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_real_α:        mov              r11, 158
                        mov              qword ptr [rsp + 448], 5             # result
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n228_disjunction_as
n233_lit_real_β:        mov              r11, 158;                            jmp   n228_disjunction_af
.Lx398_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_charset_α:     mov              r11, 159
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], -1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n228_disjunction_as
n234_lit_charset_β:     mov              r11, 159;                            jmp   n228_disjunction_af
.Lx399_0:               .quad            .Lx399_0_s
.Lx399_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_real_α:        mov              r11, 160
                        mov              qword ptr [rsp + 416], 5             # result
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n228_disjunction_as
n235_lit_real_β:        mov              r11, 160;                            jmp   n228_disjunction_af
.Lx400_0:               .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n228_disjunction_as
n236_lit_integer_β:     mov              r11, 161;                            jmp   n228_disjunction_af
.Lx401_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n228_disjunction_as
n237_lit_integer_β:     mov              r11, 162;                            jmp   n228_disjunction_af
.Lx402_0:               .quad            18446744073709551569
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 5
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n228_disjunction_as
n238_lit_string_β:      mov              r11, 163;                            jmp   n228_disjunction_af
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "-1000"
#-----------------------------------------------------------------------------------------------------------------------
n239_proc_value_α:      mov              r11, 164
                        mov              rdi, qword ptr [rip + .Lx405_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n240_disjunction_α
.Lx405_0:               .quad            .Lx405_0_s
.Lx405_0_s:             .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n240_disjunction_α:     sub              rsp, 16
                        mov              r11, 165
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 112], 0;            jmp   n248_lit_integer_α
n240_disjunction_as:    mov              r11, 165
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              jne   .Lx407_0
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_disjunction_α
.Lx407_0:               cmp              eax, 1;                              jne   .Lx407_1
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_disjunction_α
.Lx407_1:               cmp              eax, 2;                              jne   .Lx407_2
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_disjunction_α
.Lx407_2:                                                                     jmp   n241_disjunction_α
n240_disjunction_β:     mov              r11, 165
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 0;                              je    n240_disjunction_af
                        cmp              eax, 1;                              je    n240_disjunction_af
                                                                              jmp   n240_disjunction_af
n240_disjunction_af:    mov              r11, 165
                        add              dword ptr [rsp + 112], 1
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 1;                              je    n247_lit_charset_α
                        cmp              eax, 2;                              je    n246_lit_string_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_disjunction_α:     sub              rsp, 16
                        mov              r11, 166
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 192], 0;            jmp   n245_lit_charset_α
n241_disjunction_as:    mov              r11, 166
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              jne   .Lx409_0
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_call_proc_staged_α
.Lx409_0:               cmp              eax, 1;                              jne   .Lx409_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_call_proc_staged_α
.Lx409_1:               cmp              eax, 2;                              jne   .Lx409_2
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_call_proc_staged_α
.Lx409_2:                                                                     jmp   n242_call_proc_staged_α
n241_disjunction_β:     mov              r11, 166
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              je    n241_disjunction_af
                        cmp              eax, 1;                              je    n241_disjunction_af
                                                                              jmp   n241_disjunction_af
n241_disjunction_af:    mov              r11, 166
                        add              dword ptr [rsp + 192], 1
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 1;                              je    n244_lit_string_α
                        cmp              eax, 2;                              je    n243_lit_integer_α
                        add              rsp, 16;                             jmp   n240_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n242_call_proc_staged_α:
                        mov              r11, 167
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 96]
                        lea              rcx, [rsp + 176]
                        call             try_dcα;                             jmp   .Lx411_2
.Lx411_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx411_29
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
.Lx411_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n241_disjunction_β
                                                                              jmp   n241_disjunction_β
n242_call_proc_staged_β:
                        mov              r11, 167;                            jmp   n241_disjunction_β
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n241_disjunction_as
n243_lit_integer_β:     mov              r11, 168;                            jmp   n241_disjunction_af
.Lx412_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n241_disjunction_as
n244_lit_string_β:      mov              r11, 169;                            jmp   n241_disjunction_af
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_charset_α:     mov              r11, 170
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], -1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n241_disjunction_as
n245_lit_charset_β:     mov              r11, 170;                            jmp   n241_disjunction_af
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "-1"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n240_disjunction_as
n246_lit_string_β:      mov              r11, 171;                            jmp   n240_disjunction_af
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_charset_α:     mov              r11, 172
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], -1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n240_disjunction_as
n247_lit_charset_β:     mov              r11, 172;                            jmp   n240_disjunction_af
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n240_disjunction_as
n248_lit_integer_β:     mov              r11, 173;                            jmp   n240_disjunction_af
.Lx417_0:               .quad            18446744073709551615
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
.Lstartup_pname0:       .string          "try"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__try
                        .quad            try_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            752
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "r"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__r
                        .quad            r_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            528
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
