                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__event:
                        sub              rsp, 976
                        mov              rdi, rsp
                        add              rdi, 832
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
event_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 0
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1_var_α
.Lx31_0:                .quad            .Lx31_0_s
.Lx31_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 824], rax;          jmp   n2_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_proc_staged_α:  mov              r11, 3
                        lea              rsi, [rsp + 816]
                        call             geddate_dcα;                         jmp   .Lx35_2
.Lx35_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx35_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
.Lx35_29:               mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n5_lit_string_α
                                                                              jmp   n3_binop_test_α
n2_call_proc_staged_β:  mov              r11, 3;                              jmp   n5_lit_string_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "geddate"
#-----------------------------------------------------------------------------------------------------------------------
n3_binop_test_α:        mov              r11, 4
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n5_lit_string_α
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 0
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n6_var_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               mov              r11, 7
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 712], rax;          jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 4
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n8_proc_gen_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "PLAC"
#-----------------------------------------------------------------------------------------------------------------------
n8_proc_gen_α:          mov              r11, 9
                        mov              qword ptr [rsp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx43_200
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx43_201
.Lx43_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx43_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx43_202
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx43_203
.Lx43_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx43_203:              lea              rax, [rip + .Lx43_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx43_1
                        lea              rcx, [rip + .Lx43_4]
                        push             rcx
                        lea              rcx, [rip + .Lx43_3]
                        push             rcx
                        lea              rdx, [rip + .Lx43_4];                jmp   rax
.Lx43_3:                add              rsp, 16
                        mov              qword ptr [rsp + 680], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx43_5
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx43_2
.Lx43_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx43_2
.Lx43_4:                add              rsp, 16
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Lx43_6
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx43_2
.Lx43_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx43_2
.Lx43_1:                call             rt_faildescr@PLT
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
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx43_29:               mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n11_disjunction_α
                                                                              jmp   n9_binop_test_α
n8_proc_gen_β:          mov              r11, 9
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 680];          jmp   qword ptr [rsp]
.Lx43_7:                add              rsp, 8
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n11_disjunction_α
                                                                              jmp   n9_binop_test_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_test_α:        mov              r11, 10
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n8_proc_gen_β
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n11_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_disjunction_α:      mov              r11, 12
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n22_var_α
n11_disjunction_as:     mov              r11, 12
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx47_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   n30_return_α
.Lx47_0:                cmp              eax, 1;                              jne   .Lx47_1
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 56], rax;           jmp   n30_return_α
.Lx47_1:                                                                      jmp   n30_return_α
n11_disjunction_β:      mov              r11, 12
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    n30_return_α
                                                                              jmp   n15_disjunction_β
n11_disjunction_af:     mov              r11, 12
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n12_lit_string_α
                                                                              jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 3
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n13_var_α
n12_lit_string_β:       mov              r11, 13;                             jmp   n30_return_α
.Lx48_0:                .quad            .Lx48_0_s
.Lx48_0_s:              .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 440], rax;          jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n15_disjunction_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      mov              r11, 16
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n20_var_α
n15_disjunction_as:     mov              r11, 16
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx53_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n16_lit_string_α
.Lx53_0:                cmp              eax, 1;                              jne   .Lx53_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax;          jmp   n16_lit_string_α
.Lx53_1:                                                                      jmp   n16_lit_string_α
n15_disjunction_β:      mov              r11, 16
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n15_disjunction_af
                                                                              jmp   n15_disjunction_af
n15_disjunction_af:     mov              r11, 16
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n19_lit_string_α
                                                                              jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 2
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n17_var_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 568], rax;          jmp   n18_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn58:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rsp + 304]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n15_disjunction_β
                                                                              jmp   n11_disjunction_as
n18_call_builtin_icon_β:
                        mov              r11, 19;                             jmp   n15_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 12
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n15_disjunction_as
n19_lit_string_β:       mov              r11, 20;                             jmp   n15_disjunction_af
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "            "
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 520], rax;          jmp   n21_unop_test_α
n20_var_β:              mov              r11, 21;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_test_α:        mov              r11, 22
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 104;                             je    n15_disjunction_af
                        cmp              eax, 0;                              je    n15_disjunction_af
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 504], rax;          jmp   n15_disjunction_as
n21_unop_test_β:        mov              r11, 22;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 280], rax;          jmp   n23_unop_test_α
n22_var_β:              mov              r11, 23;                             jmp   n11_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_unop_test_α:        mov              r11, 24
                        mov              eax, dword ptr [rsp + 848]
                        cmp              al, 104;                             je    n11_disjunction_af
                        cmp              eax, 0;                              jne   n11_disjunction_af
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0;            jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n25_var_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n27_var_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 28
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 248], rax;          jmp   n28_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n28_unop_test_α:        mov              r11, 29
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 104;                             je    n30_return_α
                        cmp              eax, 0;                              je    n30_return_α
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 232], rax;          jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn74:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rsp + 96]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n30_return_α
                                                                              jmp   n11_disjunction_as
n29_call_builtin_icon_β:
                        mov              r11, 30;                             jmp   n30_return_α
#-----------------------------------------------------------------------------------------------------------------------
n30_return_α:           mov              r11, 31
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   event_γ
#-----------------------------------------------------------------------------------------------------------------------
event_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
event_β:
                                                                              jmp   event_ω
#-----------------------------------------------------------------------------------------------------------------------
event_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 976;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
event_ω:
                        add              rsp, 976;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
event_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx76_3]
                        push             rcx
                        lea              rcx, [rip + .Lx76_2]
                        push             rcx;                                 jmp   FN__event
.Lx76_2:                add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx76_3:                add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__refto:
                        sub              rsp, 464
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
refto_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n78_var_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 2
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n80_var_ref_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          " ["
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # ptab
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 264], rax;          jmp   n82_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n82_subscript_α:        mov              r11, 37
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n89_return_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n83_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_deref_α:            mov              r11, 38
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n89_return_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n84_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n84_field_get_α:        mov              r11, 39
                        mov              rdi, qword ptr [rip + .Lx00001_0]
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n89_return_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n85_lit_string_α
.Lx00001_0:               .quad            .Lx00001_0_s
.Lx00001_0_s:             .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n86_var_α
.Lx00002_0:               .quad            .Lx00002_0_s
.Lx00002_0_s:             .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 376], rax;          jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 42
                        lea              rsi, [rsp + 368]
                        call             gedfnf_dcα;                          jmp   .Lx00003_2
.Lx00003_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00003_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx00003_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n89_return_α
                                                                              jmp   n88_call_builtin_icon_α
n87_call_proc_staged_β: mov              r11, 42;                             jmp   n89_return_α
.Lx00003_0:               .quad            .Lx00003_0_s
.Lx00003_0_s:             .string          "gedfnf"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn107:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rsp + 64]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n89_return_α
                                                                              jmp   n89_return_α
n88_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n89_return_α
#-----------------------------------------------------------------------------------------------------------------------
n89_return_α:           mov              r11, 44
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   refto_γ
#-----------------------------------------------------------------------------------------------------------------------
refto_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
refto_β:
                                                                              jmp   refto_ω
#-----------------------------------------------------------------------------------------------------------------------
refto_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 464;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
refto_ω:
                        add              rsp, 464;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
refto_dcα:
                        pop              r12
                        push             r12
                        push             r12
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
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00004_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00004_2]
                        push             rcx;                                 jmp   FN__refto
.Lx00004_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00004_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__sortkey:
                        sub              rsp, 208
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sortkey_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_α:             mov              r11, 45
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00006_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00006_call_proc_staged_α:
                        mov              r11, 46
                        lea              rsi, [rsp + 128]
                        call             gedlnf_dcα;                          jmp   .Lx00007_2
.Lx00007_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00007_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx00007_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    sortkey_ω
                                                                              jmp   n00008_call_builtin_icon_α
n00006_call_proc_staged_β:
                        mov              r11, 46;                             jmp   sortkey_ω
.Lx00007_0:               .quad            .Lx00007_0_s
.Lx00007_0_s:             .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00008_call_builtin_icon_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn119:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    sortkey_ω
                                                                              jmp   n00009_return_α
n00008_call_builtin_icon_β:
                        mov              r11, 47;                             jmp   sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
n00009_return_α:          mov              r11, 48
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   sortkey_γ
#-----------------------------------------------------------------------------------------------------------------------
sortkey_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sortkey_β:
                                                                              jmp   sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
sortkey_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 208;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
sortkey_ω:
                        add              rsp, 208;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
sortkey_dcα:
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
                        lea              rcx, [rip + .Lx00010_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00010_2]
                        push             rcx;                                 jmp   FN__sortkey
.Lx00010_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00010_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__gedload:
                        sub              rsp, 2832
                        mov              rdi, rsp
                        add              rdi, 2496
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
gedload_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00011_lit_integer_α:     mov              r11, 49
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00013_assign_α
.Lx00012_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00014_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_integer_α:     mov              r11, 51
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n00016_keyword_icon_α
.Lx00015_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00016_keyword_icon_α:    mov              r11, 52
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0;           jmp   n00017_lit_string_α
n00016_keyword_icon_β:    mov              r11, 52;                             jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 4
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n00020_lit_string_α
.Lx00019_0:               .quad            .Lx00019_0_s
.Lx00019_0_s:             .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_string_α:      mov              r11, 54
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 0
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n00022_var_α
.Lx00021_0:               .quad            .Lx00021_0_s
.Lx00021_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:             mov              r11, 55
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n00023_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_keyword_icon_α:    mov              r11, 56
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0;           jmp   n00024_keyword_icon_α
n00023_keyword_icon_β:    mov              r11, 56;                             jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_keyword_icon_α:    mov              r11, 57
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0;           jmp   n00025_make_list_α
n00024_keyword_icon_β:    mov              r11, 57;                             jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_make_list_α:       mov              r11, 58
                        lea              rdi, [rsp + 2480]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n00026_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_call_α:            mov              r11, 59
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2184], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn250:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              al, 104;                             je    n00018_call_builtin_icon_α
                                                                              jmp   n00027_assign_α
n00026_call_β:            mov              r11, 59;                             jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              r11, 60
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n00028_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_assign_α:          mov              r11, 61
                        mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00018_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_call_builtin_icon_α:
                        mov              r11, 62
                        .section         .rodata
.Lrkfn254:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n00029_make_list_α
                                                                              jmp   n00030_assign_α
n00018_call_builtin_icon_β:
                        mov              r11, 62;                             jmp   n00029_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_assign_α:          mov              r11, 63
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n00029_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_make_list_α:       mov              r11, 64
                        lea              rdi, [rsp + 2096]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n00031_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:          mov              r11, 65
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00032_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_make_list_α:       mov              r11, 66
                        lea              rdi, [rsp + 2080]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n00033_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_assign_α:          mov              r11, 67
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00035_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_call_builtin_icon_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn265:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n00036_var_α
                                                                              jmp   n00037_lit_charset_α
n00035_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n00036_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_charset_α:     mov              r11, 70
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], -1
                        mov              rax, qword ptr [rip + .Lx00038_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00039_call_builtin_icon_α
.Lx00038_0:               .quad            .Lx00038_0_s
.Lx00038_0_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00039_call_builtin_icon_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn268:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262312
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n00036_var_α
                                                                              jmp   n00040_assign_α
n00039_call_builtin_icon_β:
                        mov              r11, 71;                             jmp   n00036_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 73
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00042_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx00043_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n00044_coerce_numeric_α
.Lx00043_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00044_coerce_numeric_α:  mov              r11, 75
                        mov              eax, dword ptr [rsp + 2624]
                        cmp              al, 5;                               je    .Lx00045_1
                        cmp              al, 3;                               jne   .Lx00045_0
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              al, 3;                               jne   .Lx00045_0
.Lx00045_1:               mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00046_binop_α
.Lx00045_0:               lea              rdi, [rsp + 2624]
                        lea              rsi, [rsp + 2048]
                        lea              rdx, [rsp + 2016]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00046_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_binop_α:           mov              r11, 76
                        mov              eax, dword ptr [rsp + 2016]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00047_2
                        mov              rax, qword ptr [rsp + 2024]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 2000], 3
                        mov              qword ptr [rsp + 2008], rax;         jmp   .Lx00047_7
.Lx00047_2:               and              edx, 1;                              jz    .Lx00047_0
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx00047_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00047_4
.Lx00047_3:               movq             xmm0, rsi
.Lx00047_4:               cmp              cl, 5;                               je    .Lx00047_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00047_6
.Lx00047_5:               movq             xmm1, rdi
.Lx00047_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2000], 5
                        mov              qword ptr [rsp + 2008], rax
.Lx00047_7:                                                                     jmp   n00048_assign_α
.Lx00047_0:               mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00049_disjunction_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n00048_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00049_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_disjunction_α:     mov              r11, 78
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n00050_var_α
n00049_disjunction_as:    mov              r11, 78
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lx00051_0
                                                                              jmp   n00052_disjunction_α
.Lx00051_0:                                                                     jmp   n00052_disjunction_α
n00049_disjunction_β:     mov              r11, 78
                        mov              eax, dword ptr [rsp + 1920];         jmp   n00052_disjunction_α
n00049_disjunction_af:    mov              r11, 78
                        add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920];         jmp   n00052_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              dword ptr [rsp + 1584], 0;           jmp   n00053_var_α
n00052_disjunction_as:    mov              r11, 79
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 0;                              jne   .Lx00054_0
                                                                              jmp   n00055_var_α
.Lx00054_0:                                                                     jmp   n00055_var_α
n00052_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 1584];         jmp   n00055_var_α
n00052_disjunction_af:    mov              r11, 79
                        add              dword ptr [rsp + 1584], 1
                        mov              eax, dword ptr [rsp + 1584];         jmp   n00055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n00056_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_field_var_α:       mov              r11, 81
                        mov              rdi, qword ptr [rip + .Lx00057_0]
                        mov              rsi, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_var_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n00059_var_α
.Lx00057_0:               .quad            .Lx00057_0_s
.Lx00057_0_s:             .string          "lnum"
#-----------------------------------------------------------------------------------------------------------------------
n00059_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00060_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_assign_var_α:      mov              r11, 83
                        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00058_var_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n00058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n00061_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_field_var_α:       mov              r11, 85
                        mov              rdi, qword ptr [rip + .Lx00062_0]
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00063_var_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n00064_make_list_α
.Lx00062_0:               .quad            .Lx00062_0_s
.Lx00062_0_s:             .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00064_make_list_α:       mov              r11, 86
                        lea              rdi, [rsp + 1504]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n00065_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_assign_var_α:      mov              r11, 87
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1488]
                        mov              rcx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00063_var_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n00063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00066_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_field_get_α:       mov              r11, 89
                        mov              rdi, qword ptr [rip + .Lx00067_0]
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00068_var_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00069_var_α
.Lx00067_0:               .quad            .Lx00067_0_s
.Lx00067_0_s:             .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00070_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_field_get_α:       mov              r11, 91
                        mov              rdi, qword ptr [rip + .Lx00071_0]
                        mov              rsi, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00068_var_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n00072_binop_test_α
.Lx00071_0:               .quad            .Lx00071_0_s
.Lx00071_0_s:             .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00072_binop_test_α:      mov              r11, 92
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 112;                             je    .Lx00073_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 112;                             je    .Lx00073_0
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 3;                               jne   .Lx00073_2
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lx00073_2
.Lx00073_1:               mov              rax, qword ptr [rsp + 1352]
                        mov              rcx, qword ptr [rsp + 1384]
                        cmp              rax, rcx;                            jl    n00068_var_α
                        mov              rcx, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rcx
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rcx;         jmp   n00074_var_α
.Lx00073_0:               mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 8
                        lea              r9, [rsp + 1328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00073_1
                        cmp              eax, 1;                              je    n00068_var_α
                                                                              jmp   n00074_var_α
.Lx00073_2:               mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00068_var_α
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00074_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n00075_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_field_get_α:       mov              r11, 94
                        mov              rdi, qword ptr [rip + .Lx00076_0]
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00063_var_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00077_assign_α
.Lx00076_0:               .quad            .Lx00076_0_s
.Lx00076_0_s:             .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00077_assign_α:          mov              r11, 95
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00078_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_field_get_α:       mov              r11, 97
                        mov              rdi, qword ptr [rip + .Lx00079_0]
                        mov              rsi, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00080_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n00081_var_α
.Lx00079_0:               .quad            .Lx00079_0_s
.Lx00079_0_s:             .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n00082_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn310:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n00080_var_α
                                                                              jmp   n00080_var_α
n00082_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n00080_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00083_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_field_var_α:       mov              r11, 101
                        mov              rdi, qword ptr [rip + .Lx00084_0]
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_var_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00086_var_α
.Lx00084_0:               .quad            .Lx00084_0_s
.Lx00084_0_s:             .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00087_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_assign_var_α:      mov              r11, 103
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_var_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00085_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_α:             mov              r11, 104
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00088_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00089_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n00090_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00091_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_field_get_α:       mov              r11, 108
                        mov              rdi, qword ptr [rip + .Lx00092_0]
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00093_var_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n00094_unop_test_α
.Lx00092_0:               .quad            .Lx00092_0_s
.Lx00092_0_s:             .string          "id"
#-----------------------------------------------------------------------------------------------------------------------
n00094_unop_test_α:       mov              r11, 109
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 104;                             je    n00093_var_α
                        cmp              eax, 0;                              je    n00093_var_α
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00095_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_subscript_α:       mov              r11, 110
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00093_var_α
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00097_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_assign_var_α:      mov              r11, 112
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00093_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00093_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00098_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_field_get_α:       mov              r11, 114
                        mov              rdi, qword ptr [rip + .Lx00099_0]
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_var_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00100_lit_string_α
.Lx00099_0:               .quad            .Lx00099_0_s
.Lx00099_0_s:             .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00100_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lx00101_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00102_call_builtin_α
.Lx00101_0:               .quad            .Lx00101_0_s
.Lx00101_0_s:             .string          "FAM"
#-----------------------------------------------------------------------------------------------------------------------
n00102_call_builtin_α:    mov              r11, 116
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn335:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00103_lit_string_α
                                                                              jmp   n00104_var_α
n00102_call_builtin_β:    mov              r11, 116;                            jmp   n00103_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_builtin_icon_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn341:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n00034_var_α
                                                                              jmp   n00107_assign_α
n00106_call_builtin_icon_β:
                        mov              r11, 119;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00103_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 4
                        mov              rax, qword ptr [rip + .Lx00109_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00110_call_builtin_α
.Lx00109_0:               .quad            .Lx00109_0_s
.Lx00109_0_s:             .string          "INDI"
#-----------------------------------------------------------------------------------------------------------------------
n00110_call_builtin_α:    mov              r11, 122
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn345:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rsp + 800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n00034_var_α
                                                                              jmp   n00111_var_α
n00110_call_builtin_β:    mov              r11, 122;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_call_builtin_icon_α:
                        mov              r11, 125
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn351:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn351]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n00034_var_α
                                                                              jmp   n00114_assign_α
n00113_call_builtin_icon_β:
                        mov              r11, 125;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00108_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00115_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_conjunction_α:     mov              r11, 128
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00034_var_α
n00115_conjunction_β:     mov              r11, 128;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_conjunction_α:     mov              r11, 129;                            jmp   n00052_disjunction_as
n00116_conjunction_β:     mov              r11, 129;                            jmp   n00055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00117_call_proc_staged_α
n00053_var_β:             mov              r11, 130;                            jmp   n00118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rsp + 1888]
                        call             gedscan_dcα;                         jmp   .Lx00119_2
.Lx00119_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00119_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
.Lx00119_29:              mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n00118_var_α
                                                                              jmp   n00120_assign_α
n00117_call_proc_staged_β:
                        mov              r11, 131;                            jmp   n00118_var_α
.Lx00119_0:               .quad            .Lx00119_0_s
.Lx00119_0_s:             .string          "gedscan"
#-----------------------------------------------------------------------------------------------------------------------
n00120_assign_α:          mov              r11, 132
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00052_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:             mov              r11, 133
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0;           jmp   n00121_keyword_icon_α
n00118_var_β:             mov              r11, 133;                            jmp   n00052_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00121_keyword_icon_α:    mov              r11, 134
                        mov              rdi, qword ptr [rip + .Lx00122_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_var_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n00123_lit_string_α
n00121_keyword_icon_β:    mov              r11, 134;                            jmp   n00034_var_α
.Lx00122_0:               .quad            .Lx00122_0_s
.Lx00122_0_s:             .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00123_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 10
                        mov              rax, qword ptr [rip + .Lx00124_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n00125_var_α
.Lx00124_0:               .quad            .Lx00124_0_s
.Lx00124_0_s:             .string          "ERR, line "
#-----------------------------------------------------------------------------------------------------------------------
n00125_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00126_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 2
                        mov              rax, qword ptr [rip + .Lx00127_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00128_var_α
.Lx00127_0:               .quad            .Lx00127_0_s
.Lx00127_0_s:             .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n00128_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00129_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_call_builtin_icon_α:
                        mov              r11, 139
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1640], rax
                        .section         .rodata
.Lrkfn371:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn371]
                        lea              rsi, [rsp + 1632]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n00034_var_α
                                                                              jmp   n00034_var_α
n00129_call_builtin_icon_β:
                        mov              r11, 139;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_goto_α:            mov              r11, 140;                            jmp   n00034_var_α
n00130_goto_β:            mov              r11, 140;                            jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:             mov              r11, 141
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n00131_unop_α
n00050_var_β:             mov              r11, 141;                            jmp   n00049_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00131_unop_α:            mov              r11, 142
                        mov              rdi, qword ptr [rsp + 2576]
                        mov              rsi, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n00134_binop_test_α
.Lx00133_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00134_binop_test_α:      mov              r11, 144
                        mov              eax, dword ptr [rsp + 1952]
                        cmp              al, 112;                             je    .Lx00135_0
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 112;                             je    .Lx00135_0
                        mov              eax, dword ptr [rsp + 1952]
                        cmp              al, 3;                               jne   .Lx00135_2
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 3;                               jne   .Lx00135_2
.Lx00135_1:               mov              rax, qword ptr [rsp + 1960]
                        mov              rcx, qword ptr [rsp + 1992]
                        cmp              rax, rcx;                            jne   n00049_disjunction_af
                        mov              rcx, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rcx
                        mov              rcx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rcx;         jmp   n00034_var_α
.Lx00135_0:               mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1984]
                        mov              rcx, qword ptr [rsp + 1992]
                        mov              r8d, 9
                        lea              r9, [rsp + 1936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00135_1
                        cmp              eax, 1;                              je    n00049_disjunction_af
                                                                              jmp   n00034_var_α
.Lx00135_2:               mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1984]
                        mov              rcx, qword ptr [rsp + 1992]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00049_disjunction_af
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n00034_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00136_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_proc_gen_α:        mov              r11, 146
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00137_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00137_201
.Lx00137_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00137_201:             lea              rax, [rip + .Lx00137_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00137_1
                        lea              rcx, [rip + .Lx00137_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00137_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00137_4];               jmp   rax
.Lx00137_3:               add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx00137_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00137_2
.Lx00137_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00137_2
.Lx00137_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx00137_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00137_2
.Lx00137_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00137_2
.Lx00137_1:               call             rt_faildescr@PLT
.Lx00137_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00137_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx00137_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00138_var_α
                                                                              jmp   n00139_assign_α
n00136_proc_gen_β:        mov              r11, 146
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 248];          jmp   qword ptr [rsp]
.Lx00137_7:               add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00138_var_α
                                                                              jmp   n00139_assign_α
.Lx00137_0:               .quad            .Lx00137_0_s
.Lx00137_0_s:             .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00139_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00140_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_bound_α:           mov              r11, 148
                        mov              qword ptr [rsp + 288], rsp;          jmp   n00141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00142_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_field_var_α:       mov              r11, 150
                        mov              rdi, qword ptr [rip + .Lx00143_0]
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_unmark_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00145_var_ref_α
.Lx00143_0:               .quad            .Lx00143_0_s
.Lx00143_0_s:             .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00147_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_field_get_α:       mov              r11, 153
                        mov              rdi, qword ptr [rip + .Lx00148_0]
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00149_subscript_α
.Lx00148_0:               .quad            .Lx00148_0_s
.Lx00148_0_s:             .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00149_subscript_α:       mov              r11, 154
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_unmark_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00150_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_deref_α:           mov              r11, 155
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_unmark_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00151_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_assign_var_α:      mov              r11, 156
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_unmark_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00144_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_unmark_α:          mov              r11, 157
                        mov              rsp, qword ptr [rsp + 288];          jmp   n00136_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00138_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00153_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00155_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn407:              .string          "gedcom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn407]
                        lea              rsi, [rsp + 48]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    gedload_ω
                                                                              jmp   n00156_return_α
n00155_call_β:            mov              r11, 162;                            jmp   gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
n00156_return_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedload_γ
#-----------------------------------------------------------------------------------------------------------------------
gedload_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedload_β:
                                                                              jmp   gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
gedload_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 2832;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
gedload_ω:
                        add              rsp, 2832;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
gedload_dcα:
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
                        lea              rcx, [rip + .Lx00157_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00157_2]
                        push             rcx;                                 jmp   FN__gedload
.Lx00157_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00157_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__gedscan:
                        sub              rsp, 1440
                        mov              rdi, rsp
                        add              rdi, 1248
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
gedscan_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00158_disjunction_α:     mov              r11, 164
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n00159_var_ref_α
n00158_disjunction_as:    mov              r11, 164
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Lx00160_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00161_var_α
.Lx00160_0:                                                                     jmp   n00161_var_α
n00158_disjunction_β:     mov              r11, 164
                        mov              eax, dword ptr [rsp + 1072];         jmp   n00161_var_α
n00158_disjunction_af:    mov              r11, 164
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072];         jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # gedscan__INITFLAG__0
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00162_nulltest_var_α
n00159_var_ref_β:         mov              r11, 165;                            jmp   n00158_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00162_nulltest_var_α:    mov              r11, 166
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              al, 104;                             je    n00158_disjunction_af
                        mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00158_disjunction_af
                        cmp              eax, 0;                              jne   n00158_disjunction_af
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00163_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx00164_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00165_assign_var_α
.Lx00164_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00165_assign_var_α:      mov              r11, 168
                        mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00158_disjunction_af
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n00166_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx00167_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00168_lit_charset_α
.Lx00167_0:               .quad            .Lx00167_0_s
.Lx00167_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00168_lit_charset_α:     mov              r11, 170
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], -1
                        mov              rax, qword ptr [rip + .Lx00169_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00170_binop_α
.Lx00169_0:               .quad            .Lx00169_0_s
.Lx00169_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00170_binop_α:           mov              r11, 171
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00171_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_charset_α:     mov              r11, 172
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx00172_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00173_binop_α
.Lx00172_0:               .quad            .Lx00172_0_s
.Lx00172_0_s:             .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n00173_binop_α:           mov              r11, 173
                        mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00161_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00174_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_assign_α:          mov              r11, 174
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [r9 + 16], rax             # gedscan__STATIC__alnum
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00158_disjunction_as
n00174_assign_β:          mov              r11, 174;                            jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00175_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_enter_α:      mov              r11, 176
                        mov              qword ptr [rsp + 48], r13
                        mov              qword ptr [rsp + 56], r14
                        mov              qword ptr [rsp + 64], r15
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
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
                        mov              r14, 0;                              jmp   n00176_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_charset_α:     mov              r11, 177
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx00177_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00178_scan_many_α
.Lx00177_0:               .quad            .Lx00177_0_s
.Lx00177_0_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_many_α:       mov              r11, 178
                        mov              eax, r14d
.Lx00179_0:               cmp              eax, r15d;                           jge   .Lx00179_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00179_2]
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
                        pop              rax;                                 je    .Lx00179_1
                        add              eax, 1;                              jmp   .Lx00179_0
.Lx00179_1:               cmp              eax, r14d;                           je    n00180_disjunction_α
                        mov              qword ptr [rsp + 1008], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1016], rcx;         jmp   n00181_scan_tab_α
n00178_scan_many_β:       mov              r11, 178;                            jmp   n00180_disjunction_α
.Lx00179_2:               .quad            .Lx00179_2_s
.Lx00179_2_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00181_scan_tab_α:        mov              r11, 179
                        mov              rax, qword ptr [rsp + 1016]
                        cmp              rax, 1;                              jge   .Lx00182_0
                        add              rax, r15
                        add              rax, 1
.Lx00182_0:               cmp              rax, 1;                              jl    n00180_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00180_disjunction_α
                        mov              qword ptr [rsp + 992], r14
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
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00180_disjunction_α
n00181_scan_tab_β:        mov              r11, 179
                        mov              r14, qword ptr [rsp + 992];          jmp   n00180_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_disjunction_α:     mov              r11, 180
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n00183_lit_charset_α
n00180_disjunction_as:    mov              r11, 180
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx00184_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00185_assign_α
.Lx00184_0:               cmp              eax, 1;                              jne   .Lx00184_1
                                                                              jmp   n00185_assign_α
.Lx00184_1:                                                                     jmp   n00185_assign_α
n00180_disjunction_β:     mov              r11, 180
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              je    n00180_disjunction_af
                                                                              jmp   n00180_disjunction_af
n00180_disjunction_af:    mov              r11, 180
                        add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 1;                              je    gedscan_ω
                                                                              jmp   n00186_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00186_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_charset_α:     mov              r11, 182
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], -1
                        mov              rax, qword ptr [rip + .Lx00187_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00188_scan_many_α
.Lx00187_0:               .quad            .Lx00187_0_s
.Lx00187_0_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00188_scan_many_α:       mov              r11, 183
                        mov              eax, r14d
.Lx00189_0:               cmp              eax, r15d;                           jge   .Lx00189_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00189_2]
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
                        pop              rax;                                 je    .Lx00189_1
                        add              eax, 1;                              jmp   .Lx00189_0
.Lx00189_1:               cmp              eax, r14d;                           je    n00190_disjunction_α
                        mov              qword ptr [rsp + 848], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 856], rcx;          jmp   n00191_scan_tab_α
n00188_scan_many_β:       mov              r11, 183;                            jmp   n00190_disjunction_α
.Lx00189_2:               .quad            .Lx00189_2_s
.Lx00189_2_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00191_scan_tab_α:        mov              r11, 184
                        mov              rax, qword ptr [rsp + 856]
                        cmp              rax, 1;                              jge   .Lx00192_0
                        add              rax, r15
                        add              rax, 1
.Lx00192_0:               cmp              rax, 1;                              jl    n00190_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00190_disjunction_α
                        mov              qword ptr [rsp + 832], r14
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
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00190_disjunction_α
n00191_scan_tab_β:        mov              r11, 184
                        mov              r14, qword ptr [rsp + 832];          jmp   n00190_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00190_disjunction_α:     mov              r11, 185
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n00193_scan_sequence_α
n00190_disjunction_as:    mov              r11, 185
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lx00194_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00195_disjunction_α
.Lx00194_0:                                                                     jmp   n00195_disjunction_α
n00190_disjunction_β:     mov              r11, 185
                        mov              eax, dword ptr [rsp + 496];          jmp   n00195_disjunction_α
n00190_disjunction_af:    mov              r11, 185
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496];          jmp   n00195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_scan_sequence_α:   mov              r11, 186
                        mov              dword ptr [rsp + 592], r14d
                        mov              dword ptr [rsp + 596], 0;            jmp   n00196_lit_string_α
n00193_scan_sequence_as:  mov              r11, 186
                        mov              eax, dword ptr [rsp + 596]
                        add              eax, 1
                        mov              dword ptr [rsp + 596], eax
                        cmp              eax, 1;                              je    n00197_lit_charset_α
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00198_assign_α
n00193_scan_sequence_β:   mov              r11, 186
                        mov              dword ptr [rsp + 596], 2
n00193_scan_sequence_af:  mov              r11, 186
                        mov              eax, dword ptr [rsp + 596]
                        sub              eax, 1
                        mov              dword ptr [rsp + 596], eax
                        cmp              eax, 0;                              je    n00199_scan_tab_β
                        cmp              eax, 1;                              je    n00200_scan_tab_β
                                                                              jmp   n00190_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00198_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00201_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_lit_charset_α:     mov              r11, 188
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], -1
                        mov              rax, qword ptr [rip + .Lx00202_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00203_scan_many_α
.Lx00202_0:               .quad            .Lx00202_0_s
.Lx00202_0_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00203_scan_many_α:       mov              r11, 189
                        mov              eax, r14d
.Lx00204_0:               cmp              eax, r15d;                           jge   .Lx00204_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00204_2]
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
                        pop              rax;                                 je    .Lx00204_1
                        add              eax, 1;                              jmp   .Lx00204_0
.Lx00204_1:               cmp              eax, r14d;                           je    n00195_disjunction_α
                        mov              qword ptr [rsp + 544], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 552], rcx;          jmp   n00205_scan_tab_α
n00203_scan_many_β:       mov              r11, 189;                            jmp   n00195_disjunction_α
.Lx00204_2:               .quad            .Lx00204_2_s
.Lx00204_2_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00205_scan_tab_α:        mov              r11, 190
                        mov              rax, qword ptr [rsp + 552]
                        cmp              rax, 1;                              jge   .Lx00206_0
                        add              rax, r15
                        add              rax, 1
.Lx00206_0:               cmp              rax, 1;                              jl    n00195_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00195_disjunction_α
                        mov              qword ptr [rsp + 528], r14
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
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n00190_disjunction_as
n00205_scan_tab_β:        mov              r11, 190
                        mov              r14, qword ptr [rsp + 528];          jmp   n00195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n00207_var_α
n00195_disjunction_as:    mov              r11, 191
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Lx00208_0
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00209_assign_α
.Lx00208_0:               cmp              eax, 1;                              jne   .Lx00208_1
                                                                              jmp   n00209_assign_α
.Lx00208_1:                                                                     jmp   n00209_assign_α
n00195_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n00195_disjunction_af
                                                                              jmp   n00195_disjunction_af
n00195_disjunction_af:    mov              r11, 191
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    gedscan_ω
                                                                              jmp   n00210_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n00210_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], -1
                        mov              rax, qword ptr [rip + .Lx00211_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00212_scan_many_α
.Lx00211_0:               .quad            .Lx00211_0_s
.Lx00211_0_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00212_scan_many_α:       mov              r11, 194
                        mov              eax, r14d
.Lx00213_0:               cmp              eax, r15d;                           jge   .Lx00213_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00213_2]
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
                        pop              rax;                                 je    .Lx00213_1
                        add              eax, 1;                              jmp   .Lx00213_0
.Lx00213_1:               cmp              eax, r14d;                           je    n00214_lit_integer_α
                        mov              qword ptr [rsp + 352], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 360], rcx;          jmp   n00215_scan_tab_α
n00212_scan_many_β:       mov              r11, 194;                            jmp   n00214_lit_integer_α
.Lx00213_2:               .quad            .Lx00213_2_s
.Lx00213_2_s:             .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00215_scan_tab_α:        mov              r11, 195
                        mov              rax, qword ptr [rsp + 360]
                        cmp              rax, 1;                              jge   .Lx00216_0
                        add              rax, r15
                        add              rax, 1
.Lx00216_0:               cmp              rax, 1;                              jl    n00214_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00214_lit_integer_α
                        mov              qword ptr [rsp + 336], r14
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
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00214_lit_integer_α
n00215_scan_tab_β:        mov              r11, 195
                        mov              r14, qword ptr [rsp + 336];          jmp   n00214_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx00217_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00218_scan_tab_α
.Lx00217_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00218_scan_tab_α:        mov              r11, 197
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00219_0
                        add              rax, r15
                        add              rax, 1
.Lx00219_0:               cmp              rax, 1;                              jl    n00220_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00220_var_α
                        mov              qword ptr [rsp + 288], r14
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
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00221_assign_α
n00218_scan_tab_β:        mov              r11, 197
                        mov              r14, qword ptr [rsp + 288];          jmp   n00220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n00220_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00220_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00223_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00225_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn527:              .string          "gednode"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]
                        lea              rsi, [rsp + 112]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    gedscan_ω
                                                                              jmp   n00226_return_α
n00225_call_β:            mov              r11, 203;                            jmp   gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
n00226_return_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedscan_γ
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_α:             mov              r11, 205
                        mov              rax, qword ptr [r9 + 16]             # gedscan__STATIC__alnum
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 464], rax           # result
                        mov              qword ptr [rsp + 472], rdx;          jmp   n00227_scan_many_α
n00207_var_β:             mov              r11, 205;                            jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00227_scan_many_α:       mov              r11, 206
                        mov              eax, r14d
.Lx00228_0:               cmp              eax, r15d;                           jge   .Lx00228_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 472]
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
                        pop              rax;                                 je    .Lx00228_1
                        add              eax, 1;                              jmp   .Lx00228_0
.Lx00228_1:               cmp              eax, r14d;                           je    n00195_disjunction_af
                        mov              qword ptr [rsp + 448], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 456], rcx;          jmp   n00229_scan_tab_α
n00227_scan_many_β:       mov              r11, 206;                            jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00229_scan_tab_α:        mov              r11, 207
                        mov              rax, qword ptr [rsp + 456]
                        cmp              rax, 1;                              jge   .Lx00230_0
                        add              rax, r15
                        add              rax, 1
.Lx00230_0:               cmp              rax, 1;                              jl    n00195_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00195_disjunction_af
                        mov              qword ptr [rsp + 432], r14
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
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00195_disjunction_as
n00229_scan_tab_β:        mov              r11, 207
                        mov              r14, qword ptr [rsp + 432];          jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_charset_α:     mov              r11, 208
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00231_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00232_scan_upto_α
n00197_lit_charset_β:     mov              r11, 208;                            jmp   n00193_scan_sequence_af
.Lx00231_0:               .quad            .Lx00231_0_s
.Lx00231_0_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_upto_α:       mov              r11, 209
                        mov              qword ptr [rsp + 768], r14
.Lx00233_0:               mov              rax, qword ptr [rsp + 768]
                        cmp              rax, r15;                            jge   n00193_scan_sequence_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00233_2]
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
                        pop              rax;                                 je    .Lx00233_1
                        mov              qword ptr [rsp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n00234_lit_integer_α
.Lx00233_1:               inc              qword ptr [rsp + 768];               jmp   .Lx00233_0
n00232_scan_upto_β:       mov              r11, 209
                        inc              qword ptr [rsp + 768];               jmp   .Lx00233_0
.Lx00233_2:               .quad            .Lx00233_2_s
.Lx00233_2_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00236_coerce_numeric_α
.Lx00235_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00236_coerce_numeric_α:  mov              r11, 211
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 5;                               je    .Lx00237_1
                        cmp              al, 3;                               jne   .Lx00237_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 3;                               jne   .Lx00237_0
.Lx00237_1:               mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00238_binop_α
.Lx00237_0:               lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 800]
                        lea              rdx, [rsp + 736]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00238_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_binop_α:           mov              r11, 212
                        mov              eax, dword ptr [rsp + 736]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00239_2
                        mov              rax, qword ptr [rsp + 744]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax;          jmp   .Lx00239_7
.Lx00239_2:               and              edx, 1;                              jz    .Lx00239_0
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx00239_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00239_4
.Lx00239_3:               movq             xmm0, rsi
.Lx00239_4:               cmp              cl, 5;                               je    .Lx00239_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00239_6
.Lx00239_5:               movq             xmm1, rdi
.Lx00239_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 720], 5
                        mov              qword ptr [rsp + 728], rax
.Lx00239_7:                                                                     jmp   n00200_scan_tab_α
.Lx00239_0:               mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00193_scan_sequence_af
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n00200_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_scan_tab_α:        mov              r11, 213
                        mov              rax, qword ptr [rsp + 728]
                        cmp              rax, 1;                              jge   .Lx00240_0
                        add              rax, r15
                        add              rax, 1
.Lx00240_0:               cmp              rax, 1;                              jl    n00232_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00232_scan_upto_β
                        mov              qword ptr [rsp + 704], r14
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
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00193_scan_sequence_as
n00200_scan_tab_β:        mov              r11, 213
                        mov              r14, qword ptr [rsp + 704];          jmp   n00232_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00196_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx00241_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00242_scan_match_α
n00196_lit_string_β:      mov              r11, 214;                            jmp   n00193_scan_sequence_af
.Lx00241_0:               .quad            .Lx00241_0_s
.Lx00241_0_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00242_scan_match_α:      mov              r11, 215
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00193_scan_sequence_af
                        mov              rdi, qword ptr [rip + .Lx00243_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n00193_scan_sequence_af
                        mov              qword ptr [rsp + 640], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 648], rax;          jmp   n00199_scan_tab_α
.Lx00243_0:               .quad            .Lx00243_0_s
.Lx00243_0_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00199_scan_tab_α:        mov              r11, 216
                        mov              rax, qword ptr [rsp + 648]
                        cmp              rax, 1;                              jge   .Lx00244_0
                        add              rax, r15
                        add              rax, 1
.Lx00244_0:               cmp              rax, 1;                              jl    n00193_scan_sequence_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00193_scan_sequence_af
                        mov              qword ptr [rsp + 624], r14
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
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00193_scan_sequence_as
n00199_scan_tab_β:        mov              r11, 216
                        mov              r14, qword ptr [rsp + 624];          jmp   n00193_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_charset_α:     mov              r11, 217
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], -1
                        mov              rax, qword ptr [rip + .Lx00245_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00246_scan_many_α
n00183_lit_charset_β:     mov              r11, 217;                            jmp   n00180_disjunction_af
.Lx00245_0:               .quad            .Lx00245_0_s
.Lx00245_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00246_scan_many_α:       mov              r11, 218
                        mov              eax, r14d
.Lx00247_0:               cmp              eax, r15d;                           jge   .Lx00247_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00247_2]
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
                        pop              rax;                                 je    .Lx00247_1
                        add              eax, 1;                              jmp   .Lx00247_0
.Lx00247_1:               cmp              eax, r14d;                           je    n00180_disjunction_af
                        mov              qword ptr [rsp + 944], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 952], rcx;          jmp   n00248_scan_tab_α
n00246_scan_many_β:       mov              r11, 218;                            jmp   n00180_disjunction_af
.Lx00247_2:               .quad            .Lx00247_2_s
.Lx00247_2_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00248_scan_tab_α:        mov              r11, 219
                        mov              rax, qword ptr [rsp + 952]
                        cmp              rax, 1;                              jge   .Lx00249_0
                        add              rax, r15
                        add              rax, 1
.Lx00249_0:               cmp              rax, 1;                              jl    n00180_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00180_disjunction_af
                        mov              qword ptr [rsp + 928], r14
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
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00180_disjunction_as
n00248_scan_tab_β:        mov              r11, 219
                        mov              r14, qword ptr [rsp + 928];          jmp   n00180_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
gedscan_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedscan_β:
                                                                              jmp   gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
gedscan_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1440;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
gedscan_ω:
                        add              rsp, 1440;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
gedscan_dcα:
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
                        lea              rcx, [rip + .Lx00250_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00250_2]
                        push             rcx;                                 jmp   FN__gedscan
.Lx00250_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00250_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__gedwalk:
gedwalk_α_body:
                        lea              rax, [rip + n00251_suspend_β]
                        mov              qword ptr [rsp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n00252_disjunction_α:     mov              r11, 220
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00253_var_α
n00252_disjunction_as:    mov              r11, 220
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx00254_0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00251_suspend_α
.Lx00254_0:               cmp              eax, 1;                              jne   .Lx00254_1
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00251_suspend_α
.Lx00254_1:                                                                     jmp   n00251_suspend_α
n00252_disjunction_β:     mov              r11, 220
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n00252_disjunction_af
                                                                              jmp   n00255_proc_gen_β
n00252_disjunction_af:    mov              r11, 220
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00256_var_α
                                                                              jmp   gedwalk_ω
#-----------------------------------------------------------------------------------------------------------------------
n00251_suspend_α:         mov              r11, 221
                        lea              rax, [rip + n00251_suspend_β]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedwalk_γ
n00251_suspend_β:         mov              r11, 221;                            jmp   n00252_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:             mov              r11, 222
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00257_field_get_α
n00256_var_β:             mov              r11, 222;                            jmp   n00252_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00257_field_get_α:       mov              r11, 223
                        mov              rdi, qword ptr [rip + .Lx00258_0]
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00252_disjunction_af
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n00259_iterate_α
.Lx00258_0:               .quad            .Lx00258_0_s
.Lx00258_0_s:             .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00259_iterate_α:         mov              r11, 224
                        mov              qword ptr [rsp + 160], 0
.Lx00260_0:               mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n00252_disjunction_af
                                                                              jmp   n00255_proc_gen_α
n00259_iterate_β:         mov              r11, 224
                        inc              qword ptr [rsp + 160];               jmp   .Lx00260_0
#-----------------------------------------------------------------------------------------------------------------------
n00255_proc_gen_α:        mov              r11, 225
                        mov              qword ptr [rsp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00261_200
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00261_201
.Lx00261_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00261_201:             lea              rax, [rip + .Lx00261_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00261_1
                        lea              rcx, [rip + .Lx00261_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00261_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00261_4];               jmp   rax
.Lx00261_3:               add              rsp, 16
                        mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx00261_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00261_2
.Lx00261_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00261_2
.Lx00261_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx00261_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00261_2
.Lx00261_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00261_2
.Lx00261_1:               call             rt_faildescr@PLT
.Lx00261_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00261_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx00261_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00259_iterate_β
                                                                              jmp   n00252_disjunction_as
n00255_proc_gen_β:        mov              r11, 225
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120];          jmp   qword ptr [rsp]
.Lx00261_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00259_iterate_β
                                                                              jmp   n00252_disjunction_as
.Lx00261_0:               .quad            .Lx00261_0_s
.Lx00261_0_s:             .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_α:             mov              r11, 226
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00252_disjunction_as
n00253_var_β:             mov              r11, 226;                            jmp   n00252_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_β:
                                                                              jmp   n00251_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__gedsub:
gedsub_α_body:
                        lea              rax, [rip + n00262_suspend_β]
                        mov              qword ptr [rsp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n00263_disjunction_α:     mov              r11, 227
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              dword ptr [rsp + 592], 0;            jmp   n00264_var_α
n00263_disjunction_as:    mov              r11, 227
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              jne   .Lx00265_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00266_assign_α
.Lx00265_0:               cmp              eax, 1;                              jne   .Lx00265_1
                                                                              jmp   n00266_assign_α
.Lx00265_1:                                                                     jmp   n00266_assign_α
n00263_disjunction_β:     mov              r11, 227
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              je    n00263_disjunction_af
                                                                              jmp   n00263_disjunction_af
n00263_disjunction_af:    mov              r11, 227
                        add              dword ptr [rsp + 592], 1
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 1;                              je    gedsub_ω
                                                                              jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00268_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_field_get_α:       mov              r11, 230
                        mov              rdi, qword ptr [rip + .Lx00269_0]
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    gedsub_ω
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00270_iterate_α
.Lx00269_0:               .quad            .Lx00269_0_s
.Lx00269_0_s:             .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00270_iterate_α:         mov              r11, 231
                        mov              qword ptr [rsp + 80], 0
.Lx00271_0:               mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    gedsub_ω
                                                                              jmp   n00272_assign_α
n00270_iterate_β:         mov              r11, 231
                        inc              qword ptr [rsp + 80];                jmp   .Lx00271_0
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00273_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00273_bound_α:           mov              r11, 233
                        mov              qword ptr [rsp + 128], rsp;          jmp   n00274_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00274_disjunction_α:     mov              r11, 234
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              dword ptr [rsp + 192], 0;            jmp   n00275_var_α
n00274_disjunction_as:    mov              r11, 234
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              jne   .Lx00276_0
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00277_unmark_α
.Lx00276_0:                                                                     jmp   n00277_unmark_α
n00274_disjunction_β:     mov              r11, 234
                        mov              eax, dword ptr [rsp + 192];          jmp   n00278_disjunction_β
n00274_disjunction_af:    mov              r11, 234
                        add              dword ptr [rsp + 192], 1
                        mov              eax, dword ptr [rsp + 192];          jmp   n00277_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00279_field_get_α
n00275_var_β:             mov              r11, 235;                            jmp   n00274_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00279_field_get_α:       mov              r11, 236
                        mov              rdi, qword ptr [rip + .Lx00280_0]
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00281_var_α
.Lx00280_0:               .quad            .Lx00280_0_s
.Lx00280_0_s:             .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00282_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_binop_test_α:      mov              r11, 238
                        mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00274_disjunction_af
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00278_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_disjunction_α:     mov              r11, 239
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n00283_var_α
n00278_disjunction_as:    mov              r11, 239
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx00284_0
                                                                              jmp   n00274_disjunction_as
.Lx00284_0:               cmp              eax, 1;                              jne   .Lx00284_1
                                                                              jmp   n00274_disjunction_as
.Lx00284_1:                                                                     jmp   n00274_disjunction_as
n00278_disjunction_β:     mov              r11, 239
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              je    n00285_call_value_β
                                                                              jmp   n00277_unmark_α
n00278_disjunction_af:    mov              r11, 239
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 1;                              je    n00286_var_α
                                                                              jmp   n00277_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00262_suspend_α
n00286_var_β:             mov              r11, 240;                            jmp   n00277_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_suspend_α:         mov              r11, 241
                        lea              rax, [rip + n00262_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedsub_γ
n00262_suspend_β:         mov              r11, 241;                            jmp   n00278_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00283_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00287_unop_α
n00283_var_β:             mov              r11, 242;                            jmp   n00278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00287_unop_α:            mov              r11, 243
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00288_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx00289_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00290_binop_test_α
.Lx00289_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00290_binop_test_α:      mov              r11, 245
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 112;                             je    .Lx00291_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 112;                             je    .Lx00291_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lx00291_2
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lx00291_2
.Lx00291_1:               mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 488]
                        cmp              rax, rcx;                            jle   n00278_disjunction_af
                        mov              rcx, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rcx
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rcx;          jmp   n00292_lit_string_α
.Lx00291_0:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              r8d, 7
                        lea              r9, [rsp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00291_1
                        cmp              eax, 1;                              je    n00278_disjunction_af
                                                                              jmp   n00292_lit_string_α
.Lx00291_2:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00278_disjunction_af
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00292_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 6
                        mov              rax, qword ptr [rip + .Lx00293_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00294_var_α
.Lx00293_0:               .quad            .Lx00293_0_s
.Lx00293_0_s:             .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00296_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_call_builtin_icon_α:
                        mov              r11, 249
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn638:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn638]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n00277_unmark_α
                                                                              jmp   n00285_call_value_α
n00296_call_builtin_icon_β:
                        mov              r11, 249;                            jmp   n00277_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_value_α:      mov              r11, 250
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax
                        mov              qword ptr [rsp + 288], 0
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00297_7
                        lea              rcx, [rip + .Lx00297_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00297_3]
                        push             rcx;                                 jmp   rax
.Lx00297_3:               mov              qword ptr [rsp + 296], rsp
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx00297_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00297_2
.Lx00297_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00297_2
.Lx00297_4:               mov              qword ptr [rsp + 296], rsp
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx00297_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00297_2
.Lx00297_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00297_2
.Lx00297_7:               mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        lea              r8, [rsp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00297_2:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n00277_unmark_α
                                                                              jmp   n00298_suspend_α
n00285_call_value_β:      mov              r11, 250
                        mov              rax, qword ptr [rsp + 288]
                        cmp              rax, 1;                              jne   .Lx00297_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 296];          jmp   qword ptr [rsp]
.Lx00297_8:               lea              rdi, [rsp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00277_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00298_suspend_α
                                                                              jmp   n00277_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_suspend_α:         mov              r11, 251
                        lea              rax, [rip + n00298_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedsub_γ
n00298_suspend_β:         mov              r11, 251;                            jmp   n00285_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n00277_unmark_α:          mov              r11, 252
                        mov              rsp, qword ptr [rsp + 128];          jmp   n00270_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00299_call_builtin_icon_α
n00264_var_β:             mov              r11, 253;                            jmp   n00263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_builtin_icon_α:
                        mov              r11, 254
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn648:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n00263_disjunction_af
                                                                              jmp   n00263_disjunction_as
n00299_call_builtin_icon_β:
                        mov              r11, 254;                            jmp   n00263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
gedsub_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedsub_β:
                                                                              jmp   n00262_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
gedsub_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
gedsub_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__gedval:
gedval_α_body:
                        lea              rax, [rip + n00300_suspend_β]
                        mov              qword ptr [rsp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 6
                        mov              rax, qword ptr [rip + .Lx00302_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00303_var_α
.Lx00302_0:               .quad            .Lx00302_0_s
.Lx00302_0_s:             .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00303_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00304_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_value_α:      mov              r11, 257
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], 0
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00305_7
                        lea              rcx, [rip + .Lx00305_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00305_3]
                        push             rcx;                                 jmp   rax
.Lx00305_3:               mov              qword ptr [rsp + 104], rsp
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx00305_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00305_2
.Lx00305_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00305_2
.Lx00305_4:               mov              qword ptr [rsp + 104], rsp
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx00305_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00305_2
.Lx00305_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00305_2
.Lx00305_7:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        lea              r8, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00305_2:               mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    gedval_ω
                                                                              jmp   n00306_field_get_α
n00304_call_value_β:      mov              r11, 257
                        mov              rax, qword ptr [rsp + 96]
                        cmp              rax, 1;                              jne   .Lx00305_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 104];          jmp   qword ptr [rsp]
.Lx00305_8:               lea              rdi, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    gedval_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00306_field_get_α
                                                                              jmp   gedval_ω
#-----------------------------------------------------------------------------------------------------------------------
n00306_field_get_α:       mov              r11, 258
                        mov              rdi, qword ptr [rip + .Lx00307_0]
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    gedval_ω
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00300_suspend_α
.Lx00307_0:               .quad            .Lx00307_0_s
.Lx00307_0_s:             .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00300_suspend_α:         mov              r11, 259
                        lea              rax, [rip + n00300_suspend_β]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedval_γ
n00300_suspend_β:         mov              r11, 259;                            jmp   n00304_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
gedval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedval_β:
                                                                              jmp   n00300_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
gedval_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
gedval_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__gedref:
gedref_α_body:
                        lea              rax, [rip + n00308_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lx00310_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00311_var_α
.Lx00310_0:               .quad            .Lx00310_0_s
.Lx00310_0_s:             .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00312_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_call_value_α:      mov              r11, 262
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], 0
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00313_7
                        lea              rcx, [rip + .Lx00313_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00313_3]
                        push             rcx;                                 jmp   rax
.Lx00313_3:               mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx00313_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00313_2
.Lx00313_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00313_2
.Lx00313_4:               mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx00313_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00313_2
.Lx00313_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00313_2
.Lx00313_7:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        lea              r8, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00313_2:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    gedref_ω
                                                                              jmp   n00314_field_get_α
n00312_call_value_β:      mov              r11, 262
                        mov              rax, qword ptr [rsp + 112]
                        cmp              rax, 1;                              jne   .Lx00313_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120];          jmp   qword ptr [rsp]
.Lx00313_8:               lea              rdi, [rsp + 112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    gedref_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00314_field_get_α
                                                                              jmp   gedref_ω
#-----------------------------------------------------------------------------------------------------------------------
n00314_field_get_α:       mov              r11, 263
                        mov              rdi, qword ptr [rip + .Lx00315_0]
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    gedref_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n00316_unop_test_α
.Lx00315_0:               .quad            .Lx00315_0_s
.Lx00315_0_s:             .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00316_unop_test_α:       mov              r11, 264
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 104;                             je    n00312_call_value_β
                        cmp              eax, 0;                              je    n00312_call_value_β
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00308_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_suspend_α:         mov              r11, 265
                        lea              rax, [rip + n00308_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedref_γ
n00308_suspend_β:         mov              r11, 265;                            jmp   n00312_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
gedref_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedref_β:
                                                                              jmp   n00308_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
gedref_γ:
                        add              rsp, 0
                        mov              eax, 2
                        ret
#-----------------------------------------------------------------------------------------------------------------------
gedref_ω:
                        add              rsp, 0
                        mov              eax, 104
                        ret
#-----------------------------------------------------------------------------------------------------------------------
FN__gedfnf:
                        sub              rsp, 1312
                        mov              rdi, rsp
                        add              rdi, 1152
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
gedfnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00317_disjunction_α:     mov              r11, 266
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n00318_var_α
n00317_disjunction_as:    mov              r11, 266
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx00319_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00320_assign_α
.Lx00319_0:               cmp              eax, 1;                              jne   .Lx00319_1
                                                                              jmp   n00320_assign_α
.Lx00319_1:                                                                     jmp   n00320_assign_α
n00317_disjunction_β:     mov              r11, 266
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n00321_proc_gen_β
                                                                              jmp   n00317_disjunction_af
n00317_disjunction_af:    mov              r11, 266
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    gedfnf_ω
                                                                              jmp   n00322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00322_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00323_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_scan_enter_α:      mov              r11, 269
                        mov              qword ptr [rsp + 480], r13
                        mov              qword ptr [rsp + 488], r14
                        mov              qword ptr [rsp + 496], r15
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
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
                        mov              r14, 0;                              jmp   n00324_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_disjunction_α:     mov              r11, 270
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              dword ptr [rsp + 800], 0;            jmp   n00325_lit_charset_α
n00324_disjunction_as:    mov              r11, 270
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              jne   .Lx00326_0
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00327_assign_α
.Lx00326_0:               cmp              eax, 1;                              jne   .Lx00326_1
                                                                              jmp   n00327_assign_α
.Lx00326_1:                                                                     jmp   n00327_assign_α
n00324_disjunction_β:     mov              r11, 270
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              je    n00328_scan_upto_β
                                                                              jmp   n00324_disjunction_af
n00324_disjunction_af:    mov              r11, 270
                        add              dword ptr [rsp + 800], 1
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 1;                              je    n00329_lit_integer_α
                                                                              jmp   n00330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lx00331_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00332_scan_match_α
.Lx00331_0:               .quad            .Lx00331_0_s
.Lx00331_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00332_scan_match_α:      mov              r11, 273
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00333_disjunction_α
                        mov              rdi, qword ptr [rip + .Lx00334_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n00333_disjunction_α
                        mov              qword ptr [rsp + 736], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 744], rax;          jmp   n00335_scan_tab_α
.Lx00334_0:               .quad            .Lx00334_0_s
.Lx00334_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00335_scan_tab_α:        mov              r11, 274
                        mov              rax, qword ptr [rsp + 744]
                        cmp              rax, 1;                              jge   .Lx00336_0
                        add              rax, r15
                        add              rax, 1
.Lx00336_0:               cmp              rax, 1;                              jl    n00333_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00333_disjunction_α
                        mov              qword ptr [rsp + 720], r14
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
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00333_disjunction_α
n00335_scan_tab_β:        mov              r11, 274
                        mov              r14, qword ptr [rsp + 720];          jmp   n00333_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              dword ptr [rsp + 624], 0;            jmp   n00337_lit_charset_α
n00333_disjunction_as:    mov              r11, 275
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              jne   .Lx00338_0
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00339_scan_tab_α
.Lx00338_0:               cmp              eax, 1;                              jne   .Lx00338_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00339_scan_tab_α
.Lx00338_1:                                                                     jmp   n00339_scan_tab_α
n00333_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              je    n00340_scan_upto_β
                                                                              jmp   n00333_disjunction_af
n00333_disjunction_af:    mov              r11, 275
                        add              dword ptr [rsp + 624], 1
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 1;                              je    n00341_lit_integer_α
                                                                              jmp   n00342_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_scan_tab_α:        mov              r11, 276
                        mov              rax, qword ptr [rsp + 616]
                        cmp              rax, 1;                              jge   .Lx00343_0
                        add              rax, r15
                        add              rax, 1
.Lx00343_0:               cmp              rax, 1;                              jl    n00333_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00333_disjunction_β
                        mov              qword ptr [rsp + 592], r14
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
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00344_assign_α
n00339_scan_tab_β:        mov              r11, 276
                        mov              r14, qword ptr [rsp + 592];          jmp   n00333_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00344_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00345_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_conjunction_α:     mov              r11, 278
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00346_scan_α
n00345_conjunction_β:     mov              r11, 278;                            jmp   n00342_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_scan_α:            mov              r11, 279
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496];          jmp   n00347_disjunction_α
n00346_scan_β:            mov              r11, 279;                            jmp   n00347_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx00348_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00333_disjunction_as
n00341_lit_integer_β:     mov              r11, 280;                            jmp   n00333_disjunction_af
.Lx00348_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00337_lit_charset_α:     mov              r11, 281
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], -1
                        mov              rax, qword ptr [rip + .Lx00349_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00340_scan_upto_α
n00337_lit_charset_β:     mov              r11, 281;                            jmp   n00333_disjunction_af
.Lx00349_0:               .quad            .Lx00349_0_s
.Lx00349_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00340_scan_upto_α:       mov              r11, 282
                        mov              qword ptr [rsp + 656], r14
.Lx00350_0:               mov              rax, qword ptr [rsp + 656]
                        cmp              rax, r15;                            jge   n00333_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00350_2]
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
                        pop              rax;                                 je    .Lx00350_1
                        mov              qword ptr [rsp + 640], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 648], rax;          jmp   n00333_disjunction_as
.Lx00350_1:               inc              qword ptr [rsp + 656];               jmp   .Lx00350_0
n00340_scan_upto_β:       mov              r11, 282
                        inc              qword ptr [rsp + 656];               jmp   .Lx00350_0
.Lx00350_2:               .quad            .Lx00350_2_s
.Lx00350_2_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx00351_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n00352_scan_tab_α
n00329_lit_integer_β:     mov              r11, 283;                            jmp   gedfnf_ω
.Lx00351_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00352_scan_tab_α:        mov              r11, 284
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00353_0
                        add              rax, r15
                        add              rax, 1
.Lx00353_0:               cmp              rax, 1;                              jl    gedfnf_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    gedfnf_ω
                        mov              qword ptr [rsp + 960], r14
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
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n00354_return_α
n00352_scan_tab_β:        mov              r11, 284
                        mov              r14, qword ptr [rsp + 960];          jmp   gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00354_return_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00325_lit_charset_α:     mov              r11, 286
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], -1
                        mov              rax, qword ptr [rip + .Lx00355_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00328_scan_upto_α
n00325_lit_charset_β:     mov              r11, 286;                            jmp   n00324_disjunction_af
.Lx00355_0:               .quad            .Lx00355_0_s
.Lx00355_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00328_scan_upto_α:       mov              r11, 287
                        mov              qword ptr [rsp + 912], r14
.Lx00356_0:               mov              rax, qword ptr [rsp + 912]
                        cmp              rax, r15;                            jge   n00324_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00356_2]
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
                        pop              rax;                                 je    .Lx00356_1
                        mov              qword ptr [rsp + 896], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 904], rax;          jmp   n00357_scan_tab_α
.Lx00356_1:               inc              qword ptr [rsp + 912];               jmp   .Lx00356_0
n00328_scan_upto_β:       mov              r11, 287
                        inc              qword ptr [rsp + 912];               jmp   .Lx00356_0
.Lx00356_2:               .quad            .Lx00356_2_s
.Lx00356_2_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00357_scan_tab_α:        mov              r11, 288
                        mov              rax, qword ptr [rsp + 904]
                        cmp              rax, 1;                              jge   .Lx00358_0
                        add              rax, r15
                        add              rax, 1
.Lx00358_0:               cmp              rax, 1;                              jl    n00328_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00328_scan_upto_β
                        mov              qword ptr [rsp + 880], r14
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
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00359_call_builtin_icon_α
n00357_scan_tab_β:        mov              r11, 288
                        mov              r14, qword ptr [rsp + 880];          jmp   n00328_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_builtin_icon_α:
                        mov              r11, 289
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn765:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn765]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262312
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n00328_scan_upto_β
                                                                              jmp   n00324_disjunction_as
n00359_call_builtin_icon_β:
                        mov              r11, 289;                            jmp   n00328_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00347_disjunction_α:     mov              r11, 290
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n00360_var_α
n00347_disjunction_as:    mov              r11, 290
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lx00361_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00362_var_α
.Lx00361_0:               cmp              eax, 1;                              jne   .Lx00361_1
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00362_var_α
.Lx00361_1:                                                                     jmp   n00362_var_α
n00347_disjunction_β:     mov              r11, 290
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n00362_var_α
                                                                              jmp   n00362_var_α
n00347_disjunction_af:    mov              r11, 290
                        add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n00363_var_α
                                                                              jmp   n00362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_α:             mov              r11, 291
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00364_assign_α
n00363_var_β:             mov              r11, 291;                            jmp   n00362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00347_disjunction_as
n00364_assign_β:          mov              r11, 292;                            jmp   n00362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:             mov              r11, 293
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00365_unop_α
n00360_var_β:             mov              r11, 293;                            jmp   n00347_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00365_unop_α:            mov              r11, 294
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00366_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_integer_α:     mov              r11, 295
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00367_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00368_binop_test_α
.Lx00367_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00368_binop_test_α:      mov              r11, 296
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 112;                             je    .Lx00369_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 112;                             je    .Lx00369_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 3;                               jne   .Lx00369_2
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 3;                               jne   .Lx00369_2
.Lx00369_1:               mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 424]
                        cmp              rax, rcx;                            jle   n00347_disjunction_af
                        mov              rcx, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rcx
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rcx;          jmp   n00370_var_α
.Lx00369_0:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              r8d, 7
                        lea              r9, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00369_1
                        cmp              eax, 1;                              je    n00347_disjunction_af
                                                                              jmp   n00370_var_α
.Lx00369_2:               mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00347_disjunction_af
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00370_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_var_α:             mov              r11, 297
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx00372_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00373_binop_α
.Lx00372_0:               .quad            .Lx00372_0_s
.Lx00372_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00373_binop_α:           mov              r11, 299
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:             mov              r11, 300
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00375_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_binop_α:           mov              r11, 301
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00376_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00347_disjunction_as
n00376_assign_β:          mov              r11, 302;                            jmp   n00362_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_var_α:             mov              r11, 303
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00377_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx00378_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00379_var_α
.Lx00378_0:               .quad            .Lx00378_0_s
.Lx00378_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_α:             mov              r11, 305
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx00381_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00382_proc_gen_α
.Lx00381_0:               .quad            .Lx00381_0_s
.Lx00381_0_s:             .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00382_proc_gen_α:        mov              r11, 307
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00383_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00383_201
.Lx00383_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00383_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00383_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00383_203
.Lx00383_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00383_203:             lea              rax, [rip + .Lx00383_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00383_1
                        lea              rcx, [rip + .Lx00383_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00383_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00383_4];               jmp   rax
.Lx00383_3:               add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx00383_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00383_2
.Lx00383_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00383_2
.Lx00383_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx00383_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00383_2
.Lx00383_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00383_2
.Lx00383_1:               call             rt_faildescr@PLT
.Lx00383_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00383_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx00383_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00384_var_α
                                                                              jmp   n00385_binop_α
n00382_proc_gen_β:        mov              r11, 307
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 184];          jmp   qword ptr [rsp]
.Lx00383_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00384_var_α
                                                                              jmp   n00385_binop_α
.Lx00383_0:               .quad            .Lx00383_0_s
.Lx00383_0_s:             .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00385_binop_α:           mov              r11, 308
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00386_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_binop_α:           mov              r11, 309
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00387_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_var_α:             mov              r11, 311
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00388_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_return_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:             mov              r11, 313
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00389_lit_string_α
n00318_var_β:             mov              r11, 313;                            jmp   n00317_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 4
                        mov              rax, qword ptr [rip + .Lx00390_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00321_proc_gen_α
.Lx00390_0:               .quad            .Lx00390_0_s
.Lx00390_0_s:             .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00321_proc_gen_α:        mov              r11, 315
                        mov              qword ptr [rsp + 1088], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00391_200
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00391_201
.Lx00391_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00391_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00391_202
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00391_203
.Lx00391_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00391_203:             lea              rax, [rip + .Lx00391_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00391_1
                        lea              rcx, [rip + .Lx00391_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00391_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00391_4];               jmp   rax
.Lx00391_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1096], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1088]
                        test             rax, rax;                            jne   .Lx00391_5
                        mov              qword ptr [rsp + 1088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00391_2
.Lx00391_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00391_2
.Lx00391_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1088]
                        test             rax, rax;                            jne   .Lx00391_6
                        mov              qword ptr [rsp + 1088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00391_2
.Lx00391_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00391_2
.Lx00391_1:               call             rt_faildescr@PLT
.Lx00391_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00391_29
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
.Lx00391_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00317_disjunction_af
                                                                              jmp   n00317_disjunction_as
n00321_proc_gen_β:        mov              r11, 315
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1096];         jmp   qword ptr [rsp]
.Lx00391_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00317_disjunction_af
                                                                              jmp   n00317_disjunction_as
.Lx00391_0:               .quad            .Lx00391_0_s
.Lx00391_0_s:             .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00342_scan_α:            mov              r11, 316
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 480]
                        mov              r14, qword ptr [rsp + 488]
                        mov              r15, qword ptr [rsp + 496];          jmp   n00347_disjunction_α
n00342_scan_β:            mov              r11, 316;                            jmp   n00347_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
gedfnf_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedfnf_β:
                                                                              jmp   gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
gedfnf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1312;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
gedfnf_ω:
                        add              rsp, 1312;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
gedfnf_dcα:
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
                        lea              rcx, [rip + .Lx00392_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00392_2]
                        push             rcx;                                 jmp   FN__gedfnf
.Lx00392_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00392_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__gedlnf:
                        sub              rsp, 1168
                        mov              rdi, rsp
                        add              rdi, 1008
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
gedlnf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00393_disjunction_α:     mov              r11, 317
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n00394_var_α
n00393_disjunction_as:    mov              r11, 317
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lx00395_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00396_assign_α
.Lx00395_0:               cmp              eax, 1;                              jne   .Lx00395_1
                                                                              jmp   n00396_assign_α
.Lx00395_1:                                                                     jmp   n00396_assign_α
n00393_disjunction_β:     mov              r11, 317
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              je    n00397_proc_gen_β
                                                                              jmp   n00393_disjunction_af
n00393_disjunction_af:    mov              r11, 317
                        add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 1;                              je    gedlnf_ω
                                                                              jmp   n00398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_var_α:             mov              r11, 319
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00399_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_scan_enter_α:      mov              r11, 320
                        mov              qword ptr [rsp + 336], r13
                        mov              qword ptr [rsp + 344], r14
                        mov              qword ptr [rsp + 352], r15
                        mov              rdi, qword ptr [rsp + 848]
                        mov              rsi, qword ptr [rsp + 856]
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
                        mov              r14, 0;                              jmp   n00400_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_disjunction_α:     mov              r11, 321
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00401_lit_charset_α
n00400_disjunction_as:    mov              r11, 321
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx00402_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00403_assign_α
.Lx00402_0:               cmp              eax, 1;                              jne   .Lx00402_1
                                                                              jmp   n00403_assign_α
.Lx00402_1:                                                                     jmp   n00403_assign_α
n00400_disjunction_β:     mov              r11, 321
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n00404_scan_upto_β
                                                                              jmp   n00400_disjunction_af
n00400_disjunction_af:    mov              r11, 321
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n00405_lit_integer_α
                                                                              jmp   n00406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_assign_α:          mov              r11, 322
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n00406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx00407_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00408_scan_match_α
.Lx00407_0:               .quad            .Lx00407_0_s
.Lx00407_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00408_scan_match_α:      mov              r11, 324
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00409_disjunction_α
                        mov              rdi, qword ptr [rip + .Lx00410_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n00409_disjunction_α
                        mov              qword ptr [rsp + 592], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 600], rax;          jmp   n00411_scan_tab_α
.Lx00410_0:               .quad            .Lx00410_0_s
.Lx00410_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00411_scan_tab_α:        mov              r11, 325
                        mov              rax, qword ptr [rsp + 600]
                        cmp              rax, 1;                              jge   .Lx00412_0
                        add              rax, r15
                        add              rax, 1
.Lx00412_0:               cmp              rax, 1;                              jl    n00409_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00409_disjunction_α
                        mov              qword ptr [rsp + 576], r14
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
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00409_disjunction_α
n00411_scan_tab_β:        mov              r11, 325
                        mov              r14, qword ptr [rsp + 576];          jmp   n00409_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_disjunction_α:     mov              r11, 326
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00413_lit_charset_α
n00409_disjunction_as:    mov              r11, 326
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx00414_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00415_scan_tab_α
.Lx00414_0:               cmp              eax, 1;                              jne   .Lx00414_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00415_scan_tab_α
.Lx00414_1:                                                                     jmp   n00415_scan_tab_α
n00409_disjunction_β:     mov              r11, 326
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00416_scan_upto_β
                                                                              jmp   n00409_disjunction_af
n00409_disjunction_af:    mov              r11, 326
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00417_lit_integer_α
                                                                              jmp   n00418_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_scan_tab_α:        mov              r11, 327
                        mov              rax, qword ptr [rsp + 472]
                        cmp              rax, 1;                              jge   .Lx00419_0
                        add              rax, r15
                        add              rax, 1
.Lx00419_0:               cmp              rax, 1;                              jl    n00409_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00409_disjunction_β
                        mov              qword ptr [rsp + 448], r14
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00420_assign_α
n00415_scan_tab_β:        mov              r11, 327
                        mov              r14, qword ptr [rsp + 448];          jmp   n00409_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00420_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00421_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_conjunction_α:     mov              r11, 329
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00422_scan_α
n00421_conjunction_β:     mov              r11, 329;                            jmp   n00418_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_scan_α:            mov              r11, 330
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352];          jmp   n00423_var_α
n00422_scan_β:            mov              r11, 330;                            jmp   n00423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00417_lit_integer_α:     mov              r11, 331
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx00424_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00409_disjunction_as
n00417_lit_integer_β:     mov              r11, 331;                            jmp   n00409_disjunction_af
.Lx00424_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00413_lit_charset_α:     mov              r11, 332
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], -1
                        mov              rax, qword ptr [rip + .Lx00425_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00416_scan_upto_α
n00413_lit_charset_β:     mov              r11, 332;                            jmp   n00409_disjunction_af
.Lx00425_0:               .quad            .Lx00425_0_s
.Lx00425_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00416_scan_upto_α:       mov              r11, 333
                        mov              qword ptr [rsp + 512], r14
.Lx00426_0:               mov              rax, qword ptr [rsp + 512]
                        cmp              rax, r15;                            jge   n00409_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00426_2]
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
                        pop              rax;                                 je    .Lx00426_1
                        mov              qword ptr [rsp + 496], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 504], rax;          jmp   n00409_disjunction_as
.Lx00426_1:               inc              qword ptr [rsp + 512];               jmp   .Lx00426_0
n00416_scan_upto_β:       mov              r11, 333
                        inc              qword ptr [rsp + 512];               jmp   .Lx00426_0
.Lx00426_2:               .quad            .Lx00426_2_s
.Lx00426_2_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00405_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lx00427_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00428_scan_tab_α
n00405_lit_integer_β:     mov              r11, 334;                            jmp   gedlnf_ω
.Lx00427_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00428_scan_tab_α:        mov              r11, 335
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00429_0
                        add              rax, r15
                        add              rax, 1
.Lx00429_0:               cmp              rax, 1;                              jl    gedlnf_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    gedlnf_ω
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
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00430_return_α
n00428_scan_tab_β:        mov              r11, 335
                        mov              r14, qword ptr [rsp + 816];          jmp   gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00430_return_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00401_lit_charset_α:     mov              r11, 337
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00431_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00404_scan_upto_α
n00401_lit_charset_β:     mov              r11, 337;                            jmp   n00400_disjunction_af
.Lx00431_0:               .quad            .Lx00431_0_s
.Lx00431_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00404_scan_upto_α:       mov              r11, 338
                        mov              qword ptr [rsp + 768], r14
.Lx00432_0:               mov              rax, qword ptr [rsp + 768]
                        cmp              rax, r15;                            jge   n00400_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00432_2]
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
                        pop              rax;                                 je    .Lx00432_1
                        mov              qword ptr [rsp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n00433_scan_tab_α
.Lx00432_1:               inc              qword ptr [rsp + 768];               jmp   .Lx00432_0
n00404_scan_upto_β:       mov              r11, 338
                        inc              qword ptr [rsp + 768];               jmp   .Lx00432_0
.Lx00432_2:               .quad            .Lx00432_2_s
.Lx00432_2_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00433_scan_tab_α:        mov              r11, 339
                        mov              rax, qword ptr [rsp + 760]
                        cmp              rax, 1;                              jge   .Lx00434_0
                        add              rax, r15
                        add              rax, 1
.Lx00434_0:               cmp              rax, 1;                              jl    n00404_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00404_scan_upto_β
                        mov              qword ptr [rsp + 736], r14
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
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n00435_call_builtin_icon_α
n00433_scan_tab_β:        mov              r11, 339
                        mov              r14, qword ptr [rsp + 736];          jmp   n00404_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00435_call_builtin_icon_α:
                        mov              r11, 340
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn887:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn887]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262312
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n00404_scan_upto_β
                                                                              jmp   n00400_disjunction_as
n00435_call_builtin_icon_β:
                        mov              r11, 340;                            jmp   n00404_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00423_var_α:             mov              r11, 341
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx00437_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00438_binop_α
.Lx00437_0:               .quad            .Lx00437_0_s
.Lx00437_0_s:             .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n00438_binop_α:           mov              r11, 343
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00439_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00440_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_binop_α:           mov              r11, 345
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00441_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_var_α:             mov              r11, 347
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lx00444_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00445_var_α
.Lx00444_0:               .quad            .Lx00444_0_s
.Lx00444_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00445_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx00447_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00448_proc_gen_α
.Lx00447_0:               .quad            .Lx00447_0_s
.Lx00447_0_s:             .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00448_proc_gen_α:        mov              r11, 351
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00449_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00449_201
.Lx00449_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00449_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00449_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00449_203
.Lx00449_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00449_203:             lea              rax, [rip + .Lx00449_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00449_1
                        lea              rcx, [rip + .Lx00449_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00449_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00449_4];               jmp   rax
.Lx00449_3:               add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx00449_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00449_2
.Lx00449_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00449_2
.Lx00449_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx00449_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00449_2
.Lx00449_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00449_2
.Lx00449_1:               call             rt_faildescr@PLT
.Lx00449_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00449_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx00449_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00450_var_α
                                                                              jmp   n00451_binop_α
n00448_proc_gen_β:        mov              r11, 351
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 184];          jmp   qword ptr [rsp]
.Lx00449_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00450_var_α
                                                                              jmp   n00451_binop_α
.Lx00449_0:               .quad            .Lx00449_0_s
.Lx00449_0_s:             .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00451_binop_α:           mov              r11, 352
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00452_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_binop_α:           mov              r11, 353
                        mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00453_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_assign_α:          mov              r11, 354
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_var_α:             mov              r11, 355
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00454_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_return_α:          mov              r11, 356
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00394_var_α:             mov              r11, 357
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 984], rax;          jmp   n00455_lit_string_α
n00394_var_β:             mov              r11, 357;                            jmp   n00393_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00455_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 4
                        mov              rax, qword ptr [rip + .Lx00456_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00397_proc_gen_α
.Lx00456_0:               .quad            .Lx00456_0_s
.Lx00456_0_s:             .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00397_proc_gen_α:        mov              r11, 359
                        mov              qword ptr [rsp + 944], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00457_200
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00457_201
.Lx00457_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00457_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00457_202
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00457_203
.Lx00457_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00457_203:             lea              rax, [rip + .Lx00457_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00457_1
                        lea              rcx, [rip + .Lx00457_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00457_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00457_4];               jmp   rax
.Lx00457_3:               add              rsp, 16
                        mov              qword ptr [rsp + 952], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lx00457_5
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00457_2
.Lx00457_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00457_2
.Lx00457_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lx00457_6
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00457_2
.Lx00457_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00457_2
.Lx00457_1:               call             rt_faildescr@PLT
.Lx00457_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00457_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
.Lx00457_29:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00393_disjunction_af
                                                                              jmp   n00393_disjunction_as
n00397_proc_gen_β:        mov              r11, 359
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 952];          jmp   qword ptr [rsp]
.Lx00457_7:               add              rsp, 8
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00393_disjunction_af
                                                                              jmp   n00393_disjunction_as
.Lx00457_0:               .quad            .Lx00457_0_s
.Lx00457_0_s:             .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00418_scan_α:            mov              r11, 360
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 336]
                        mov              r14, qword ptr [rsp + 344]
                        mov              r15, qword ptr [rsp + 352];          jmp   n00423_var_α
n00418_scan_β:            mov              r11, 360;                            jmp   n00423_var_α
#-----------------------------------------------------------------------------------------------------------------------
gedlnf_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedlnf_β:
                                                                              jmp   gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
gedlnf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1168;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
gedlnf_ω:
                        add              rsp, 1168;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
gedlnf_dcα:
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
                        lea              rcx, [rip + .Lx00458_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00458_2]
                        push             rcx;                                 jmp   FN__gedlnf
.Lx00458_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00458_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__geddate:
                        sub              rsp, 2752
                        mov              rdi, rsp
                        add              rdi, 2592
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
geddate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00459_disjunction_α:     mov              r11, 361
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              dword ptr [rsp + 1104], 0;           jmp   n00460_var_ref_α
n00459_disjunction_as:    mov              r11, 361
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              jne   .Lx00461_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n00462_disjunction_α
.Lx00461_0:                                                                    jmp   n00462_disjunction_α
n00459_disjunction_β:     mov              r11, 361
                        mov              eax, dword ptr [rsp + 1104];         jmp   n00462_disjunction_α
n00459_disjunction_af:    mov              r11, 361
                        add              dword ptr [rsp + 1104], 1
                        mov              eax, dword ptr [rsp + 1104];         jmp   n00462_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00460_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # geddate__INITFLAG__0
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00463_nulltest_var_α
n00460_var_ref_β:         mov              r11, 362;                            jmp   n00459_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00463_nulltest_var_α:    mov              r11, 363
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              al, 104;                             je    n00459_disjunction_af
                        mov              rdi, qword ptr [rsp + 2528]
                        mov              rsi, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00459_disjunction_af
                        cmp              eax, 0;                              jne   n00459_disjunction_af
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n00464_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_lit_integer_α:     mov              r11, 364
                        mov              qword ptr [rsp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Lx00465_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n00466_assign_var_α
.Lx00465_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00466_assign_var_α:      mov              r11, 365
                        mov              rdi, qword ptr [rsp + 2544]
                        mov              rsi, qword ptr [rsp + 2552]
                        mov              rdx, qword ptr [rsp + 2576]
                        mov              rcx, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00459_disjunction_af
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00467_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_call_builtin_icon_α:
                        mov              r11, 366
                        .section         .rodata
.Lrkfn1070:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1070]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n00468_var_ref_α
                                                                              jmp   n00469_assign_α
n00467_call_builtin_icon_β:
                        mov              r11, 366;                            jmp   n00468_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [r9 + 48], rax             # geddate__STATIC__ftab
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00468_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n00470_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 3
                        mov              rax, qword ptr [rip + .Lx00471_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00472_subscript_α
.Lx00471_0:              .quad            .Lx00471_0_s
.Lx00471_0_s:            .string          "JAN"
#-----------------------------------------------------------------------------------------------------------------------
n00472_subscript_α:       mov              r11, 370
                        mov              rdi, qword ptr [rsp + 2416]
                        mov              rsi, qword ptr [rsp + 2424]
                        mov              rdx, qword ptr [rsp + 2432]
                        mov              rcx, qword ptr [rsp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00473_var_ref_α
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 3
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00476_assign_var_α
.Lx00475_0:              .quad            .Lx00475_0_s
.Lx00475_0_s:            .string          "Jan"
#-----------------------------------------------------------------------------------------------------------------------
n00476_assign_var_α:      mov              r11, 372
                        mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 2480]
                        mov              rcx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00473_var_ref_α
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n00473_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_var_ref_α:         mov              r11, 373
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n00477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 3
                        mov              rax, qword ptr [rip + .Lx00478_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n00479_subscript_α
.Lx00478_0:              .quad            .Lx00478_0_s
.Lx00478_0_s:            .string          "FEB"
#-----------------------------------------------------------------------------------------------------------------------
n00479_subscript_α:       mov              r11, 375
                        mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              rdx, qword ptr [rsp + 2352]
                        mov              rcx, qword ptr [rsp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00480_var_ref_α
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n00481_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 3
                        mov              rax, qword ptr [rip + .Lx00482_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00483_assign_var_α
.Lx00482_0:              .quad            .Lx00482_0_s
.Lx00482_0_s:            .string          "Feb"
#-----------------------------------------------------------------------------------------------------------------------
n00483_assign_var_α:      mov              r11, 377
                        mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              rdx, qword ptr [rsp + 2400]
                        mov              rcx, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00480_var_ref_α
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n00480_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 3
                        mov              rax, qword ptr [rip + .Lx00485_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n00486_subscript_α
.Lx00485_0:              .quad            .Lx00485_0_s
.Lx00485_0_s:            .string          "MAR"
#-----------------------------------------------------------------------------------------------------------------------
n00486_subscript_α:       mov              r11, 380
                        mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00487_var_ref_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n00488_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 3
                        mov              rax, qword ptr [rip + .Lx00489_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00490_assign_var_α
.Lx00489_0:              .quad            .Lx00489_0_s
.Lx00489_0_s:            .string          "Mar"
#-----------------------------------------------------------------------------------------------------------------------
n00490_assign_var_α:      mov              r11, 382
                        mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              rdx, qword ptr [rsp + 2320]
                        mov              rcx, qword ptr [rsp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00487_var_ref_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n00487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n00491_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 3
                        mov              rax, qword ptr [rip + .Lx00492_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00493_subscript_α
.Lx00492_0:              .quad            .Lx00492_0_s
.Lx00492_0_s:            .string          "APR"
#-----------------------------------------------------------------------------------------------------------------------
n00493_subscript_α:       mov              r11, 385
                        mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00494_var_ref_α
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n00495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 3
                        mov              rax, qword ptr [rip + .Lx00496_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00497_assign_var_α
.Lx00496_0:              .quad            .Lx00496_0_s
.Lx00496_0_s:            .string          "Apr"
#-----------------------------------------------------------------------------------------------------------------------
n00497_assign_var_α:      mov              r11, 387
                        mov              rdi, qword ptr [rsp + 2208]
                        mov              rsi, qword ptr [rsp + 2216]
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00494_var_ref_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n00494_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n00498_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 3
                        mov              rax, qword ptr [rip + .Lx00499_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n00500_subscript_α
.Lx00499_0:              .quad            .Lx00499_0_s
.Lx00499_0_s:            .string          "MAY"
#-----------------------------------------------------------------------------------------------------------------------
n00500_subscript_α:       mov              r11, 390
                        mov              rdi, qword ptr [rsp + 2096]
                        mov              rsi, qword ptr [rsp + 2104]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              rcx, qword ptr [rsp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00501_var_ref_α
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n00502_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 3
                        mov              rax, qword ptr [rip + .Lx00503_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n00504_assign_var_α
.Lx00503_0:              .quad            .Lx00503_0_s
.Lx00503_0_s:            .string          "May"
#-----------------------------------------------------------------------------------------------------------------------
n00504_assign_var_α:      mov              r11, 392
                        mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00501_var_ref_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n00501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00501_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n00505_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lx00506_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00507_subscript_α
.Lx00506_0:              .quad            .Lx00506_0_s
.Lx00506_0_s:            .string          "JUN"
#-----------------------------------------------------------------------------------------------------------------------
n00507_subscript_α:       mov              r11, 395
                        mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00508_var_ref_α
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n00509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 3
                        mov              rax, qword ptr [rip + .Lx00510_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00511_assign_var_α
.Lx00510_0:              .quad            .Lx00510_0_s
.Lx00510_0_s:            .string          "Jun"
#-----------------------------------------------------------------------------------------------------------------------
n00511_assign_var_α:      mov              r11, 397
                        mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00508_var_ref_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n00508_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n00512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 3
                        mov              rax, qword ptr [rip + .Lx00513_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n00514_subscript_α
.Lx00513_0:              .quad            .Lx00513_0_s
.Lx00513_0_s:            .string          "JUL"
#-----------------------------------------------------------------------------------------------------------------------
n00514_subscript_α:       mov              r11, 400
                        mov              rdi, qword ptr [rsp + 1936]
                        mov              rsi, qword ptr [rsp + 1944]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00515_var_ref_α
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n00516_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 3
                        mov              rax, qword ptr [rip + .Lx00517_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00518_assign_var_α
.Lx00517_0:              .quad            .Lx00517_0_s
.Lx00517_0_s:            .string          "Jul"
#-----------------------------------------------------------------------------------------------------------------------
n00518_assign_var_α:      mov              r11, 402
                        mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00515_var_ref_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n00515_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00515_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n00519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00519_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 3
                        mov              rax, qword ptr [rip + .Lx00520_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n00521_subscript_α
.Lx00520_0:              .quad            .Lx00520_0_s
.Lx00520_0_s:            .string          "AUG"
#-----------------------------------------------------------------------------------------------------------------------
n00521_subscript_α:       mov              r11, 405
                        mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1872]
                        mov              rcx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00522_var_ref_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n00523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_lit_string_α:      mov              r11, 406
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 3
                        mov              rax, qword ptr [rip + .Lx00524_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00525_assign_var_α
.Lx00524_0:              .quad            .Lx00524_0_s
.Lx00524_0_s:            .string          "Aug"
#-----------------------------------------------------------------------------------------------------------------------
n00525_assign_var_α:      mov              r11, 407
                        mov              rdi, qword ptr [rsp + 1888]
                        mov              rsi, qword ptr [rsp + 1896]
                        mov              rdx, qword ptr [rsp + 1920]
                        mov              rcx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00522_var_ref_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n00526_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 3
                        mov              rax, qword ptr [rip + .Lx00527_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00528_subscript_α
.Lx00527_0:              .quad            .Lx00527_0_s
.Lx00527_0_s:            .string          "SEP"
#-----------------------------------------------------------------------------------------------------------------------
n00528_subscript_α:       mov              r11, 410
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              rdx, qword ptr [rsp + 1792]
                        mov              rcx, qword ptr [rsp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00529_var_ref_α
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n00530_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00530_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx00531_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n00532_assign_var_α
.Lx00531_0:              .quad            .Lx00531_0_s
.Lx00531_0_s:            .string          "Sep"
#-----------------------------------------------------------------------------------------------------------------------
n00532_assign_var_α:      mov              r11, 412
                        mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1840]
                        mov              rcx, qword ptr [rsp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00529_var_ref_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n00529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00529_var_ref_α:         mov              r11, 413
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:      mov              r11, 414
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 3
                        mov              rax, qword ptr [rip + .Lx00534_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n00535_subscript_α
.Lx00534_0:              .quad            .Lx00534_0_s
.Lx00534_0_s:            .string          "OCT"
#-----------------------------------------------------------------------------------------------------------------------
n00535_subscript_α:       mov              r11, 415
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00536_var_ref_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n00537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_lit_string_α:      mov              r11, 416
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 3
                        mov              rax, qword ptr [rip + .Lx00538_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n00539_assign_var_α
.Lx00538_0:              .quad            .Lx00538_0_s
.Lx00538_0_s:            .string          "Oct"
#-----------------------------------------------------------------------------------------------------------------------
n00539_assign_var_α:      mov              r11, 417
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00536_var_ref_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00536_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_var_ref_α:         mov              r11, 418
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n00540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 3
                        mov              rax, qword ptr [rip + .Lx00541_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n00542_subscript_α
.Lx00541_0:              .quad            .Lx00541_0_s
.Lx00541_0_s:            .string          "NOV"
#-----------------------------------------------------------------------------------------------------------------------
n00542_subscript_α:       mov              r11, 420
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00543_var_ref_α
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n00544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00546_assign_var_α
.Lx00545_0:              .quad            .Lx00545_0_s
.Lx00545_0_s:            .string          "Nov"
#-----------------------------------------------------------------------------------------------------------------------
n00546_assign_var_α:      mov              r11, 422
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00543_var_ref_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n00543_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_var_ref_α:         mov              r11, 423
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n00547_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00547_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx00548_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00549_subscript_α
.Lx00548_0:              .quad            .Lx00548_0_s
.Lx00548_0_s:            .string          "DEC"
#-----------------------------------------------------------------------------------------------------------------------
n00549_subscript_α:       mov              r11, 425
                        mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00550_var_ref_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n00551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:      mov              r11, 426
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 3
                        mov              rax, qword ptr [rip + .Lx00552_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00553_assign_var_α
.Lx00552_0:              .quad            .Lx00552_0_s
.Lx00552_0_s:            .string          "Dec"
#-----------------------------------------------------------------------------------------------------------------------
n00553_assign_var_α:      mov              r11, 427
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              rcx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00550_var_ref_α
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n00550_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_var_ref_α:         mov              r11, 428
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n00554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_lit_string_α:      mov              r11, 429
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 3
                        mov              rax, qword ptr [rip + .Lx00555_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n00556_subscript_α
.Lx00555_0:              .quad            .Lx00555_0_s
.Lx00555_0_s:            .string          "ABT"
#-----------------------------------------------------------------------------------------------------------------------
n00556_subscript_α:       mov              r11, 430
                        mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              rdx, qword ptr [rsp + 1472]
                        mov              rcx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00557_var_ref_α
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n00558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00558_lit_string_α:      mov              r11, 431
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 3
                        mov              rax, qword ptr [rip + .Lx00559_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n00560_assign_var_α
.Lx00559_0:              .quad            .Lx00559_0_s
.Lx00559_0_s:            .string          "abt"
#-----------------------------------------------------------------------------------------------------------------------
n00560_assign_var_α:      mov              r11, 432
                        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              rdx, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00557_var_ref_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n00557_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_var_ref_α:         mov              r11, 433
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n00561_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00561_lit_string_α:      mov              r11, 434
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 3
                        mov              rax, qword ptr [rip + .Lx00562_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00563_subscript_α
.Lx00562_0:              .quad            .Lx00562_0_s
.Lx00562_0_s:            .string          "BEF"
#-----------------------------------------------------------------------------------------------------------------------
n00563_subscript_α:       mov              r11, 435
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              rdx, qword ptr [rsp + 1392]
                        mov              rcx, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00564_var_ref_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_lit_string_α:      mov              r11, 436
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lx00566_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00567_assign_var_α
.Lx00566_0:              .quad            .Lx00566_0_s
.Lx00566_0_s:            .string          "bef"
#-----------------------------------------------------------------------------------------------------------------------
n00567_assign_var_α:      mov              r11, 437
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1440]
                        mov              rcx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00564_var_ref_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n00564_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00564_var_ref_α:         mov              r11, 438
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n00568_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_lit_string_α:      mov              r11, 439
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 3
                        mov              rax, qword ptr [rip + .Lx00569_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n00570_subscript_α
.Lx00569_0:              .quad            .Lx00569_0_s
.Lx00569_0_s:            .string          "AFT"
#-----------------------------------------------------------------------------------------------------------------------
n00570_subscript_α:       mov              r11, 440
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00571_var_ref_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n00572_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_lit_string_α:      mov              r11, 441
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lx00573_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00574_assign_var_α
.Lx00573_0:              .quad            .Lx00573_0_s
.Lx00573_0_s:            .string          "aft"
#-----------------------------------------------------------------------------------------------------------------------
n00574_assign_var_α:      mov              r11, 442
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00571_var_ref_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00571_var_ref_α:        mov              r11, 443
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n00575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00575_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 3
                        mov              rax, qword ptr [rip + .Lx00576_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00577_subscript_α
.Lx00576_0:              .quad            .Lx00576_0_s
.Lx00576_0_s:            .string          "CAL"
#-----------------------------------------------------------------------------------------------------------------------
n00577_subscript_α:      mov              r11, 445
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              rdx, qword ptr [rsp + 1232]
                        mov              rcx, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00578_var_ref_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_lit_string_α:     mov              r11, 446
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx00580_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00581_assign_var_α
.Lx00580_0:              .quad            .Lx00580_0_s
.Lx00580_0_s:            .string          "cal"
#-----------------------------------------------------------------------------------------------------------------------
n00581_assign_var_α:     mov              r11, 447
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00578_var_ref_α
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00578_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n00582_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00582_lit_string_α:     mov              r11, 449
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 3
                        mov              rax, qword ptr [rip + .Lx00583_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00584_subscript_α
.Lx00583_0:              .quad            .Lx00583_0_s
.Lx00583_0_s:            .string          "EST"
#-----------------------------------------------------------------------------------------------------------------------
n00584_subscript_α:      mov              r11, 450
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00462_disjunction_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00585_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00585_lit_string_α:     mov              r11, 451
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 3
                        mov              rax, qword ptr [rip + .Lx00586_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00587_assign_var_α
.Lx00586_0:              .quad            .Lx00586_0_s
.Lx00586_0_s:            .string          "est"
#-----------------------------------------------------------------------------------------------------------------------
n00587_assign_var_α:     mov              r11, 452
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00462_disjunction_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00588_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00588_conjunction_α:    mov              r11, 453
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00459_disjunction_as
n00588_conjunction_β:    mov              r11, 453;                            jmp   n00462_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_disjunction_α:    mov              r11, 454
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n00589_var_α
n00462_disjunction_as:   mov              r11, 454
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lx00590_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00591_assign_α
.Lx00590_0:              cmp              eax, 1;                              jne   .Lx00590_1
                                                                              jmp   n00591_assign_α
.Lx00590_1:                                                                    jmp   n00591_assign_α
n00462_disjunction_β:    mov              r11, 454
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              je    n00592_proc_gen_β
                                                                              jmp   n00462_disjunction_af
n00462_disjunction_af:   mov              r11, 454
                        add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 1;                              je    geddate_ω
                                                                              jmp   n00593_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00591_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00593_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00593_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 0
                        mov              rax, qword ptr [rip + .Lx00594_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00595_assign_α
.Lx00594_0:              .quad            .Lx00594_0_s
.Lx00594_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00595_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00596_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00596_var_α:            mov              r11, 458
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00597_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_scan_enter_α:     mov              r11, 459
                        mov              qword ptr [rsp + 304], r13
                        mov              qword ptr [rsp + 312], r14
                        mov              qword ptr [rsp + 320], r15
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
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
                        mov              r14, 0;                              jmp   n00598_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00598_lit_integer_α:    mov              r11, 460
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx00599_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00600_scan_pos_α
.Lx00599_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00600_scan_pos_α:       mov              r11, 461
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00601_0
                        add              rax, r15
                        add              rax, 1
.Lx00601_0:              cmp              rax, 1;                              jl    n00602_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00602_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00602_var_α
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   n00603_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00602_var_α:            mov              r11, 462
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0;            jmp   n00604_lit_charset_α
n00602_var_β:            mov              r11, 462;                            jmp   n00603_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00604_lit_charset_α:    mov              r11, 463
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], -1
                        mov              rax, qword ptr [rip + .Lx00605_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00606_scan_many_α
.Lx00605_0:              .quad            .Lx00605_0_s
.Lx00605_0_s:            .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00606_scan_many_α:      mov              r11, 464
                        mov              eax, r14d
.Lx00607_0:              cmp              eax, r15d;                           jge   .Lx00607_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00607_2]
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
                        pop              rax;                                 je    .Lx00607_1
                        add              eax, 1;                              jmp   .Lx00607_0
.Lx00607_1:              cmp              eax, r14d;                           je    n00608_disjunction_α
                        mov              qword ptr [rsp + 800], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 808], rcx;          jmp   n00609_scan_tab_α
n00606_scan_many_β:      mov              r11, 464;                            jmp   n00608_disjunction_α
.Lx00607_2:              .quad            .Lx00607_2_s
.Lx00607_2_s:            .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00609_scan_tab_α:       mov              r11, 465
                        mov              rax, qword ptr [rsp + 808]
                        cmp              rax, 1;                              jge   .Lx00610_0
                        add              rax, r15
                        add              rax, 1
.Lx00610_0:              cmp              rax, 1;                              jl    n00608_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00608_disjunction_α
                        mov              qword ptr [rsp + 784], r14
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
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00608_disjunction_α
n00609_scan_tab_β:       mov              r11, 465
                        mov              r14, qword ptr [rsp + 784];          jmp   n00608_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00608_disjunction_α:    mov              r11, 466
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n00611_lit_charset_α
n00608_disjunction_as:   mov              r11, 466
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lx00612_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00613_scan_tab_α
.Lx00612_0:              cmp              eax, 1;                              jne   .Lx00612_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00613_scan_tab_α
.Lx00612_1:                                                                    jmp   n00613_scan_tab_α
n00608_disjunction_β:    mov              r11, 466
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n00614_scan_upto_β
                                                                              jmp   n00608_disjunction_af
n00608_disjunction_af:   mov              r11, 466
                        add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n00615_lit_integer_α
                                                                              jmp   n00616_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00613_scan_tab_α:       mov              r11, 467
                        mov              rax, qword ptr [rsp + 680]
                        cmp              rax, 1;                              jge   .Lx00617_0
                        add              rax, r15
                        add              rax, 1
.Lx00617_0:              cmp              rax, 1;                              jl    n00608_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00608_disjunction_β
                        mov              qword ptr [rsp + 656], r14
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
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00618_assign_α
n00613_scan_tab_β:       mov              r11, 467
                        mov              r14, qword ptr [rsp + 656];          jmp   n00608_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00618_assign_α:         mov              r11, 468
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00616_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00616_var_α:            mov              r11, 469
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00619_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00619_lit_string_α:     mov              r11, 470
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx00620_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00621_disjunction_α
.Lx00620_0:              .quad            .Lx00620_0_s
.Lx00620_0_s:            .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00621_disjunction_α:    mov              r11, 471
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n00622_var_ref_α
n00621_disjunction_as:   mov              r11, 471
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Lx00623_0
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00624_binop_α
.Lx00623_0:              cmp              eax, 1;                              jne   .Lx00623_1
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00624_binop_α
.Lx00623_1:                                                                    jmp   n00624_binop_α
n00621_disjunction_β:    mov              r11, 471
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n00621_disjunction_af
                                                                              jmp   n00621_disjunction_af
n00621_disjunction_af:   mov              r11, 471
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n00625_var_α
                                                                              jmp   n00598_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00624_binop_α:          mov              r11, 472
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00626_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00626_binop_α:          mov              r11, 473
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00627_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00627_assign_α:         mov              r11, 474
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00628_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00628_conjunction_α:    mov              r11, 475
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00598_lit_integer_α
n00628_conjunction_β:    mov              r11, 475;                            jmp   n00598_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00625_var_α:            mov              r11, 476
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00621_disjunction_as
n00625_var_β:            mov              r11, 476;                            jmp   n00621_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00622_var_ref_α:        mov              r11, 477
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00629_var_α
n00622_var_ref_β:        mov              r11, 477;                            jmp   n00621_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00629_var_α:            mov              r11, 478
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00630_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00630_subscript_α:      mov              r11, 479
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00621_disjunction_af
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00631_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00631_deref_α:          mov              r11, 480
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00621_disjunction_af
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00632_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00632_unop_test_α:      mov              r11, 481
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 104;                             je    n00621_disjunction_af
                        cmp              eax, 0;                              je    n00621_disjunction_af
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00621_disjunction_as
n00632_unop_test_β:      mov              r11, 481;                            jmp   n00621_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00615_lit_integer_α:    mov              r11, 482
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx00633_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00608_disjunction_as
n00615_lit_integer_β:    mov              r11, 482;                            jmp   n00608_disjunction_af
.Lx00633_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00611_lit_charset_α:    mov              r11, 483
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lx00634_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00614_scan_upto_α
n00611_lit_charset_β:    mov              r11, 483;                            jmp   n00608_disjunction_af
.Lx00634_0:              .quad            .Lx00634_0_s
.Lx00634_0_s:            .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00614_scan_upto_α:      mov              r11, 484
                        mov              qword ptr [rsp + 720], r14
.Lx00635_0:              mov              rax, qword ptr [rsp + 720]
                        cmp              rax, r15;                            jge   n00608_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00635_2]
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
                        pop              rax;                                 je    .Lx00635_1
                        mov              qword ptr [rsp + 704], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 712], rax;          jmp   n00608_disjunction_as
.Lx00635_1:              inc              qword ptr [rsp + 720];               jmp   .Lx00635_0
n00614_scan_upto_β:      mov              r11, 484
                        inc              qword ptr [rsp + 720];               jmp   .Lx00635_0
.Lx00635_2:              .quad            .Lx00635_2_s
.Lx00635_2_s:            .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00603_scan_α:           mov              r11, 485
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 304]
                        mov              r14, qword ptr [rsp + 312]
                        mov              r15, qword ptr [rsp + 320];          jmp   n00636_disjunction_α
n00603_scan_β:           mov              r11, 485;                            jmp   n00636_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00636_disjunction_α:    mov              r11, 486
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00637_var_α
n00636_disjunction_as:   mov              r11, 486
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx00638_0
                                                                              jmp   geddate_γ
.Lx00638_0:              cmp              eax, 1;                              jne   .Lx00638_1
                                                                              jmp   geddate_γ
.Lx00638_1:                                                                    jmp   geddate_γ
n00636_disjunction_β:    mov              r11, 486
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    geddate_ω
                                                                              jmp   geddate_ω
n00636_disjunction_af:   mov              r11, 486
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00639_var_α
                                                                              jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00639_var_α:            mov              r11, 487
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00640_lit_integer_α
n00639_var_β:            mov              r11, 487;                            jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00640_lit_integer_α:    mov              r11, 488
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx00641_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00642_call_builtin_icon_α
.Lx00641_0:              .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n00642_call_builtin_icon_α:
                        mov              r11, 489
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn1228:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1228]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    geddate_ω
                                                                              jmp   n00643_return_α
n00642_call_builtin_icon_β:
                        mov              r11, 489;                            jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00643_return_α:         mov              r11, 490
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00637_var_α:            mov              r11, 491
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00644_unop_α
n00637_var_β:            mov              r11, 491;                            jmp   n00636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00644_unop_α:           mov              r11, 492
                        mov              rdi, qword ptr [rsp + 2592]
                        mov              rsi, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00645_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00645_lit_integer_α:    mov              r11, 493
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx00646_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00647_binop_test_α
.Lx00646_0:              .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n00647_binop_test_α:     mov              r11, 494
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 112;                             je    .Lx00648_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 112;                             je    .Lx00648_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 3;                               jne   .Lx00648_2
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 3;                               jne   .Lx00648_2
.Lx00648_1:              mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              rax, rcx;                            jle   n00636_disjunction_af
                        mov              rcx, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rcx
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rcx;          jmp   n00649_var_α
.Lx00648_0:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              r8d, 7
                        lea              r9, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00648_1
                        cmp              eax, 1;                              je    n00636_disjunction_af
                                                                              jmp   n00649_var_α
.Lx00648_2:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 176]
                        mov              rcx, qword ptr [rsp + 184]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00636_disjunction_af
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00649_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_var_α:            mov              r11, 495
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00650_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00650_lit_integer_α:    mov              r11, 496
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx00651_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00652_lit_integer_α
.Lx00651_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00652_lit_integer_α:    mov              r11, 497
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx00653_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00654_subscript_α
.Lx00653_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00654_subscript_α:      mov              r11, 498
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              r8, qword ptr [rsp + 112]
                        mov              r9, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    geddate_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00655_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00655_return_α:         mov              r11, 499
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00589_var_α:            mov              r11, 500
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00656_lit_string_α
n00589_var_β:            mov              r11, 500;                            jmp   n00462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00656_lit_string_α:     mov              r11, 501
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Lx00657_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00592_proc_gen_α
.Lx00657_0:              .quad            .Lx00657_0_s
.Lx00657_0_s:            .string          "DATE"
#-----------------------------------------------------------------------------------------------------------------------
n00592_proc_gen_α:       mov              r11, 502
                        mov              qword ptr [rsp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00658_200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00658_201
.Lx00658_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00658_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00658_202
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00658_203
.Lx00658_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00658_203:            lea              rax, [rip + .Lx00658_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00658_1
                        lea              rcx, [rip + .Lx00658_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00658_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00658_4];              jmp   rax
.Lx00658_3:              add              rsp, 16
                        mov              qword ptr [rsp + 1016], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lx00658_5
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00658_2
.Lx00658_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00658_2
.Lx00658_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lx00658_6
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00658_2
.Lx00658_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00658_2
.Lx00658_1:              call             rt_faildescr@PLT
.Lx00658_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00658_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
.Lx00658_29:             mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00462_disjunction_af
                                                                              jmp   n00659_lit_charset_α
n00592_proc_gen_β:       mov              r11, 502
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1016];         jmp   qword ptr [rsp]
.Lx00658_7:              add              rsp, 8
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00462_disjunction_af
                                                                              jmp   n00659_lit_charset_α
.Lx00658_0:              .quad            .Lx00658_0_s
.Lx00658_0_s:            .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00659_lit_charset_α:    mov              r11, 503
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx00660_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00661_call_builtin_icon_α
.Lx00660_0:              .quad            .Lx00660_0_s
.Lx00660_0_s:            .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00661_call_builtin_icon_α:
                        mov              r11, 504
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn1248:             .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1248]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262312
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00592_proc_gen_β
                                                                              jmp   n00462_disjunction_as
n00661_call_builtin_icon_β:
                        mov              r11, 504;                            jmp   n00592_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
geddate_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
geddate_β:
                                                                              jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
geddate_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 2752;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
geddate_ω:
                        add              rsp, 2752;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
geddate_dcα:
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
                        lea              rcx, [rip + .Lx00662_3]
                        push             rcx
                        lea              rcx, [rip + .Lx00662_2]
                        push             rcx;                                 jmp   FN__geddate
.Lx00662_2:              add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx00662_3:              add              rsp, 24
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
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ptab"
.Lgvan1:                .string          "gedscan__STATIC__alnum"
.Lgvan2:                .string          "gedscan__INITFLAG__0"
.Lgvan3:                .string          "geddate__STATIC__ftab"
.Lgvan4:                .string          "geddate__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 5248
                        mov              rdi, rsp
                        add              rdi, 4896
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 10
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00663_disjunction_α:    mov              r11, 505
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              dword ptr [rsp + 4464], 0;           jmp   n00664_var_α
n00663_disjunction_as:   mov              r11, 505
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 0;                              jne   .Lx00665_0
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n00666_var_α
.Lx00665_0:              cmp              eax, 1;                              jne   .Lx00665_1
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n00666_var_α
.Lx00665_1:                                                                    jmp   n00666_var_α
n00663_disjunction_β:    mov              r11, 505
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 0;                              je    n00667_disjunction_β
                                                                              jmp   n00666_var_α
n00663_disjunction_af:   mov              r11, 505
                        add              dword ptr [rsp + 4464], 1
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 1;                              je    n00668_keyword_icon_α
                                                                              jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00666_var_α:            mov              r11, 506
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n00669_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00669_call_proc_staged_α:
                        mov              r11, 507
                        lea              rsi, [rsp + 4432]
                        call             gedload_dcα;                         jmp   .Lx00670_2
.Lx00670_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00670_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
.Lx00670_29:             mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    n00671_var_α
                                                                              jmp   n00672_assign_α
n00669_call_proc_staged_β:
                        mov              r11, 507;                            jmp   n00671_var_α
.Lx00670_0:              .quad            .Lx00670_0_s
.Lx00670_0_s:            .string          "gedload"
#-----------------------------------------------------------------------------------------------------------------------
n00672_assign_α:         mov              r11, 508
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n00671_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00671_var_α:            mov              r11, 509
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n00673_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00673_call_builtin_icon_α:
                        mov              r11, 510
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4336], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4344], rax
                        .section         .rodata
.Lrkfn1444:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1444]
                        lea              rsi, [rsp + 4336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                        cmp              al, 104;                             je    n00674_make_list_α
                                                                              jmp   n00674_make_list_α
n00673_call_builtin_icon_β:
                        mov              r11, 510;                            jmp   n00674_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00674_make_list_α:      mov              r11, 511
                        lea              rdi, [rsp + 4320]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4304], rax
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n00675_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00675_assign_α:         mov              r11, 512
                        mov              rax, qword ptr [rsp + 4304]
                        mov              rdx, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n00676_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00676_call_builtin_icon_α:
                        mov              r11, 513
                        .section         .rodata
.Lrkfn1449:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1449]
                        lea              rsi, [rsp + 4288]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        cmp              al, 104;                             je    n00677_var_α
                                                                              jmp   n00678_assign_α
n00676_call_builtin_icon_β:
                        mov              r11, 513;                            jmp   n00677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00678_assign_α:         mov              r11, 514
                        mov              rax, qword ptr [rsp + 4272]
                        mov              rdx, qword ptr [rsp + 4280]
                        mov              qword ptr [r9 + 0], rax              # ptab
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00677_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00677_var_α:            mov              r11, 515
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n00679_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00679_field_get_α:      mov              r11, 516
                        mov              rdi, qword ptr [rip + .Lx00680_0]
                        mov              rsi, qword ptr [rsp + 3888]
                        mov              rdx, qword ptr [rsp + 3896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00681_var_α
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n00682_iterate_α
.Lx00680_0:              .quad            .Lx00680_0_s
.Lx00680_0_s:            .string          "ind"
#-----------------------------------------------------------------------------------------------------------------------
n00682_iterate_α:        mov              r11, 517
                        mov              qword ptr [rsp + 3856], 0
.Lx00683_0:              mov              rdi, qword ptr [rsp + 3872]
                        mov              rsi, qword ptr [rsp + 3880]
                        mov              rdx, qword ptr [rsp + 3856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              al, 104;                             je    n00681_var_α
                                                                              jmp   n00684_assign_α
n00682_iterate_β:        mov              r11, 517
                        inc              qword ptr [rsp + 3856];              jmp   .Lx00683_0
#-----------------------------------------------------------------------------------------------------------------------
n00684_assign_α:         mov              r11, 518
                        mov              rax, qword ptr [rsp + 3840]
                        mov              rdx, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00685_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00685_bound_α:          mov              r11, 519
                        mov              qword ptr [rsp + 3904], rsp;         jmp   n00686_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00686_var_α:            mov              r11, 520
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n00687_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00687_var_ref_α:        mov              r11, 521
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # ptab
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx;         jmp   n00688_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00688_var_α:            mov              r11, 522
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n00689_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00689_subscript_α:      mov              r11, 523
                        mov              rdi, qword ptr [rsp + 4032]
                        mov              rsi, qword ptr [rsp + 4040]
                        mov              rdx, qword ptr [rsp + 4048]
                        mov              rcx, qword ptr [rsp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00690_unmark_α
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n00691_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00691_lit_integer_α:    mov              r11, 524
                        mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lx00692_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n00693_var_α
.Lx00692_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00693_var_α:            mov              r11, 525
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n00694_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00694_call_proc_staged_α:
                        mov              r11, 526
                        lea              rsi, [rsp + 4240]
                        call             sortkey_dcα;                         jmp   .Lx00695_2
.Lx00695_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00695_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 4192]
                        mov              rdx, qword ptr [rsp + 4200]
.Lx00695_29:             mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              al, 104;                             je    n00690_unmark_α
                                                                              jmp   n00696_var_α
n00694_call_proc_staged_β:
                        mov              r11, 526;                            jmp   n00690_unmark_α
.Lx00695_0:              .quad            .Lx00695_0_s
.Lx00695_0_s:            .string          "sortkey"
#-----------------------------------------------------------------------------------------------------------------------
n00696_var_α:            mov              r11, 527
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n00697_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00697_call_α:           mov              r11, 528
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4152], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4136], rax
                        mov              rax, qword ptr [rsp + 4176]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4120], rax
                        .section         .rodata
.Lrkfn1474:             .string          "person"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1474]
                        lea              rsi, [rsp + 4112]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx
                        cmp              al, 104;                             je    n00690_unmark_α
                                                                              jmp   n00698_assign_var_α
n00697_call_β:           mov              r11, 528;                            jmp   n00690_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00698_assign_var_α:     mov              r11, 529
                        mov              rdi, qword ptr [rsp + 4064]
                        mov              rsi, qword ptr [rsp + 4072]
                        mov              rdx, qword ptr [rsp + 4096]
                        mov              rcx, qword ptr [rsp + 4104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00690_unmark_α
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n00699_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00699_call_builtin_icon_α:
                        mov              r11, 530
                        mov              rax, qword ptr [rsp + 4080]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4088]
                        mov              qword ptr [rsp + 3992], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 3976], rax
                        .section         .rodata
.Lrkfn1477:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1477]
                        lea              rsi, [rsp + 3968]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx
                        cmp              al, 104;                             je    n00690_unmark_α
                                                                              jmp   n00690_unmark_α
n00699_call_builtin_icon_β:
                        mov              r11, 530;                            jmp   n00690_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00690_unmark_α:         mov              r11, 531
                        mov              rsp, qword ptr [rsp + 3904];         jmp   n00682_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00681_var_α:            mov              r11, 532
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n00700_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00700_lit_integer_α:    mov              r11, 533
                        mov              qword ptr [rsp + 3824], 3            # result
                        mov              rax, qword ptr [rip + .Lx00701_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n00702_call_builtin_icon_α
.Lx00701_0:              .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00702_call_builtin_icon_α:
                        mov              r11, 534
                        mov              rax, qword ptr [rsp + 3824]
                        mov              qword ptr [rsp + 3776], rax
                        mov              rax, qword ptr [rsp + 3832]
                        mov              qword ptr [rsp + 3784], rax
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3760], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3768], rax
                        .section         .rodata
.Lrkfn1484:             .string          "sortf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1484]
                        lea              rsi, [rsp + 3760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327842
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              al, 104;                             je    n00703_lit_integer_α
                                                                              jmp   n00704_assign_α
n00702_call_builtin_icon_β:
                        mov              r11, 534;                            jmp   n00703_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00704_assign_α:         mov              r11, 535
                        mov              rax, qword ptr [rsp + 3744]
                        mov              rdx, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n00703_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00703_lit_integer_α:    mov              r11, 536
                        mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lx00705_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n00706_assign_α
.Lx00705_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00706_assign_α:         mov              r11, 537
                        mov              rax, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n00707_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00707_var_α:            mov              r11, 538
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n00708_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00708_iterate_α:        mov              r11, 539
                        mov              qword ptr [rsp + 3600], 0
.Lx00709_0:              mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        mov              rdx, qword ptr [rsp + 3600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n00710_var_α
                                                                              jmp   n00711_field_var_α
n00708_iterate_β:        mov              r11, 539
                        inc              qword ptr [rsp + 3600];              jmp   .Lx00709_0
#-----------------------------------------------------------------------------------------------------------------------
n00711_field_var_α:      mov              r11, 540
                        mov              rdi, qword ptr [rip + .Lx00712_0]
                        mov              rsi, qword ptr [rsp + 3584]
                        mov              rdx, qword ptr [rsp + 3592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_field_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00710_var_α
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n00713_var_α
.Lx00712_0:              .quad            .Lx00712_0_s
.Lx00712_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00713_var_α:            mov              r11, 541
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n00714_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00714_lit_integer_α:    mov              r11, 542
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lx00715_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n00716_coerce_numeric_α
.Lx00715_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00716_coerce_numeric_α: mov              r11, 543
                        mov              eax, dword ptr [rsp + 4976]
                        cmp              al, 5;                               je    .Lx00717_1
                        cmp              al, 3;                               jne   .Lx00717_0
                        mov              eax, dword ptr [rsp + 3712]
                        cmp              al, 3;                               jne   .Lx00717_0
.Lx00717_1:              mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n00718_binop_α
.Lx00717_0:              lea              rdi, [rsp + 4976]
                        lea              rsi, [rsp + 3712]
                        lea              rdx, [rsp + 3680]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00718_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_binop_α:          mov              r11, 544
                        mov              eax, dword ptr [rsp + 3680]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx00719_2
                        mov              rax, qword ptr [rsp + 3688]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 3664], 3
                        mov              qword ptr [rsp + 3672], rax;         jmp   .Lx00719_7
.Lx00719_2:              and              edx, 1;                              jz    .Lx00719_0
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx00719_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00719_4
.Lx00719_3:              movq             xmm0, rsi
.Lx00719_4:              cmp              cl, 5;                               je    .Lx00719_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00719_6
.Lx00719_5:              movq             xmm1, rdi
.Lx00719_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 3664], 5
                        mov              qword ptr [rsp + 3672], rax
.Lx00719_7:                                                                    jmp   n00720_assign_α
.Lx00719_0:              mov              rdi, qword ptr [rsp + 3680]
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              rdx, qword ptr [rsp + 3712]
                        mov              rcx, qword ptr [rsp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00708_iterate_β
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n00720_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00720_assign_α:         mov              r11, 545
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n00721_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00721_assign_var_α:     mov              r11, 546
                        mov              rdi, qword ptr [rsp + 3568]
                        mov              rsi, qword ptr [rsp + 3576]
                        mov              rdx, qword ptr [rsp + 3648]
                        mov              rcx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00710_var_α
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n00708_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00710_var_α:            mov              r11, 547
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00722_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00722_iterate_α:        mov              r11, 548
                        mov              qword ptr [rsp + 64], 0
.Lx00723_0:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00724_assign_α
n00722_iterate_β:        mov              r11, 548
                        inc              qword ptr [rsp + 64];                jmp   .Lx00723_0
#-----------------------------------------------------------------------------------------------------------------------
n00724_assign_α:         mov              r11, 549
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx;         jmp   n00725_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00725_bound_α:          mov              r11, 550
                        mov              qword ptr [rsp + 96], rsp;           jmp   n00726_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00726_call_builtin_icon_α:
                        mov              r11, 551
                        .section         .rodata
.Lrkfn1509:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1509]
                        lea              rsi, [rsp + 3552]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n00727_lit_string_α
                                                                              jmp   n00727_lit_string_α
n00726_call_builtin_icon_β:
                        mov              r11, 551;                            jmp   n00727_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00727_lit_string_α:     mov              r11, 552
                        mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 1
                        mov              rax, qword ptr [rip + .Lx00728_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n00729_var_α
.Lx00728_0:              .quad            .Lx00728_0_s
.Lx00728_0_s:            .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n00729_var_α:            mov              r11, 553
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n00730_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00730_field_get_α:      mov              r11, 554
                        mov              rdi, qword ptr [rip + .Lx00731_0]
                        mov              rsi, qword ptr [rsp + 3424]
                        mov              rdx, qword ptr [rsp + 3432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00732_disjunction_α
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n00733_lit_string_α
.Lx00731_0:              .quad            .Lx00731_0_s
.Lx00731_0_s:            .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00733_lit_string_α:     mov              r11, 555
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 2
                        mov              rax, qword ptr [rip + .Lx00734_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n00735_var_α
.Lx00734_0:              .quad            .Lx00734_0_s
.Lx00734_0_s:            .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n00735_var_α:            mov              r11, 556
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n00736_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00736_field_get_α:      mov              r11, 557
                        mov              rdi, qword ptr [rip + .Lx00737_0]
                        mov              rsi, qword ptr [rsp + 3520]
                        mov              rdx, qword ptr [rsp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00732_disjunction_α
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n00738_call_proc_staged_α
.Lx00737_0:              .quad            .Lx00737_0_s
.Lx00737_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00738_call_proc_staged_α:
                        mov              r11, 558
                        lea              rsi, [rsp + 3504]
                        call             gedlnf_dcα;                          jmp   .Lx00739_2
.Lx00739_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00739_29
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
.Lx00739_29:             mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n00732_disjunction_α
                                                                              jmp   n00740_call_builtin_icon_α
n00738_call_proc_staged_β:
                        mov              r11, 558;                            jmp   n00732_disjunction_α
.Lx00739_0:              .quad            .Lx00739_0_s
.Lx00739_0_s:            .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00740_call_builtin_icon_α:
                        mov              r11, 559
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3352], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn1521:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1521]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n00732_disjunction_α
                                                                              jmp   n00732_disjunction_α
n00740_call_builtin_icon_β:
                        mov              r11, 559;                            jmp   n00732_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00732_disjunction_α:    mov              r11, 560
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n00741_var_α
n00732_disjunction_as:   mov              r11, 560
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lx00742_0
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n00743_lit_string_α
.Lx00742_0:                                                                    jmp   n00743_lit_string_α
n00732_disjunction_β:    mov              r11, 560
                        mov              eax, dword ptr [rsp + 2752];         jmp   n00744_proc_gen_β
n00732_disjunction_af:   mov              r11, 560
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752];         jmp   n00743_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00741_var_α:            mov              r11, 561
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n00745_field_get_α
n00741_var_β:            mov              r11, 561;                            jmp   n00732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00745_field_get_α:      mov              r11, 562
                        mov              rdi, qword ptr [rip + .Lx00746_0]
                        mov              rsi, qword ptr [rsp + 3264]
                        mov              rdx, qword ptr [rsp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00732_disjunction_af
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n00747_lit_string_α
.Lx00746_0:              .quad            .Lx00746_0_s
.Lx00746_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00747_lit_string_α:     mov              r11, 563
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 4
                        mov              rax, qword ptr [rip + .Lx00748_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n00749_proc_gen_α
.Lx00748_0:              .quad            .Lx00748_0_s
.Lx00748_0_s:            .string          "FAMC"
#-----------------------------------------------------------------------------------------------------------------------
n00749_proc_gen_α:       mov              r11, 564
                        mov              qword ptr [rsp + 3216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00750_200
                        mov              rax, qword ptr [rsp + 3248]
                        mov              rdx, qword ptr [rsp + 3256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00750_201
.Lx00750_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3248]
                        mov              rdx, qword ptr [rsp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00750_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00750_202
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00750_203
.Lx00750_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00750_203:            lea              rax, [rip + .Lx00750_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00750_1
                        lea              rcx, [rip + .Lx00750_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00750_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00750_4];              jmp   rax
.Lx00750_3:              add              rsp, 16
                        mov              qword ptr [rsp + 3224], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3216]
                        test             rax, rax;                            jne   .Lx00750_5
                        mov              qword ptr [rsp + 3216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00750_2
.Lx00750_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00750_2
.Lx00750_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 3216]
                        test             rax, rax;                            jne   .Lx00750_6
                        mov              qword ptr [rsp + 3216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00750_2
.Lx00750_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00750_2
.Lx00750_1:              call             rt_faildescr@PLT
.Lx00750_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00750_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
.Lx00750_29:             mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n00732_disjunction_af
                                                                              jmp   n00751_assign_α
n00749_proc_gen_β:       mov              r11, 564
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3224];         jmp   qword ptr [rsp]
.Lx00750_7:              add              rsp, 8
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n00732_disjunction_af
                                                                              jmp   n00751_assign_α
.Lx00750_0:              .quad            .Lx00750_0_s
.Lx00750_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00751_assign_α:         mov              r11, 565
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx;         jmp   n00752_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00752_lit_string_α:     mov              r11, 566
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 6
                        mov              rax, qword ptr [rip + .Lx00753_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n00754_var_α
.Lx00753_0:              .quad            .Lx00753_0_s
.Lx00753_0_s:            .string          "father"
#-----------------------------------------------------------------------------------------------------------------------
n00754_var_α:            mov              r11, 567
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n00755_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00755_lit_string_α:     mov              r11, 568
                        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 4
                        mov              rax, qword ptr [rip + .Lx00756_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n00757_proc_gen_α
.Lx00756_0:              .quad            .Lx00756_0_s
.Lx00756_0_s:            .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00757_proc_gen_α:       mov              r11, 569
                        mov              qword ptr [rsp + 3104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00758_200
                        mov              rax, qword ptr [rsp + 3136]
                        mov              rdx, qword ptr [rsp + 3144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00758_201
.Lx00758_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3136]
                        mov              rdx, qword ptr [rsp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00758_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00758_202
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00758_203
.Lx00758_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00758_203:            lea              rax, [rip + .Lx00758_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00758_1
                        lea              rcx, [rip + .Lx00758_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00758_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00758_4];              jmp   rax
.Lx00758_3:              add              rsp, 16
                        mov              qword ptr [rsp + 3112], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lx00758_5
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00758_2
.Lx00758_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00758_2
.Lx00758_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lx00758_6
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00758_2
.Lx00758_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00758_2
.Lx00758_1:              call             rt_faildescr@PLT
.Lx00758_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00758_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3056]
                        mov              rdx, qword ptr [rsp + 3064]
.Lx00758_29:             mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n00759_lit_string_α
                                                                              jmp   n00760_call_proc_staged_α
n00757_proc_gen_β:       mov              r11, 569
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3112];         jmp   qword ptr [rsp]
.Lx00758_7:              add              rsp, 8
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n00759_lit_string_α
                                                                              jmp   n00760_call_proc_staged_α
.Lx00758_0:              .quad            .Lx00758_0_s
.Lx00758_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00760_call_proc_staged_α:
                        mov              r11, 570
                        lea              rsi, [rsp + 3040]
                        lea              rdx, [rsp + 3056]
                        call             refto_dcα;                           jmp   .Lx00761_2
.Lx00761_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00761_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2976]
                        mov              rdx, qword ptr [rsp + 2984]
.Lx00761_29:             mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n00757_proc_gen_β
                                                                              jmp   n00759_lit_string_α
n00760_call_proc_staged_β:
                        mov              r11, 570;                            jmp   n00757_proc_gen_β
.Lx00761_0:              .quad            .Lx00761_0_s
.Lx00761_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00759_lit_string_α:     mov              r11, 571
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 6
                        mov              rax, qword ptr [rip + .Lx00762_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n00763_var_α
.Lx00762_0:              .quad            .Lx00762_0_s
.Lx00762_0_s:            .string          "mother"
#-----------------------------------------------------------------------------------------------------------------------
n00763_var_α:            mov              r11, 572
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n00764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00764_lit_string_α:     mov              r11, 573
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 4
                        mov              rax, qword ptr [rip + .Lx00765_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n00744_proc_gen_α
.Lx00765_0:              .quad            .Lx00765_0_s
.Lx00765_0_s:            .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00744_proc_gen_α:       mov              r11, 574
                        mov              qword ptr [rsp + 2912], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00766_200
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00766_201
.Lx00766_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00766_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00766_202
                        mov              rax, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00766_203
.Lx00766_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00766_203:            lea              rax, [rip + .Lx00766_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00766_1
                        lea              rcx, [rip + .Lx00766_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00766_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00766_4];              jmp   rax
.Lx00766_3:              add              rsp, 16
                        mov              qword ptr [rsp + 2920], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lx00766_5
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00766_2
.Lx00766_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00766_2
.Lx00766_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lx00766_6
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00766_2
.Lx00766_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00766_2
.Lx00766_1:              call             rt_faildescr@PLT
.Lx00766_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00766_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2864]
                        mov              rdx, qword ptr [rsp + 2872]
.Lx00766_29:             mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n00743_lit_string_α
                                                                              jmp   n00767_call_proc_staged_α
n00744_proc_gen_β:       mov              r11, 574
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2920];         jmp   qword ptr [rsp]
.Lx00766_7:              add              rsp, 8
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n00743_lit_string_α
                                                                              jmp   n00767_call_proc_staged_α
.Lx00766_0:              .quad            .Lx00766_0_s
.Lx00766_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00767_call_proc_staged_α:
                        mov              r11, 575
                        lea              rsi, [rsp + 2848]
                        lea              rdx, [rsp + 2864]
                        call             refto_dcα;                           jmp   .Lx00768_2
.Lx00768_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00768_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2784]
                        mov              rdx, qword ptr [rsp + 2792]
.Lx00768_29:             mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n00744_proc_gen_β
                                                                              jmp   n00769_conjunction_α
n00767_call_proc_staged_β:
                        mov              r11, 575;                            jmp   n00744_proc_gen_β
.Lx00768_0:              .quad            .Lx00768_0_s
.Lx00768_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00769_conjunction_α:    mov              r11, 576
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n00732_disjunction_as
n00769_conjunction_β:    mov              r11, 576;                            jmp   n00743_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00743_lit_string_α:     mov              r11, 577
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 2
                        mov              rax, qword ptr [rip + .Lx00770_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00771_var_α
.Lx00770_0:              .quad            .Lx00770_0_s
.Lx00770_0_s:            .string          "b."
#-----------------------------------------------------------------------------------------------------------------------
n00771_var_α:            mov              r11, 578
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n00772_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00772_field_get_α:      mov              r11, 579
                        mov              rdi, qword ptr [rip + .Lx00773_0]
                        mov              rsi, qword ptr [rsp + 2704]
                        mov              rdx, qword ptr [rsp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00774_keyword_icon_α
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n00775_lit_string_α
.Lx00773_0:              .quad            .Lx00773_0_s
.Lx00773_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00775_lit_string_α:     mov              r11, 580
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], 4
                        mov              rax, qword ptr [rip + .Lx00776_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n00777_proc_gen_α
.Lx00776_0:              .quad            .Lx00776_0_s
.Lx00776_0_s:            .string          "BIRT"
#-----------------------------------------------------------------------------------------------------------------------
n00777_proc_gen_α:       mov              r11, 581
                        mov              qword ptr [rsp + 2656], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00778_200
                        mov              rax, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00778_201
.Lx00778_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00778_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00778_202
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00778_203
.Lx00778_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00778_203:            lea              rax, [rip + .Lx00778_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00778_1
                        lea              rcx, [rip + .Lx00778_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00778_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00778_4];              jmp   rax
.Lx00778_3:              add              rsp, 16
                        mov              qword ptr [rsp + 2664], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lx00778_5
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00778_2
.Lx00778_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00778_2
.Lx00778_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lx00778_6
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00778_2
.Lx00778_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00778_2
.Lx00778_1:              call             rt_faildescr@PLT
.Lx00778_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00778_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
.Lx00778_29:             mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00774_keyword_icon_α
                                                                              jmp   n00779_call_proc_staged_α
n00777_proc_gen_β:       mov              r11, 581
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2664];         jmp   qword ptr [rsp]
.Lx00778_7:              add              rsp, 8
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00774_keyword_icon_α
                                                                              jmp   n00779_call_proc_staged_α
.Lx00778_0:              .quad            .Lx00778_0_s
.Lx00778_0_s:            .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00779_call_proc_staged_α:
                        mov              r11, 582
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             event_dcα;                           jmp   .Lx00780_2
.Lx00780_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00780_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
.Lx00780_29:             mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n00777_proc_gen_β
                                                                              jmp   n00774_keyword_icon_α
n00779_call_proc_staged_β:
                        mov              r11, 582;                            jmp   n00777_proc_gen_β
.Lx00780_0:              .quad            .Lx00780_0_s
.Lx00780_0_s:            .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00774_keyword_icon_α:   mov              r11, 583
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0;           jmp   n00781_assign_α
n00774_keyword_icon_β:   mov              r11, 583;                            jmp   n00782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00781_assign_α:         mov              r11, 584
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00782_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00782_var_α:            mov              r11, 585
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00783_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00783_field_get_α:      mov              r11, 586
                        mov              rdi, qword ptr [rip + .Lx00784_0]
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00785_lit_string_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00786_lit_string_α
.Lx00784_0:              .quad            .Lx00784_0_s
.Lx00784_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00786_lit_string_α:     mov              r11, 587
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 4
                        mov              rax, qword ptr [rip + .Lx00787_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00788_proc_gen_α
.Lx00787_0:              .quad            .Lx00787_0_s
.Lx00787_0_s:            .string          "FAMS"
#-----------------------------------------------------------------------------------------------------------------------
n00788_proc_gen_α:       mov              r11, 588
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00789_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00789_201
.Lx00789_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00789_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00789_202
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00789_203
.Lx00789_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00789_203:            lea              rax, [rip + .Lx00789_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00789_1
                        lea              rcx, [rip + .Lx00789_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00789_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00789_4];              jmp   rax
.Lx00789_3:              add              rsp, 16
                        mov              qword ptr [rsp + 424], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx00789_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00789_2
.Lx00789_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00789_2
.Lx00789_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx00789_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00789_2
.Lx00789_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00789_2
.Lx00789_1:              call             rt_faildescr@PLT
.Lx00789_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00789_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lx00789_29:             mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00785_lit_string_α
                                                                              jmp   n00790_assign_α
n00788_proc_gen_β:       mov              r11, 588
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 424];          jmp   qword ptr [rsp]
.Lx00789_7:              add              rsp, 8
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00785_lit_string_α
                                                                              jmp   n00790_assign_α
.Lx00789_0:              .quad            .Lx00789_0_s
.Lx00789_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00790_assign_α:         mov              r11, 589
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx;         jmp   n00791_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00791_bound_α:          mov              r11, 590
                        mov              qword ptr [rsp + 496], rsp;          jmp   n00792_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00792_lit_string_α:     mov              r11, 591
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 2
                        mov              rax, qword ptr [rip + .Lx00793_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n00794_var_α
.Lx00793_0:              .quad            .Lx00793_0_s
.Lx00793_0_s:            .string          "m."
#-----------------------------------------------------------------------------------------------------------------------
n00794_var_α:            mov              r11, 592
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n00795_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00795_lit_string_α:     mov              r11, 593
                        mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 4
                        mov              rax, qword ptr [rip + .Lx00796_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00797_proc_gen_α
.Lx00796_0:              .quad            .Lx00796_0_s
.Lx00796_0_s:            .string          "MARR"
#-----------------------------------------------------------------------------------------------------------------------
n00797_proc_gen_α:       mov              r11, 594
                        mov              qword ptr [rsp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00798_200
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00798_201
.Lx00798_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00798_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00798_202
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00798_203
.Lx00798_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00798_203:            lea              rax, [rip + .Lx00798_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00798_1
                        lea              rcx, [rip + .Lx00798_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00798_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00798_4];              jmp   rax
.Lx00798_3:              add              rsp, 16
                        mov              qword ptr [rsp + 2440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2432]
                        test             rax, rax;                            jne   .Lx00798_5
                        mov              qword ptr [rsp + 2432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00798_2
.Lx00798_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00798_2
.Lx00798_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 2432]
                        test             rax, rax;                            jne   .Lx00798_6
                        mov              qword ptr [rsp + 2432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00798_2
.Lx00798_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00798_2
.Lx00798_1:              call             rt_faildescr@PLT
.Lx00798_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00798_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
.Lx00798_29:             mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n00799_lit_string_α
                                                                              jmp   n00800_call_proc_staged_α
n00797_proc_gen_β:       mov              r11, 594
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2440];         jmp   qword ptr [rsp]
.Lx00798_7:              add              rsp, 8
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n00799_lit_string_α
                                                                              jmp   n00800_call_proc_staged_α
.Lx00798_0:              .quad            .Lx00798_0_s
.Lx00798_0_s:            .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00800_call_proc_staged_α:
                        mov              r11, 595
                        lea              rsi, [rsp + 2368]
                        lea              rdx, [rsp + 2384]
                        call             event_dcα;                           jmp   .Lx00801_2
.Lx00801_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00801_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
.Lx00801_29:             mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n00797_proc_gen_β
                                                                              jmp   n00802_assign_α
n00800_call_proc_staged_β:
                        mov              r11, 595;                            jmp   n00797_proc_gen_β
.Lx00801_0:              .quad            .Lx00801_0_s
.Lx00801_0_s:            .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00802_assign_α:         mov              r11, 596
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00799_lit_string_α:     mov              r11, 597
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 6
                        mov              rax, qword ptr [rip + .Lx00803_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n00804_var_α
.Lx00803_0:              .quad            .Lx00803_0_s
.Lx00803_0_s:            .string          "  husb"
#-----------------------------------------------------------------------------------------------------------------------
n00804_var_α:            mov              r11, 598
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00805_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00805_field_get_α:      mov              r11, 599
                        mov              rdi, qword ptr [rip + .Lx00806_0]
                        mov              rsi, qword ptr [rsp + 2176]
                        mov              rdx, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00807_lit_string_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n00808_var_α
.Lx00806_0:              .quad            .Lx00806_0_s
.Lx00806_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00808_var_α:            mov              r11, 600
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n00809_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00809_lit_string_α:     mov              r11, 601
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx00810_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00811_proc_gen_α
.Lx00810_0:              .quad            .Lx00810_0_s
.Lx00810_0_s:            .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00811_proc_gen_α:       mov              r11, 602
                        mov              qword ptr [rsp + 2240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00812_200
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00812_201
.Lx00812_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00812_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00812_202
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00812_203
.Lx00812_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00812_203:            lea              rax, [rip + .Lx00812_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00812_1
                        lea              rcx, [rip + .Lx00812_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00812_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00812_4];              jmp   rax
.Lx00812_3:              add              rsp, 16
                        mov              qword ptr [rsp + 2248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2240]
                        test             rax, rax;                            jne   .Lx00812_5
                        mov              qword ptr [rsp + 2240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00812_2
.Lx00812_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00812_2
.Lx00812_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 2240]
                        test             rax, rax;                            jne   .Lx00812_6
                        mov              qword ptr [rsp + 2240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00812_2
.Lx00812_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00812_2
.Lx00812_1:              call             rt_faildescr@PLT
.Lx00812_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00812_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
.Lx00812_29:             mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n00807_lit_string_α
                                                                              jmp   n00813_binop_test_α
n00811_proc_gen_β:       mov              r11, 602
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2248];         jmp   qword ptr [rsp]
.Lx00812_7:              add              rsp, 8
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n00807_lit_string_α
                                                                              jmp   n00813_binop_test_α
.Lx00812_0:              .quad            .Lx00812_0_s
.Lx00812_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00813_binop_test_α:     mov              r11, 603
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00811_proc_gen_β
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00814_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00814_call_proc_staged_α:
                        mov              r11, 604
                        lea              rsi, [rsp + 2128]
                        lea              rdx, [rsp + 2144]
                        call             refto_dcα;                           jmp   .Lx00815_2
.Lx00815_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00815_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
.Lx00815_29:             mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n00811_proc_gen_β
                                                                              jmp   n00816_assign_α
n00814_call_proc_staged_β:
                        mov              r11, 604;                            jmp   n00811_proc_gen_β
.Lx00815_0:              .quad            .Lx00815_0_s
.Lx00815_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00816_assign_α:         mov              r11, 605
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00807_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00807_lit_string_α:     mov              r11, 606
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 6
                        mov              rax, qword ptr [rip + .Lx00817_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00818_var_α
.Lx00817_0:              .quad            .Lx00817_0_s
.Lx00817_0_s:            .string          "  wife"
#-----------------------------------------------------------------------------------------------------------------------
n00818_var_α:            mov              r11, 607
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n00819_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00819_field_get_α:      mov              r11, 608
                        mov              rdi, qword ptr [rip + .Lx00820_0]
                        mov              rsi, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00821_disjunction_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n00822_var_α
.Lx00820_0:              .quad            .Lx00820_0_s
.Lx00820_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00822_var_α:            mov              r11, 609
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00823_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00823_lit_string_α:     mov              r11, 610
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx00824_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n00825_proc_gen_α
.Lx00824_0:              .quad            .Lx00824_0_s
.Lx00824_0_s:            .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00825_proc_gen_α:       mov              r11, 611
                        mov              qword ptr [rsp + 2000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00826_200
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00826_201
.Lx00826_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00826_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00826_202
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00826_203
.Lx00826_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00826_203:            lea              rax, [rip + .Lx00826_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00826_1
                        lea              rcx, [rip + .Lx00826_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00826_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00826_4];              jmp   rax
.Lx00826_3:              add              rsp, 16
                        mov              qword ptr [rsp + 2008], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lx00826_5
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00826_2
.Lx00826_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00826_2
.Lx00826_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lx00826_6
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00826_2
.Lx00826_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00826_2
.Lx00826_1:              call             rt_faildescr@PLT
.Lx00826_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00826_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
.Lx00826_29:             mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n00821_disjunction_α
                                                                              jmp   n00827_binop_test_α
n00825_proc_gen_β:       mov              r11, 611
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2008];         jmp   qword ptr [rsp]
.Lx00826_7:              add              rsp, 8
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n00821_disjunction_α
                                                                              jmp   n00827_binop_test_α
.Lx00826_0:              .quad            .Lx00826_0_s
.Lx00826_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00827_binop_test_α:     mov              r11, 612
                        mov              rdi, qword ptr [rsp + 1920]
                        mov              rsi, qword ptr [rsp + 1928]
                        mov              rdx, qword ptr [rsp + 1952]
                        mov              rcx, qword ptr [rsp + 1960]
                        mov              r8d, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00825_proc_gen_β
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00828_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00828_call_proc_staged_α:
                        mov              r11, 613
                        lea              rsi, [rsp + 1888]
                        lea              rdx, [rsp + 1904]
                        call             refto_dcα;                           jmp   .Lx00829_2
.Lx00829_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00829_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
.Lx00829_29:             mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n00825_proc_gen_β
                                                                              jmp   n00830_assign_α
n00828_call_proc_staged_β:
                        mov              r11, 613;                            jmp   n00825_proc_gen_β
.Lx00829_0:              .quad            .Lx00829_0_s
.Lx00829_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00830_assign_α:         mov              r11, 614
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00821_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00821_disjunction_α:    mov              r11, 615
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              dword ptr [rsp + 1712], 0;           jmp   n00831_var_α
n00821_disjunction_as:   mov              r11, 615
                        mov              eax, dword ptr [rsp + 1712]
                        cmp              eax, 0;                              jne   .Lx00832_0
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n00833_disjunction_α
.Lx00832_0:                                                                    jmp   n00833_disjunction_α
n00821_disjunction_β:    mov              r11, 615
                        mov              eax, dword ptr [rsp + 1712];         jmp   n00833_disjunction_α
n00821_disjunction_af:   mov              r11, 615
                        add              dword ptr [rsp + 1712], 1
                        mov              eax, dword ptr [rsp + 1712];         jmp   n00833_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00831_var_α:            mov              r11, 616
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00834_unop_test_α
n00831_var_β:            mov              r11, 616;                            jmp   n00821_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00834_unop_test_α:      mov              r11, 617
                        mov              eax, dword ptr [rsp + 4944]
                        cmp              al, 104;                             je    n00821_disjunction_af
                        cmp              eax, 0;                              je    n00821_disjunction_af
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00835_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00835_lit_string_α:     mov              r11, 618
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx00836_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00837_call_builtin_icon_α
.Lx00836_0:              .quad            .Lx00836_0_s
.Lx00836_0_s:            .string          "   m."
#-----------------------------------------------------------------------------------------------------------------------
n00837_call_builtin_icon_α:
                        mov              r11, 619
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn1610:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1610]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n00833_disjunction_α
                                                                              jmp   n00821_disjunction_as
n00837_call_builtin_icon_β:
                        mov              r11, 619;                            jmp   n00833_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00833_disjunction_α:    mov              r11, 620
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00838_disjunction_α
n00833_disjunction_as:   mov              r11, 620
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lx00839_0
                                                                              jmp   n00840_conjunction_α
.Lx00839_0:                                                                    jmp   n00840_conjunction_α
n00833_disjunction_β:    mov              r11, 620
                        mov              eax, dword ptr [rsp + 576];          jmp   n00841_unmark_α
n00833_disjunction_af:   mov              r11, 620
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576];          jmp   n00841_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00840_conjunction_α:    mov              r11, 621
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00841_unmark_α
n00840_conjunction_β:    mov              r11, 621;                            jmp   n00841_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00838_disjunction_α:    mov              r11, 622
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              dword ptr [rsp + 1392], 0;           jmp   n00842_var_α
n00838_disjunction_as:   mov              r11, 622
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              jne   .Lx00843_0
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00844_var_α
.Lx00843_0:              cmp              eax, 1;                              jne   .Lx00843_1
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00844_var_α
.Lx00843_1:                                                                    jmp   n00844_var_α
n00838_disjunction_β:    mov              r11, 622
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              je    n00845_proc_gen_β
                                                                              jmp   n00838_disjunction_af
n00838_disjunction_af:   mov              r11, 622
                        add              dword ptr [rsp + 1392], 1
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 1;                              je    n00846_var_α
                                                                              jmp   n00833_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00844_var_α:            mov              r11, 623
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00847_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00847_lit_string_α:     mov              r11, 624
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Lx00848_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00849_proc_gen_α
.Lx00848_0:              .quad            .Lx00848_0_s
.Lx00848_0_s:            .string          "CHIL"
#-----------------------------------------------------------------------------------------------------------------------
n00849_proc_gen_α:       mov              r11, 625
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00850_200
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00850_201
.Lx00850_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00850_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00850_202
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00850_203
.Lx00850_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00850_203:            lea              rax, [rip + .Lx00850_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00850_1
                        lea              rcx, [rip + .Lx00850_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00850_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00850_4];              jmp   rax
.Lx00850_3:              add              rsp, 16
                        mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx00850_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00850_2
.Lx00850_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00850_2
.Lx00850_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx00850_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00850_2
.Lx00850_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00850_2
.Lx00850_1:              call             rt_faildescr@PLT
.Lx00850_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00850_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx00850_29:             mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n00841_unmark_α
                                                                              jmp   n00851_assign_α
n00849_proc_gen_β:       mov              r11, 625
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 648];          jmp   qword ptr [rsp]
.Lx00850_7:              add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n00841_unmark_α
                                                                              jmp   n00851_assign_α
.Lx00850_0:              .quad            .Lx00850_0_s
.Lx00850_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00851_assign_α:         mov              r11, 626
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00852_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00852_bound_α:          mov              r11, 627
                        mov              qword ptr [rsp + 704], rsp;          jmp   n00853_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00853_disjunction_α:    mov              r11, 628
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n00854_var_α
n00853_disjunction_as:   mov              r11, 628
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx00855_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00856_lit_string_α
.Lx00855_0:              cmp              eax, 1;                              jne   .Lx00855_1
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00856_lit_string_α
.Lx00855_1:                                                                    jmp   n00856_lit_string_α
n00853_disjunction_β:    mov              r11, 628
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n00857_proc_gen_β
                                                                              jmp   n00853_disjunction_af
n00853_disjunction_af:   mov              r11, 628
                        add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n00858_lit_string_α
                                                                              jmp   n00859_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00856_lit_string_α:     mov              r11, 629
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx00860_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00861_call_builtin_α
.Lx00860_0:              .quad            .Lx00860_0_s
.Lx00860_0_s:            .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n00861_call_builtin_α:   mov              r11, 630
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn1628:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1628]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n00862_lit_string_α
                                                                              jmp   n00863_lit_string_α
n00861_call_builtin_β:   mov              r11, 630;                            jmp   n00862_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00863_lit_string_α:     mov              r11, 631
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 6
                        mov              rax, qword ptr [rip + .Lx00864_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00865_var_α
.Lx00864_0:              .quad            .Lx00864_0_s
.Lx00864_0_s:            .string          "   son"
#-----------------------------------------------------------------------------------------------------------------------
n00865_var_α:            mov              r11, 632
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00866_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00866_call_proc_staged_α:
                        mov              r11, 633
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        call             refto_dcα;                           jmp   .Lx00867_2
.Lx00867_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00867_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
.Lx00867_29:             mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n00859_unmark_α
                                                                              jmp   n00868_assign_α
n00866_call_proc_staged_β:
                        mov              r11, 633;                            jmp   n00859_unmark_α
.Lx00867_0:              .quad            .Lx00867_0_s
.Lx00867_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00868_assign_α:         mov              r11, 634
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00862_lit_string_α:     mov              r11, 635
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx00870_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00871_call_builtin_α
.Lx00870_0:              .quad            .Lx00870_0_s
.Lx00870_0_s:            .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n00871_call_builtin_α:   mov              r11, 636
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn1637:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1637]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n00872_lit_string_α
                                                                              jmp   n00873_lit_string_α
n00871_call_builtin_β:   mov              r11, 636;                            jmp   n00872_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00873_lit_string_α:     mov              r11, 637
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx00874_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n00875_var_α
.Lx00874_0:              .quad            .Lx00874_0_s
.Lx00874_0_s:            .string          "   dau"
#-----------------------------------------------------------------------------------------------------------------------
n00875_var_α:            mov              r11, 638
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00876_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00876_call_proc_staged_α:
                        mov              r11, 639
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1120]
                        call             refto_dcα;                           jmp   .Lx00877_2
.Lx00877_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00877_29
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
.Lx00877_29:             mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00859_unmark_α
                                                                              jmp   n00878_assign_α
n00876_call_proc_staged_β:
                        mov              r11, 639;                            jmp   n00859_unmark_α
.Lx00877_0:              .quad            .Lx00877_0_s
.Lx00877_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00878_assign_α:         mov              r11, 640
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00872_lit_string_α:     mov              r11, 641
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 6
                        mov              rax, qword ptr [rip + .Lx00879_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00880_var_α
.Lx00879_0:              .quad            .Lx00879_0_s
.Lx00879_0_s:            .string          " child"
#-----------------------------------------------------------------------------------------------------------------------
n00880_var_α:            mov              r11, 642
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00881_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00881_call_proc_staged_α:
                        mov              r11, 643
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
                        call             refto_dcα;                           jmp   .Lx00882_2
.Lx00882_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00882_29
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
.Lx00882_29:             mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n00859_unmark_α
                                                                              jmp   n00883_assign_α
n00881_call_proc_staged_β:
                        mov              r11, 643;                            jmp   n00859_unmark_α
.Lx00882_0:              .quad            .Lx00882_0_s
.Lx00882_0_s:            .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00883_assign_α:         mov              r11, 644
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00869_var_α:            mov              r11, 645
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00859_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00859_unmark_α:         mov              r11, 646
                        mov              rsp, qword ptr [rsp + 704];          jmp   n00849_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00858_lit_string_α:     mov              r11, 647
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 0
                        mov              rax, qword ptr [rip + .Lx00884_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00853_disjunction_as
n00858_lit_string_β:     mov              r11, 647;                            jmp   n00853_disjunction_af
.Lx00884_0:              .quad            .Lx00884_0_s
.Lx00884_0_s:            .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00854_var_α:            mov              r11, 648
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00885_lit_string_α
n00854_var_β:            mov              r11, 648;                            jmp   n00853_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00885_lit_string_α:     mov              r11, 649
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 3
                        mov              rax, qword ptr [rip + .Lx00886_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00857_proc_gen_α
.Lx00886_0:              .quad            .Lx00886_0_s
.Lx00886_0_s:            .string          "SEX"
#-----------------------------------------------------------------------------------------------------------------------
n00857_proc_gen_α:       mov              r11, 650
                        mov              qword ptr [rsp + 848], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00887_200
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00887_201
.Lx00887_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00887_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00887_202
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00887_203
.Lx00887_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00887_203:            lea              rax, [rip + .Lx00887_7]
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00887_1
                        lea              rcx, [rip + .Lx00887_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00887_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00887_4];              jmp   rax
.Lx00887_3:              add              rsp, 16
                        mov              qword ptr [rsp + 856], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lx00887_5
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00887_2
.Lx00887_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00887_2
.Lx00887_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lx00887_6
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00887_2
.Lx00887_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00887_2
.Lx00887_1:              call             rt_faildescr@PLT
.Lx00887_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00887_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
.Lx00887_29:             mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n00853_disjunction_af
                                                                              jmp   n00853_disjunction_as
n00857_proc_gen_β:       mov              r11, 650
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 856];          jmp   qword ptr [rsp]
.Lx00887_7:              add              rsp, 8
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n00853_disjunction_af
                                                                              jmp   n00853_disjunction_as
.Lx00887_0:              .quad            .Lx00887_0_s
.Lx00887_0_s:            .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00841_unmark_α:         mov              r11, 651
                        mov              rsp, qword ptr [rsp + 496];          jmp   n00788_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00846_var_α:            mov              r11, 652
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n00888_lit_string_α
n00846_var_β:            mov              r11, 652;                            jmp   n00889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00888_lit_string_α:     mov              r11, 653
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 4
                        mov              rax, qword ptr [rip + .Lx00890_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00891_proc_gen_α
.Lx00890_0:              .quad            .Lx00890_0_s
.Lx00890_0_s:            .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00891_proc_gen_α:       mov              r11, 654
                        mov              qword ptr [rsp + 1632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00892_200
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00892_201
.Lx00892_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00892_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00892_202
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00892_203
.Lx00892_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00892_203:            lea              rax, [rip + .Lx00892_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00892_1
                        lea              rcx, [rip + .Lx00892_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00892_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00892_4];              jmp   rax
.Lx00892_3:              add              rsp, 16
                        mov              qword ptr [rsp + 1640], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1632]
                        test             rax, rax;                            jne   .Lx00892_5
                        mov              qword ptr [rsp + 1632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00892_2
.Lx00892_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00892_2
.Lx00892_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 1632]
                        test             rax, rax;                            jne   .Lx00892_6
                        mov              qword ptr [rsp + 1632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00892_2
.Lx00892_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00892_2
.Lx00892_1:              call             rt_faildescr@PLT
.Lx00892_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00892_29
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
.Lx00892_29:             mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n00889_var_α
                                                                              jmp   n00838_disjunction_af
n00891_proc_gen_β:       mov              r11, 654
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1640];         jmp   qword ptr [rsp]
.Lx00892_7:              add              rsp, 8
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n00889_var_α
                                                                              jmp   n00838_disjunction_af
.Lx00892_0:              .quad            .Lx00892_0_s
.Lx00892_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00889_var_α:            mov              r11, 655
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0;           jmp   n00838_disjunction_as
n00889_var_β:            mov              r11, 655;                            jmp   n00838_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00842_var_α:            mov              r11, 656
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00893_field_get_α
n00842_var_β:            mov              r11, 656;                            jmp   n00838_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00893_field_get_α:      mov              r11, 657
                        mov              rdi, qword ptr [rip + .Lx00894_0]
                        mov              rsi, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00838_disjunction_af
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n00895_var_α
.Lx00894_0:              .quad            .Lx00894_0_s
.Lx00894_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00895_var_α:            mov              r11, 658
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n00896_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00896_lit_string_α:     mov              r11, 659
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 4
                        mov              rax, qword ptr [rip + .Lx00897_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00845_proc_gen_α
.Lx00897_0:              .quad            .Lx00897_0_s
.Lx00897_0_s:            .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00845_proc_gen_α:       mov              r11, 660
                        mov              qword ptr [rsp + 1504], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00898_200
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00898_201
.Lx00898_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00898_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00898_202
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00898_203
.Lx00898_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00898_203:            lea              rax, [rip + .Lx00898_7]
                        push             rax
                        mov              edi, 8
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00898_1
                        lea              rcx, [rip + .Lx00898_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00898_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00898_4];              jmp   rax
.Lx00898_3:              add              rsp, 16
                        mov              qword ptr [rsp + 1512], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1504]
                        test             rax, rax;                            jne   .Lx00898_5
                        mov              qword ptr [rsp + 1504], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00898_2
.Lx00898_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00898_2
.Lx00898_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 1504]
                        test             rax, rax;                            jne   .Lx00898_6
                        mov              qword ptr [rsp + 1504], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00898_2
.Lx00898_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00898_2
.Lx00898_1:              call             rt_faildescr@PLT
.Lx00898_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00898_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
.Lx00898_29:             mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00838_disjunction_af
                                                                              jmp   n00899_binop_test_α
n00845_proc_gen_β:       mov              r11, 660
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1512];         jmp   qword ptr [rsp]
.Lx00898_7:              add              rsp, 8
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00838_disjunction_af
                                                                              jmp   n00899_binop_test_α
.Lx00898_0:              .quad            .Lx00898_0_s
.Lx00898_0_s:            .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00899_binop_test_α:     mov              r11, 661
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              r8d, 22
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00845_proc_gen_β
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n00838_disjunction_as
n00899_binop_test_β:     mov              r11, 661;                            jmp   n00845_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00785_lit_string_α:     mov              r11, 662
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx00900_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00901_var_α
.Lx00900_0:              .quad            .Lx00900_0_s
.Lx00900_0_s:            .string          "d."
#-----------------------------------------------------------------------------------------------------------------------
n00901_var_α:            mov              r11, 663
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00902_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00902_field_get_α:      mov              r11, 664
                        mov              rdi, qword ptr [rip + .Lx00903_0]
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00904_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00905_lit_string_α
.Lx00903_0:              .quad            .Lx00903_0_s
.Lx00903_0_s:            .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00905_lit_string_α:     mov              r11, 665
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 4
                        mov              rax, qword ptr [rip + .Lx00906_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00907_proc_gen_α
.Lx00906_0:              .quad            .Lx00906_0_s
.Lx00906_0_s:            .string          "DEAT"
#-----------------------------------------------------------------------------------------------------------------------
n00907_proc_gen_α:       mov              r11, 666
                        mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00908_200
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx00908_201
.Lx00908_200:            mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00908_201:            lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx00908_202
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx00908_203
.Lx00908_202:            mov              edi, 1
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx00908_203:            lea              rax, [rip + .Lx00908_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx00908_1
                        lea              rcx, [rip + .Lx00908_4]
                        push             rcx
                        lea              rcx, [rip + .Lx00908_3]
                        push             rcx
                        lea              rdx, [rip + .Lx00908_4];              jmp   rax
.Lx00908_3:              add              rsp, 16
                        mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx00908_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00908_2
.Lx00908_5:              call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx00908_2
.Lx00908_4:              add              rsp, 16
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx00908_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx00908_2
.Lx00908_6:              call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx00908_2
.Lx00908_1:              call             rt_faildescr@PLT
.Lx00908_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00908_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx00908_29:             mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00904_unmark_α
                                                                              jmp   n00909_call_proc_staged_α
n00907_proc_gen_β:       mov              r11, 666
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 296];          jmp   qword ptr [rsp]
.Lx00908_7:              add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00904_unmark_α
                                                                              jmp   n00909_call_proc_staged_α
.Lx00908_0:              .quad            .Lx00908_0_s
.Lx00908_0_s:            .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00909_call_proc_staged_α:
                        mov              r11, 667
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        call             event_dcα;                           jmp   .Lx00910_2
.Lx00910_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00910_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx00910_29:             mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00907_proc_gen_β
                                                                              jmp   n00911_conjunction_α
n00909_call_proc_staged_β:
                        mov              r11, 667;                            jmp   n00907_proc_gen_β
.Lx00910_0:              .quad            .Lx00910_0_s
.Lx00910_0_s:            .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00911_conjunction_α:    mov              r11, 668
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00904_unmark_α
n00911_conjunction_β:    mov              r11, 668;                            jmp   n00904_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00904_unmark_α:         mov              r11, 669
                        mov              rsp, qword ptr [rsp + 96];           jmp   n00722_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00668_keyword_icon_α:   mov              r11, 670
                        mov              rdi, qword ptr [rip + .Lx00912_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00666_var_α
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx;         jmp   n00913_assign_α
n00668_keyword_icon_β:   mov              r11, 670;                            jmp   n00666_var_α
.Lx00912_0:              .quad            .Lx00912_0_s
.Lx00912_0_s:            .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00913_assign_α:         mov              r11, 671
                        mov              rax, qword ptr [rsp + 4864]
                        mov              rdx, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx;         jmp   n00663_disjunction_as
n00913_assign_β:         mov              r11, 671;                            jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00664_var_α:            mov              r11, 672
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n00914_unop_α
n00664_var_β:            mov              r11, 672;                            jmp   n00663_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00914_unop_α:           mov              r11, 673
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n00915_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00915_lit_integer_α:    mov              r11, 674
                        mov              qword ptr [rsp + 4832], 3            # result
                        mov              rax, qword ptr [rip + .Lx00916_0]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n00917_binop_test_α
.Lx00916_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00917_binop_test_α:     mov              r11, 675
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              al, 112;                             je    .Lx00918_0
                        mov              eax, dword ptr [rsp + 4832]
                        cmp              al, 112;                             je    .Lx00918_0
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              al, 3;                               jne   .Lx00918_2
                        mov              eax, dword ptr [rsp + 4832]
                        cmp              al, 3;                               jne   .Lx00918_2
.Lx00918_1:              mov              rax, qword ptr [rsp + 4808]
                        mov              rcx, qword ptr [rsp + 4840]
                        cmp              rax, rcx;                            jle   n00663_disjunction_af
                        mov              rcx, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4784], rcx
                        mov              rcx, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4792], rcx;         jmp   n00667_disjunction_α
.Lx00918_0:              mov              rdi, qword ptr [rsp + 4800]
                        mov              rsi, qword ptr [rsp + 4808]
                        mov              rdx, qword ptr [rsp + 4832]
                        mov              rcx, qword ptr [rsp + 4840]
                        mov              r8d, 7
                        lea              r9, [rsp + 4784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00918_1
                        cmp              eax, 1;                              je    n00663_disjunction_af
                                                                              jmp   n00667_disjunction_α
.Lx00918_2:              mov              rdi, qword ptr [rsp + 4800]
                        mov              rsi, qword ptr [rsp + 4808]
                        mov              rdx, qword ptr [rsp + 4832]
                        mov              rcx, qword ptr [rsp + 4840]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00663_disjunction_af
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n00667_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00667_disjunction_α:    mov              r11, 676
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              dword ptr [rsp + 4512], 0;           jmp   n00919_var_ref_α
n00667_disjunction_as:   mov              r11, 676
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 0;                              jne   .Lx00920_0
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n00921_assign_α
.Lx00920_0:              cmp              eax, 1;                              jne   .Lx00920_1
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n00921_assign_α
.Lx00920_1:                                                                    jmp   n00921_assign_α
n00667_disjunction_β:    mov              r11, 676
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 0;                              je    n00667_disjunction_af
                                                                              jmp   n00667_disjunction_af
n00667_disjunction_af:   mov              r11, 676
                        add              dword ptr [rsp + 4512], 1
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 1;                              je    n00922_lit_string_α
                                                                              jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00921_assign_α:         mov              r11, 677
                        mov              rax, qword ptr [rsp + 4496]
                        mov              rdx, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n00663_disjunction_as
n00921_assign_β:         mov              r11, 677;                            jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00922_lit_string_α:     mov              r11, 678
                        mov              qword ptr [rsp + 4704], 2            # result
                        mov              dword ptr [rsp + 4708], 11
                        mov              rax, qword ptr [rip + .Lx00923_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n00924_var_ref_α
n00922_lit_string_β:     mov              r11, 678;                            jmp   n00667_disjunction_af
.Lx00923_0:              .quad            .Lx00923_0_s
.Lx00923_0_s:            .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n00924_var_ref_α:        mov              r11, 679
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx;         jmp   n00925_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_lit_integer_α:    mov              r11, 680
                        mov              qword ptr [rsp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Lx00926_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n00927_subscript_α
.Lx00926_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00927_subscript_α:      mov              r11, 681
                        mov              rdi, qword ptr [rsp + 4720]
                        mov              rsi, qword ptr [rsp + 4728]
                        mov              rdx, qword ptr [rsp + 4736]
                        mov              rcx, qword ptr [rsp + 4744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00667_disjunction_af
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n00928_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00928_deref_α:          mov              r11, 682
                        mov              rdi, qword ptr [rsp + 4752]
                        mov              rsi, qword ptr [rsp + 4760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00667_disjunction_af
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx;         jmp   n00929_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00929_call_builtin_icon_α:
                        mov              r11, 683
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4680], rax
                        mov              rax, qword ptr [rsp + 4704]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4712]
                        mov              qword ptr [rsp + 4664], rax
                        .section         .rodata
.Lrkfn1706:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1706]
                        lea              rsi, [rsp + 4656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx
                        cmp              al, 104;                             je    n00667_disjunction_af
                                                                              jmp   n00667_disjunction_as
n00929_call_builtin_icon_β:
                        mov              r11, 683;                            jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00919_var_ref_α:        mov              r11, 684
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n00930_lit_integer_α
n00919_var_ref_β:        mov              r11, 684;                            jmp   n00667_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00930_lit_integer_α:    mov              r11, 685
                        mov              qword ptr [rsp + 4592], 3            # result
                        mov              rax, qword ptr [rip + .Lx00931_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n00932_subscript_α
.Lx00931_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00932_subscript_α:      mov              r11, 686
                        mov              rdi, qword ptr [rsp + 4576]
                        mov              rsi, qword ptr [rsp + 4584]
                        mov              rdx, qword ptr [rsp + 4592]
                        mov              rcx, qword ptr [rsp + 4600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00667_disjunction_af
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx;         jmp   n00933_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00933_deref_α:          mov              r11, 687
                        mov              rdi, qword ptr [rsp + 4608]
                        mov              rsi, qword ptr [rsp + 4616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00667_disjunction_af
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n00934_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00934_call_builtin_icon_α:
                        mov              r11, 688
                        mov              rax, qword ptr [rsp + 4624]
                        mov              qword ptr [rsp + 4544], rax
                        mov              rax, qword ptr [rsp + 4632]
                        mov              qword ptr [rsp + 4552], rax
                        .section         .rodata
.Lrkfn1713:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1713]
                        lea              rsi, [rsp + 4544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4528], rax
                        mov              qword ptr [rsp + 4536], rdx
                        cmp              al, 104;                             je    n00667_disjunction_af
                                                                              jmp   n00667_disjunction_as
n00934_call_builtin_icon_β:
                        mov              r11, 688;                            jmp   n00667_disjunction_af
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
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "person(n,k,r)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec1:           .string          "gedcom(tree,id,fam,ind)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec1]
                        call             record_register@PLT
                        .section         .rodata
.Lclassspec2:           .string          "gednode(level,id,tag,data,lnum,parent,ref,sub)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec2]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "event"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__event
                        .quad            event_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            864
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "refto"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__refto
                        .quad            refto_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            384
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "sortkey"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__sortkey
                        .quad            sortkey_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "gedload"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__gedload
                        .quad            gedload_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2640
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "gedscan"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__gedscan
                        .quad            gedscan_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1312
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "gedwalk"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__gedwalk
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            224
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "gedsub"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__gedsub
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            28
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "gedval"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__gedval
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            176
                        .long            28
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "gedref"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__gedref
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            192
                        .long            28
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "gedfnf"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__gedfnf
                        .quad            gedfnf_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1200
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "gedlnf"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__gedlnf
                        .quad            gedlnf_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1056
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "geddate"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__geddate
                        .quad            geddate_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2640
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
