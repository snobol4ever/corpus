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
                        mov              rax, qword ptr [rip + .Levent_α_31_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1_var_α
.Levent_α_31_0:         .quad            .Levent_α_31_0_s
.Levent_α_31_0_s:       .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              r11, 2
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 824], rax;          jmp   n2_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_proc_staged_α:  mov              r11, 3
                        lea              rsi, [rsp + 816]
                        call             geddate_dcα;                         jmp   .Levent_α_35_2
.Levent_α_35_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Levent_α_35_29
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
.Levent_α_35_29:        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n5_lit_string_α
                                                                              jmp   n3_binop_test_α
n2_call_proc_staged_β:  mov              r11, 3;                              jmp   n5_lit_string_α
.Levent_β_35_0:         .quad            .Levent_β_35_0_s
.Levent_β_35_0_s:       .string          "geddate"
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
                        mov              rax, qword ptr [rip + .Levent_α_38_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n6_var_α
.Levent_α_38_0:         .quad            .Levent_α_38_0_s
.Levent_α_38_0_s:       .string          ""
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
                        mov              rax, qword ptr [rip + .Levent_α_41_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n8_proc_gen_α
.Levent_α_41_0:         .quad            .Levent_α_41_0_s
.Levent_α_41_0_s:       .string          "PLAC"
#-----------------------------------------------------------------------------------------------------------------------
n8_proc_gen_α:          mov              r11, 9
                        mov              qword ptr [rsp + 672], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Levent_α_43_200
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Levent_α_43_201
.Levent_α_43_200:       mov              edi, 0
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
.Levent_α_43_201:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Levent_α_43_202
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Levent_α_43_203
.Levent_α_43_202:       mov              edi, 1
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
.Levent_α_43_203:       lea              rax, [rip + .Levent_α_43_7]
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
                        test             rax, rax;                            je    .Levent_α_43_1
                        lea              rcx, [rip + .Levent_α_43_4]
                        push             rcx
                        lea              rcx, [rip + .Levent_α_43_3]
                        push             rcx
                        lea              rdx, [rip + .Levent_α_43_4];         jmp   rax
.Levent_α_43_3:         add              rsp, 16
                        mov              qword ptr [rsp + 680], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Levent_α_43_5
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Levent_α_43_2
.Levent_α_43_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Levent_α_43_2
.Levent_α_43_4:         add              rsp, 16
                        mov              rax, qword ptr [rsp + 672]
                        test             rax, rax;                            jne   .Levent_α_43_6
                        mov              qword ptr [rsp + 672], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Levent_α_43_2
.Levent_α_43_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Levent_α_43_2
.Levent_α_43_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Levent_α_43_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Levent_α_43_29
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
.Levent_α_43_29:        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n11_disjunction_α
                                                                              jmp   n9_binop_test_α
n8_proc_gen_β:          mov              r11, 9
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 680];          jmp   qword ptr [rsp]
.Levent_α_43_7:         add              rsp, 8
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n11_disjunction_α
                                                                              jmp   n9_binop_test_α
.Levent_β_43_0:         .quad            .Levent_β_43_0_s
.Levent_β_43_0_s:       .string          "gedval"
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
                        cmp              eax, 0;                              jne   .Levent_α_47_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   n30_return_α
.Levent_α_47_0:         cmp              eax, 1;                              jne   .Levent_α_47_1
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 56], rax;           jmp   n30_return_α
.Levent_α_47_1:                                                               jmp   n30_return_α
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
                        mov              rax, qword ptr [rip + .Levent_α_48_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n13_var_α
n12_lit_string_β:       mov              r11, 13;                             jmp   n30_return_α
.Levent_α_48_0:         .quad            .Levent_α_48_0_s
.Levent_α_48_0_s:       .string          "   "
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
                        mov              rax, qword ptr [rip + .Levent_α_51_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n15_disjunction_α
.Levent_α_51_0:         .quad            .Levent_α_51_0_s
.Levent_α_51_0_s:       .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      mov              r11, 16
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n20_var_α
n15_disjunction_as:     mov              r11, 16
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Levent_α_53_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n16_lit_string_α
.Levent_α_53_0:         cmp              eax, 1;                              jne   .Levent_α_53_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax;          jmp   n16_lit_string_α
.Levent_α_53_1:                                                               jmp   n16_lit_string_α
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
                        mov              rax, qword ptr [rip + .Levent_α_54_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n17_var_α
.Levent_α_54_0:         .quad            .Levent_α_54_0_s
.Levent_α_54_0_s:       .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 568], rax;          jmp   n18_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_icon_α:        mov              r11, 19
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
n18_call_icon_β:        mov              r11, 19;                             jmp   n15_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 12
                        mov              rax, qword ptr [rip + .Levent_α_59_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n15_disjunction_as
n19_lit_string_β:       mov              r11, 20;                             jmp   n15_disjunction_af
.Levent_α_59_0:         .quad            .Levent_α_59_0_s
.Levent_α_59_0_s:       .string          "            "
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
                        mov              rax, qword ptr [rip + .Levent_α_66_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n25_var_α
.Levent_α_66_0:         .quad            .Levent_α_66_0_s
.Levent_α_66_0_s:       .string          "   "
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
                        mov              rax, qword ptr [rip + .Levent_α_69_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n27_var_α
.Levent_α_69_0:         .quad            .Levent_α_69_0_s
.Levent_α_69_0_s:       .string          " "
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
                        mov              qword ptr [rsp + 232], rax;          jmp   n29_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_icon_α:        mov              r11, 30
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
n29_call_icon_β:        mov              r11, 30;                             jmp   n30_return_α
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
                        lea              rcx, [rip + .Levent_α_76_3]
                        push             rcx
                        lea              rcx, [rip + .Levent_α_76_2]
                        push             rcx;                                 jmp   FN__event
.Levent_α_76_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Levent_α_76_3:         add              rsp, 24
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
                        mov              rax, qword ptr [rip + .Lrefto_α_90_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n78_var_α
.Lrefto_α_90_0:         .quad            .Lrefto_α_90_0_s
.Lrefto_α_90_0_s:       .string          "   "
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
                        mov              rax, qword ptr [rip + .Lrefto_α_93_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n80_var_ref_α
.Lrefto_α_93_0:         .quad            .Lrefto_α_93_0_s
.Lrefto_α_93_0_s:       .string          " ["
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
                        mov              rdi, qword ptr [rip + .Lrefto_α_100_0]
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
.Lrefto_α_100_0:        .quad            .Lrefto_α_100_0_s
.Lrefto_α_100_0_s:      .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lrefto_α_101_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n86_var_α
.Lrefto_α_101_0:        .quad            .Lrefto_α_101_0_s
.Lrefto_α_101_0_s:      .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 376], rax;          jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α: mov              r11, 42
                        lea              rsi, [rsp + 368]
                        call             gedfnf_dcα;                          jmp   .Lrefto_α_105_2
.Lrefto_α_105_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lrefto_α_105_29
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
.Lrefto_α_105_29:       mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n89_return_α
                                                                              jmp   n88_call_icon_α
n87_call_proc_staged_β: mov              r11, 42;                             jmp   n89_return_α
.Lrefto_β_105_0:        .quad            .Lrefto_β_105_0_s
.Lrefto_β_105_0_s:      .string          "gedfnf"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_icon_α:        mov              r11, 43
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
n88_call_icon_β:        mov              r11, 43;                             jmp   n89_return_α
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
                        lea              rcx, [rip + .Lrefto_α_109_3]
                        push             rcx
                        lea              rcx, [rip + .Lrefto_α_109_2]
                        push             rcx;                                 jmp   FN__refto
.Lrefto_α_109_2:        add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lrefto_α_109_3:        add              rsp, 24
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
n00001_var_α:             mov              r11, 45
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00002_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00002_call_proc_staged_α:
                        mov              r11, 46
                        lea              rsi, [rsp + 128]
                        call             gedlnf_dcα;                          jmp   .Lsortkey_α_117_2
.Lsortkey_α_117_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lsortkey_α_117_29
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
.Lsortkey_α_117_29:     mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    sortkey_ω
                                                                              jmp   n00003_call_icon_α
n00002_call_proc_staged_β:
                        mov              r11, 46;                             jmp   sortkey_ω
.Lsortkey_β_117_0:      .quad            .Lsortkey_β_117_0_s
.Lsortkey_β_117_0_s:    .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00003_call_icon_α:       mov              r11, 47
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
                                                                              jmp   n00004_return_α
n00003_call_icon_β:       mov              r11, 47;                             jmp   sortkey_ω
#-----------------------------------------------------------------------------------------------------------------------
n00004_return_α:          mov              r11, 48
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
                        lea              rcx, [rip + .Lsortkey_α_121_3]
                        push             rcx
                        lea              rcx, [rip + .Lsortkey_α_121_2]
                        push             rcx;                                 jmp   FN__sortkey
.Lsortkey_α_121_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lsortkey_α_121_3:      add              rsp, 24
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
n00005_lit_integer_α:     mov              r11, 49
                        mov              qword ptr [rsp + 2480], 3            # result
                        mov              rax, qword ptr [rip + .Lgedload_α_237_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00006_assign_α
.Lgedload_α_237_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00006_assign_α:          mov              r11, 50
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00007_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00007_lit_integer_α:     mov              r11, 51
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lgedload_α_239_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n00008_kw_icon_α
.Lgedload_α_239_0:      .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n00008_kw_icon_α:         mov              r11, 52
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0;           jmp   n00009_lit_string_α
n00008_kw_icon_β:         mov              r11, 52;                             jmp   n00010_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00009_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 4
                        mov              rax, qword ptr [rip + .Lgedload_α_241_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n00011_lit_string_α
.Lgedload_α_241_0:      .quad            .Lgedload_α_241_0_s
.Lgedload_α_241_0_s:    .string          "ROOT"
#-----------------------------------------------------------------------------------------------------------------------
n00011_lit_string_α:      mov              r11, 54
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 0
                        mov              rax, qword ptr [rip + .Lgedload_α_242_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n00012_var_α
.Lgedload_α_242_0:      .quad            .Lgedload_α_242_0_s
.Lgedload_α_242_0_s:    .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_α:             mov              r11, 55
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n00013_kw_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00013_kw_icon_α:         mov              r11, 56
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0;           jmp   n00014_kw_icon_α
n00013_kw_icon_β:         mov              r11, 56;                             jmp   n00010_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00014_kw_icon_α:         mov              r11, 57
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0;           jmp   n00015_make_list_α
n00014_kw_icon_β:         mov              r11, 57;                             jmp   n00010_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00015_make_list_α:       mov              r11, 58
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
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n00016_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00016_call_α:            mov              r11, 59
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
                        cmp              al, 104;                             je    n00010_call_icon_α
                                                                              jmp   n00017_assign_α
n00016_call_β:            mov              r11, 59;                             jmp   n00010_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_α:          mov              r11, 60
                        mov              rax, qword ptr [rsp + 2144]
                        mov              rdx, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n00018_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00018_assign_α:          mov              r11, 61
                        mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n00010_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00010_call_icon_α:       mov              r11, 62
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
                        cmp              al, 104;                             je    n00019_make_list_α
                                                                              jmp   n00020_assign_α
n00010_call_icon_β:       mov              r11, 62;                             jmp   n00019_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_assign_α:          mov              r11, 63
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n00019_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_make_list_α:       mov              r11, 64
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
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n00021_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_assign_α:          mov              r11, 65
                        mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00022_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00022_make_list_α:       mov              r11, 66
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
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n00023_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_assign_α:          mov              r11, 67
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 68
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00025_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_call_icon_α:       mov              r11, 69
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
                        cmp              al, 104;                             je    n00026_var_α
                                                                              jmp   n00027_lit_charset_α
n00025_call_icon_β:       mov              r11, 69;                             jmp   n00026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00027_lit_charset_α:     mov              r11, 70
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], -1
                        mov              rax, qword ptr [rip + .Lgedload_α_266_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00028_call_icon_α
.Lgedload_α_266_0:      .quad            .Lgedload_α_266_0_s
.Lgedload_α_266_0_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00028_call_icon_α:       mov              r11, 71
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
                        cmp              al, 104;                             je    n00026_var_α
                                                                              jmp   n00029_assign_α
n00028_call_icon_β:       mov              r11, 71;                             jmp   n00026_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_assign_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n00030_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              r11, 73
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00031_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lgedload_α_272_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n00032_coerce_numeric_α
.Lgedload_α_272_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00032_coerce_numeric_α:  mov              r11, 75
                        mov              eax, dword ptr [rsp + 2624]
                        cmp              al, 5;                               je    .Lgedload_α_274_1
                        cmp              al, 3;                               jne   .Lgedload_α_274_0
                        mov              eax, dword ptr [rsp + 2048]
                        cmp              al, 3;                               jne   .Lgedload_α_274_0
.Lgedload_α_274_1:      mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n00033_binop_α
.Lgedload_α_274_0:      lea              rdi, [rsp + 2624]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00033_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00033_binop_α:           mov              r11, 76
                        mov              eax, dword ptr [rsp + 2016]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lgedload_α_275_2
                        mov              rax, qword ptr [rsp + 2024]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 2000], 3
                        mov              qword ptr [rsp + 2008], rax;         jmp   .Lgedload_α_275_7
.Lgedload_α_275_2:      and              edx, 1;                              jz    .Lgedload_α_275_0
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lgedload_α_275_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lgedload_α_275_4
.Lgedload_α_275_3:      movq             xmm0, rsi
.Lgedload_α_275_4:      cmp              cl, 5;                               je    .Lgedload_α_275_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lgedload_α_275_6
.Lgedload_α_275_5:      movq             xmm1, rdi
.Lgedload_α_275_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2000], 5
                        mov              qword ptr [rsp + 2008], rax
.Lgedload_α_275_7:                                                            jmp   n00034_assign_α
.Lgedload_α_275_0:      mov              rdi, qword ptr [rsp + 2016]
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
                        cmp              al, 104;                             je    n00035_disjunction_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n00034_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:          mov              r11, 77
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00035_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_disjunction_α:     mov              r11, 78
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n00036_var_α
n00035_disjunction_as:    mov              r11, 78
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lgedload_α_278_0
                                                                              jmp   n00037_disjunction_α
.Lgedload_α_278_0:                                                            jmp   n00037_disjunction_α
n00035_disjunction_β:     mov              r11, 78
                        mov              eax, dword ptr [rsp + 1920];         jmp   n00037_disjunction_α
n00035_disjunction_af:    mov              r11, 78
                        add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920];         jmp   n00037_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_disjunction_α:     mov              r11, 79
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              dword ptr [rsp + 1584], 0;           jmp   n00038_var_α
n00037_disjunction_as:    mov              r11, 79
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 0;                              jne   .Lgedload_α_280_0
                                                                              jmp   n00039_var_α
.Lgedload_α_280_0:                                                            jmp   n00039_var_α
n00037_disjunction_β:     mov              r11, 79
                        mov              eax, dword ptr [rsp + 1584];         jmp   n00039_var_α
n00037_disjunction_af:    mov              r11, 79
                        add              dword ptr [rsp + 1584], 1
                        mov              eax, dword ptr [rsp + 1584];         jmp   n00039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_var_α:             mov              r11, 80
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n00040_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_field_var_α:       mov              r11, 81
                        mov              rdi, qword ptr [rip + .Lgedload_α_283_0]
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
                        cmp              al, 104;                             je    n00041_var_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n00042_var_α
.Lgedload_α_283_0:      .quad            .Lgedload_α_283_0_s
.Lgedload_α_283_0_s:    .string          "lnum"
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00043_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_assign_var_α:      mov              r11, 83
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
                        cmp              al, 104;                             je    n00041_var_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n00044_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_field_var_α:       mov              r11, 85
                        mov              rdi, qword ptr [rip + .Lgedload_α_289_0]
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
                        cmp              al, 104;                             je    n00045_var_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n00046_make_list_α
.Lgedload_α_289_0:      .quad            .Lgedload_α_289_0_s
.Lgedload_α_289_0_s:    .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00046_make_list_α:       mov              r11, 86
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
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n00047_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_assign_var_α:      mov              r11, 87
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
                        cmp              al, 104;                             je    n00045_var_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n00045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00048_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_field_get_α:       mov              r11, 89
                        mov              rdi, qword ptr [rip + .Lgedload_α_295_0]
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
                        cmp              al, 104;                             je    n00049_var_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00050_var_α
.Lgedload_α_295_0:      .quad            .Lgedload_α_295_0_s
.Lgedload_α_295_0_s:    .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00051_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_field_get_α:       mov              r11, 91
                        mov              rdi, qword ptr [rip + .Lgedload_α_298_0]
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
                        cmp              al, 104;                             je    n00049_var_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n00052_binop_test_α
.Lgedload_α_298_0:      .quad            .Lgedload_α_298_0_s
.Lgedload_α_298_0_s:    .string          "level"
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_test_α:      mov              r11, 92
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 112;                             je    .Lgedload_α_299_0
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 112;                             je    .Lgedload_α_299_0
                        mov              eax, dword ptr [rsp + 1344]
                        cmp              al, 3;                               jne   .Lgedload_α_299_2
                        mov              eax, dword ptr [rsp + 1376]
                        cmp              al, 3;                               jne   .Lgedload_α_299_2
.Lgedload_α_299_1:      mov              rax, qword ptr [rsp + 1352]
                        mov              rcx, qword ptr [rsp + 1384]
                        cmp              rax, rcx;                            jl    n00049_var_α
                        mov              rcx, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rcx
                        mov              rcx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rcx;         jmp   n00053_var_α
.Lgedload_α_299_0:      mov              rdi, qword ptr [rsp + 1344]
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
                        test             eax, eax;                            je    .Lgedload_α_299_1
                        cmp              eax, 1;                              je    n00049_var_α
                                                                              jmp   n00053_var_α
.Lgedload_α_299_2:      mov              rdi, qword ptr [rsp + 1344]
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
                        test             eax, eax;                            jz    n00049_var_α
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n00053_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n00054_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_field_get_α:       mov              r11, 94
                        mov              rdi, qword ptr [rip + .Lgedload_α_302_0]
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
                        cmp              al, 104;                             je    n00045_var_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00055_assign_α
.Lgedload_α_302_0:      .quad            .Lgedload_α_302_0_s
.Lgedload_α_302_0_s:    .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:          mov              r11, 95
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00056_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_field_get_α:       mov              r11, 97
                        mov              rdi, qword ptr [rip + .Lgedload_α_306_0]
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
                        cmp              al, 104;                             je    n00057_var_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n00058_var_α
.Lgedload_α_306_0:      .quad            .Lgedload_α_306_0_s
.Lgedload_α_306_0_s:    .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n00059_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_icon_α:       mov              r11, 99
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
                        cmp              al, 104;                             je    n00057_var_α
                                                                              jmp   n00057_var_α
n00059_call_icon_β:       mov              r11, 99;                             jmp   n00057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00060_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_field_var_α:       mov              r11, 101
                        mov              rdi, qword ptr [rip + .Lgedload_α_313_0]
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
                        cmp              al, 104;                             je    n00061_var_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00062_var_α
.Lgedload_α_313_0:      .quad            .Lgedload_α_313_0_s
.Lgedload_α_313_0_s:    .string          "parent"
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00063_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_var_α:      mov              r11, 103
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
                        cmp              al, 104;                             je    n00061_var_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00061_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:             mov              r11, 104
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00064_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00065_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n00066_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00067_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_field_get_α:       mov              r11, 108
                        mov              rdi, qword ptr [rip + .Lgedload_α_324_0]
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
                        cmp              al, 104;                             je    n00068_var_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n00069_unop_test_α
.Lgedload_α_324_0:      .quad            .Lgedload_α_324_0_s
.Lgedload_α_324_0_s:    .string          "id"
#-----------------------------------------------------------------------------------------------------------------------
n00069_unop_test_α:       mov              r11, 109
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              al, 104;                             je    n00068_var_α
                        cmp              eax, 0;                              je    n00068_var_α
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00070_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_subscript_α:       mov              r11, 110
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
                        cmp              al, 104;                             je    n00068_var_α
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00071_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00072_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_var_α:      mov              r11, 112
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
                        cmp              al, 104;                             je    n00068_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00068_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00073_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_field_get_α:       mov              r11, 114
                        mov              rdi, qword ptr [rip + .Lgedload_α_332_0]
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
                        cmp              al, 104;                             je    n00024_var_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00074_lit_string_α
.Lgedload_α_332_0:      .quad            .Lgedload_α_332_0_s
.Lgedload_α_332_0_s:    .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00074_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 3
                        mov              rax, qword ptr [rip + .Lgedload_α_333_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00075_call_builtin_α
.Lgedload_α_333_0:      .quad            .Lgedload_α_333_0_s
.Lgedload_α_333_0_s:    .string          "FAM"
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_builtin_α:    mov              r11, 116
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
                        cmp              al, 104;                             je    n00076_lit_string_α
                                                                              jmp   n00077_var_α
n00075_call_builtin_β:    mov              r11, 116;                            jmp   n00076_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00078_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 952], rax;          jmp   n00079_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_call_icon_α:       mov              r11, 119
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
                        cmp              al, 104;                             je    n00024_var_α
                                                                              jmp   n00080_assign_α
n00079_call_icon_β:       mov              r11, 119;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 4
                        mov              rax, qword ptr [rip + .Lgedload_α_343_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00082_call_builtin_α
.Lgedload_α_343_0:      .quad            .Lgedload_α_343_0_s
.Lgedload_α_343_0_s:    .string          "INDI"
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_builtin_α:    mov              r11, 122
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
                        cmp              al, 104;                             je    n00024_var_α
                                                                              jmp   n00083_var_α
n00082_call_builtin_β:    mov              r11, 122;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00084_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00085_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_call_icon_α:       mov              r11, 125
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
                        cmp              al, 104;                             je    n00024_var_α
                                                                              jmp   n00086_assign_α
n00085_call_icon_β:       mov              r11, 125;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_assign_α:          mov              r11, 126
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00087_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_conjunction_α:     mov              r11, 128
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00024_var_α
n00087_conjunction_β:     mov              r11, 128;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_conjunction_α:     mov              r11, 129;                            jmp   n00037_disjunction_as
n00088_conjunction_β:     mov              r11, 129;                            jmp   n00039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00089_call_proc_staged_α
n00038_var_β:             mov              r11, 130;                            jmp   n00090_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_call_proc_staged_α:
                        mov              r11, 131
                        lea              rsi, [rsp + 1888]
                        call             gedscan_dcα;                         jmp   .Lgedload_α_360_2
.Lgedload_α_360_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedload_α_360_29
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
.Lgedload_α_360_29:     mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n00090_var_α
                                                                              jmp   n00091_assign_α
n00089_call_proc_staged_β:
                        mov              r11, 131;                            jmp   n00090_var_α
.Lgedload_β_360_0:      .quad            .Lgedload_β_360_0_s
.Lgedload_β_360_0_s:    .string          "gedscan"
#-----------------------------------------------------------------------------------------------------------------------
n00091_assign_α:          mov              r11, 132
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00037_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:             mov              r11, 133
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0;           jmp   n00092_kw_icon_α
n00090_var_β:             mov              r11, 133;                            jmp   n00037_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00092_kw_icon_α:         mov              r11, 134
                        mov              rdi, qword ptr [rip + .Lgedload_α_363_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00024_var_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n00093_lit_string_α
n00092_kw_icon_β:         mov              r11, 134;                            jmp   n00024_var_α
.Lgedload_α_363_0:      .quad            .Lgedload_α_363_0_s
.Lgedload_α_363_0_s:    .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 10
                        mov              rax, qword ptr [rip + .Lgedload_α_364_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n00094_var_α
.Lgedload_α_364_0:      .quad            .Lgedload_α_364_0_s
.Lgedload_α_364_0_s:    .string          "ERR, line "
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00095_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 2
                        mov              rax, qword ptr [rip + .Lgedload_α_367_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00096_var_α
.Lgedload_α_367_0:      .quad            .Lgedload_α_367_0_s
.Lgedload_α_367_0_s:    .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00097_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_icon_α:       mov              r11, 139
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
                        cmp              al, 104;                             je    n00024_var_α
                                                                              jmp   n00024_var_α
n00097_call_icon_β:       mov              r11, 139;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_goto_α:            mov              r11, 140;                            jmp   n00024_var_α
n00098_goto_β:            mov              r11, 140;                            jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             mov              r11, 141
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n00099_unop_α
n00036_var_β:             mov              r11, 141;                            jmp   n00035_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00099_unop_α:            mov              r11, 142
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
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n00100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lgedload_α_376_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n00101_binop_test_α
.Lgedload_α_376_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00101_binop_test_α:      mov              r11, 144
                        mov              eax, dword ptr [rsp + 1952]
                        cmp              al, 112;                             je    .Lgedload_α_377_0
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 112;                             je    .Lgedload_α_377_0
                        mov              eax, dword ptr [rsp + 1952]
                        cmp              al, 3;                               jne   .Lgedload_α_377_2
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              al, 3;                               jne   .Lgedload_α_377_2
.Lgedload_α_377_1:      mov              rax, qword ptr [rsp + 1960]
                        mov              rcx, qword ptr [rsp + 1992]
                        cmp              rax, rcx;                            jne   n00035_disjunction_af
                        mov              rcx, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rcx
                        mov              rcx, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rcx;         jmp   n00024_var_α
.Lgedload_α_377_0:      mov              rdi, qword ptr [rsp + 1952]
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
                        test             eax, eax;                            je    .Lgedload_α_377_1
                        cmp              eax, 1;                              je    n00035_disjunction_af
                                                                              jmp   n00024_var_α
.Lgedload_α_377_2:      mov              rdi, qword ptr [rsp + 1952]
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
                        test             eax, eax;                            jz    n00035_disjunction_af
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n00024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00102_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_proc_gen_α:        mov              r11, 146
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedload_α_381_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedload_α_381_201
.Lgedload_α_381_200:    mov              edi, 0
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
.Lgedload_α_381_201:    lea              rax, [rip + .Lgedload_α_381_7]
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
                        test             rax, rax;                            je    .Lgedload_α_381_1
                        lea              rcx, [rip + .Lgedload_α_381_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedload_α_381_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedload_α_381_4];      jmp   rax
.Lgedload_α_381_3:      add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lgedload_α_381_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedload_α_381_2
.Lgedload_α_381_5:      call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedload_α_381_2
.Lgedload_α_381_4:      add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lgedload_α_381_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedload_α_381_2
.Lgedload_α_381_6:      call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedload_α_381_2
.Lgedload_α_381_1:      mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedload_α_381_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedload_α_381_29
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
.Lgedload_α_381_29:     mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00103_var_α
                                                                              jmp   n00104_assign_α
n00102_proc_gen_β:        mov              r11, 146
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 248];          jmp   qword ptr [rsp]
.Lgedload_α_381_7:      add              rsp, 8
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n00103_var_α
                                                                              jmp   n00104_assign_α
.Lgedload_β_381_0:      .quad            .Lgedload_β_381_0_s
.Lgedload_β_381_0_s:    .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00104_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00105_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_bound_α:           mov              r11, 148
                        mov              qword ptr [rsp + 288], rsp;          jmp   n00106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00107_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_field_var_α:       mov              r11, 150
                        mov              rdi, qword ptr [rip + .Lgedload_α_387_0]
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
                        cmp              al, 104;                             je    n00108_unmark_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n00109_var_ref_α
.Lgedload_α_387_0:      .quad            .Lgedload_α_387_0_s
.Lgedload_α_387_0_s:    .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2512]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00111_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_field_get_α:       mov              r11, 153
                        mov              rdi, qword ptr [rip + .Lgedload_α_392_0]
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
                        cmp              al, 104;                             je    n00108_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n00112_subscript_α
.Lgedload_α_392_0:      .quad            .Lgedload_α_392_0_s
.Lgedload_α_392_0_s:    .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00112_subscript_α:       mov              r11, 154
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
                        cmp              al, 104;                             je    n00108_unmark_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00113_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_deref_α:           mov              r11, 155
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
                        cmp              al, 104;                             je    n00108_unmark_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00114_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_assign_var_α:      mov              r11, 156
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
                        cmp              al, 104;                             je    n00108_unmark_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n00108_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_unmark_α:          mov              r11, 157
                        mov              rsp, qword ptr [rsp + 288];          jmp   n00102_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_var_α:             mov              r11, 160
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00118_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_call_α:            mov              r11, 162
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
                                                                              jmp   n00119_return_α
n00118_call_β:            mov              r11, 162;                            jmp   gedload_ω
#-----------------------------------------------------------------------------------------------------------------------
n00119_return_α:          mov              r11, 163
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
                        lea              rcx, [rip + .Lgedload_α_409_3]
                        push             rcx
                        lea              rcx, [rip + .Lgedload_α_409_2]
                        push             rcx;                                 jmp   FN__gedload
.Lgedload_α_409_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lgedload_α_409_3:      add              rsp, 24
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
n00120_disjunction_α:     mov              r11, 164
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              dword ptr [rsp + 1072], 0;           jmp   n00121_var_ref_α
n00120_disjunction_as:    mov              r11, 164
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 0;                              jne   .Lgedscan_α_467_0
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00122_var_α
.Lgedscan_α_467_0:                                                            jmp   n00122_var_α
n00120_disjunction_β:     mov              r11, 164
                        mov              eax, dword ptr [rsp + 1072];         jmp   n00122_var_α
n00120_disjunction_af:    mov              r11, 164
                        add              dword ptr [rsp + 1072], 1
                        mov              eax, dword ptr [rsp + 1072];         jmp   n00122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # gedscan__INITFLAG__0
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00123_nulltest_var_α
n00121_var_ref_β:         mov              r11, 165;                            jmp   n00120_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00123_nulltest_var_α:    mov              r11, 166
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              al, 104;                             je    n00120_disjunction_af
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
                        cmp              al, 104;                             je    n00120_disjunction_af
                        cmp              eax, 0;                              jne   n00120_disjunction_af
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lgedscan_α_471_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00125_assign_var_α
.Lgedscan_α_471_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00125_assign_var_α:      mov              r11, 168
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
                        cmp              al, 104;                             je    n00120_disjunction_af
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n00126_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_473_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00127_lit_charset_α
.Lgedscan_α_473_0:      .quad            .Lgedscan_α_473_0_s
.Lgedscan_α_473_0_s:    .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_charset_α:     mov              r11, 170
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_474_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00128_binop_α
.Lgedscan_α_474_0:      .quad            .Lgedscan_α_474_0_s
.Lgedscan_α_474_0_s:    .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00128_binop_α:           mov              r11, 171
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
                        cmp              al, 104;                             je    n00122_var_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n00129_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_charset_α:     mov              r11, 172
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_476_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n00130_binop_α
.Lgedscan_α_476_0:      .quad            .Lgedscan_α_476_0_s
.Lgedscan_α_476_0_s:    .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n00130_binop_α:           mov              r11, 173
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
                        cmp              al, 104;                             je    n00122_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n00131_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              r11, 174
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [r9 + 16], rax             # gedscan__STATIC__alnum
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n00120_disjunction_as
n00131_assign_β:          mov              r11, 174;                            jmp   n00122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00122_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00132_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_scan_enter_α:      mov              r11, 176
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
                        mov              r14, 0;                              jmp   n00133_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_lit_charset_α:     mov              r11, 177
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_483_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00134_scan_many_α
.Lgedscan_α_483_0:      .quad            .Lgedscan_α_483_0_s
.Lgedscan_α_483_0_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00134_scan_many_α:       mov              r11, 178
                        mov              eax, r14d
.Lgedscan_α_485_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_485_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_485_2]
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
                        pop              rax;                                 je    .Lgedscan_α_485_1
                        add              eax, 1;                              jmp   .Lgedscan_α_485_0
.Lgedscan_α_485_1:      cmp              eax, r14d;                           je    n00135_disjunction_α
                        mov              qword ptr [rsp + 1008], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1016], rcx;         jmp   n00136_scan_tab_α
n00134_scan_many_β:       mov              r11, 178;                            jmp   n00135_disjunction_α
.Lgedscan_α_485_2:      .quad            .Lgedscan_α_485_2_s
.Lgedscan_α_485_2_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00136_scan_tab_α:        mov              r11, 179
                        mov              rax, qword ptr [rsp + 1016]
                        cmp              rax, 1;                              jge   .Lgedscan_α_487_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_487_0:      cmp              rax, 1;                              jl    n00135_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00135_disjunction_α
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
                        mov              qword ptr [rsp + 984], rdx;          jmp   n00135_disjunction_α
n00136_scan_tab_β:        mov              r11, 179
                        mov              r14, qword ptr [rsp + 992];          jmp   n00135_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_disjunction_α:     mov              r11, 180
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n00137_lit_charset_α
n00135_disjunction_as:    mov              r11, 180
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lgedscan_α_489_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00138_assign_α
.Lgedscan_α_489_0:      cmp              eax, 1;                              jne   .Lgedscan_α_489_1
                                                                              jmp   n00138_assign_α
.Lgedscan_α_489_1:                                                            jmp   n00138_assign_α
n00135_disjunction_β:     mov              r11, 180
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              je    n00139_scan_tab_β
                                                                              jmp   n00135_disjunction_af
n00135_disjunction_af:    mov              r11, 180
                        add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 1;                              je    gedscan_ω
                                                                              jmp   n00140_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_assign_α:          mov              r11, 181
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00140_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_lit_charset_α:     mov              r11, 182
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_491_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00141_scan_many_α
.Lgedscan_α_491_0:      .quad            .Lgedscan_α_491_0_s
.Lgedscan_α_491_0_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00141_scan_many_α:       mov              r11, 183
                        mov              eax, r14d
.Lgedscan_α_493_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_493_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_493_2]
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
                        pop              rax;                                 je    .Lgedscan_α_493_1
                        add              eax, 1;                              jmp   .Lgedscan_α_493_0
.Lgedscan_α_493_1:      cmp              eax, r14d;                           je    n00142_disjunction_α
                        mov              qword ptr [rsp + 848], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 856], rcx;          jmp   n00143_scan_tab_α
n00141_scan_many_β:       mov              r11, 183;                            jmp   n00142_disjunction_α
.Lgedscan_α_493_2:      .quad            .Lgedscan_α_493_2_s
.Lgedscan_α_493_2_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_tab_α:        mov              r11, 184
                        mov              rax, qword ptr [rsp + 856]
                        cmp              rax, 1;                              jge   .Lgedscan_α_495_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_495_0:      cmp              rax, 1;                              jl    n00142_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00142_disjunction_α
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
                        mov              qword ptr [rsp + 824], rdx;          jmp   n00142_disjunction_α
n00143_scan_tab_β:        mov              r11, 184
                        mov              r14, qword ptr [rsp + 832];          jmp   n00142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_disjunction_α:     mov              r11, 185
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              dword ptr [rsp + 496], 0;            jmp   n00144_scan_sequence_α
n00142_disjunction_as:    mov              r11, 185
                        mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 0;                              jne   .Lgedscan_α_497_0
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00145_disjunction_α
.Lgedscan_α_497_0:                                                            jmp   n00145_disjunction_α
n00142_disjunction_β:     mov              r11, 185
                        mov              eax, dword ptr [rsp + 496];          jmp   n00146_scan_tab_β
n00142_disjunction_af:    mov              r11, 185
                        add              dword ptr [rsp + 496], 1
                        mov              eax, dword ptr [rsp + 496];          jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_scan_sequence_α:   mov              r11, 186
                        mov              dword ptr [rsp + 592], r14d
                        mov              dword ptr [rsp + 596], 0;            jmp   n00147_lit_string_α
n00144_scan_sequence_as:  mov              r11, 186
                        mov              eax, dword ptr [rsp + 596]
                        add              eax, 1
                        mov              dword ptr [rsp + 596], eax
                        cmp              eax, 1;                              je    n00148_lit_charset_α
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
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00149_assign_α
n00144_scan_sequence_β:   mov              r11, 186
                        mov              dword ptr [rsp + 596], 2
n00144_scan_sequence_af:  mov              r11, 186
                        mov              eax, dword ptr [rsp + 596]
                        sub              eax, 1
                        mov              dword ptr [rsp + 596], eax
                        cmp              eax, 0;                              je    n00150_scan_tab_β
                        cmp              eax, 1;                              je    n00151_scan_tab_β
                                                                              jmp   n00142_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00149_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00152_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_charset_α:     mov              r11, 188
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_501_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00153_scan_many_α
.Lgedscan_α_501_0:      .quad            .Lgedscan_α_501_0_s
.Lgedscan_α_501_0_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_many_α:       mov              r11, 189
                        mov              eax, r14d
.Lgedscan_α_503_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_503_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_503_2]
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
                        pop              rax;                                 je    .Lgedscan_α_503_1
                        add              eax, 1;                              jmp   .Lgedscan_α_503_0
.Lgedscan_α_503_1:      cmp              eax, r14d;                           je    n00145_disjunction_α
                        mov              qword ptr [rsp + 544], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 552], rcx;          jmp   n00146_scan_tab_α
n00153_scan_many_β:       mov              r11, 189;                            jmp   n00145_disjunction_α
.Lgedscan_α_503_2:      .quad            .Lgedscan_α_503_2_s
.Lgedscan_α_503_2_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00146_scan_tab_α:        mov              r11, 190
                        mov              rax, qword ptr [rsp + 552]
                        cmp              rax, 1;                              jge   .Lgedscan_α_505_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_505_0:      cmp              rax, 1;                              jl    n00145_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00145_disjunction_α
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
                        mov              qword ptr [rsp + 520], rdx;          jmp   n00142_disjunction_as
n00146_scan_tab_β:        mov              r11, 190
                        mov              r14, qword ptr [rsp + 528];          jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n00154_var_α
n00145_disjunction_as:    mov              r11, 191
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Lgedscan_α_507_0
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00155_assign_α
.Lgedscan_α_507_0:      cmp              eax, 1;                              jne   .Lgedscan_α_507_1
                                                                              jmp   n00155_assign_α
.Lgedscan_α_507_1:                                                            jmp   n00155_assign_α
n00145_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              je    n00156_scan_tab_β
                                                                              jmp   n00145_disjunction_af
n00145_disjunction_af:    mov              r11, 191
                        add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 1;                              je    gedscan_ω
                                                                              jmp   n00157_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n00157_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_lit_charset_α:     mov              r11, 193
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_509_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00158_scan_many_α
.Lgedscan_α_509_0:      .quad            .Lgedscan_α_509_0_s
.Lgedscan_α_509_0_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00158_scan_many_α:       mov              r11, 194
                        mov              eax, r14d
.Lgedscan_α_511_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_511_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_511_2]
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
                        pop              rax;                                 je    .Lgedscan_α_511_1
                        add              eax, 1;                              jmp   .Lgedscan_α_511_0
.Lgedscan_α_511_1:      cmp              eax, r14d;                           je    n00159_lit_integer_α
                        mov              qword ptr [rsp + 352], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 360], rcx;          jmp   n00160_scan_tab_α
n00158_scan_many_β:       mov              r11, 194;                            jmp   n00159_lit_integer_α
.Lgedscan_α_511_2:      .quad            .Lgedscan_α_511_2_s
.Lgedscan_α_511_2_s:    .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00160_scan_tab_α:        mov              r11, 195
                        mov              rax, qword ptr [rsp + 360]
                        cmp              rax, 1;                              jge   .Lgedscan_α_513_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_513_0:      cmp              rax, 1;                              jl    n00159_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00159_lit_integer_α
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
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00159_lit_integer_α
n00160_scan_tab_β:        mov              r11, 195
                        mov              r14, qword ptr [rsp + 336];          jmp   n00159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lgedscan_α_514_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00161_scan_tab_α
.Lgedscan_α_514_0:      .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_tab_α:        mov              r11, 197
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lgedscan_α_516_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_516_0:      cmp              rax, 1;                              jl    n00162_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00162_var_α
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
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00163_assign_α
n00161_scan_tab_β:        mov              r11, 197
                        mov              r14, qword ptr [rsp + 288];          jmp   n00162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_assign_α:          mov              r11, 198
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n00162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00162_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00167_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_call_α:            mov              r11, 203
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
                                                                              jmp   n00168_return_α
n00167_call_β:            mov              r11, 203;                            jmp   gedscan_ω
#-----------------------------------------------------------------------------------------------------------------------
n00168_return_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedscan_γ
#-----------------------------------------------------------------------------------------------------------------------
n00154_var_α:             mov              r11, 205
                        mov              rax, qword ptr [r9 + 16]             # gedscan__STATIC__alnum
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 464], rax           # result
                        mov              qword ptr [rsp + 472], rdx;          jmp   n00169_scan_many_α
n00154_var_β:             mov              r11, 205;                            jmp   n00145_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00169_scan_many_α:       mov              r11, 206
                        mov              eax, r14d
.Lgedscan_α_531_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_531_1
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
                        pop              rax;                                 je    .Lgedscan_α_531_1
                        add              eax, 1;                              jmp   .Lgedscan_α_531_0
.Lgedscan_α_531_1:      cmp              eax, r14d;                           je    n00145_disjunction_af
                        mov              qword ptr [rsp + 448], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 456], rcx;          jmp   n00156_scan_tab_α
n00169_scan_many_β:       mov              r11, 206;                            jmp   n00145_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00156_scan_tab_α:        mov              r11, 207
                        mov              rax, qword ptr [rsp + 456]
                        cmp              rax, 1;                              jge   .Lgedscan_α_533_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_533_0:      cmp              rax, 1;                              jl    n00145_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00145_disjunction_af
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
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00145_disjunction_as
n00156_scan_tab_β:        mov              r11, 207
                        mov              r14, qword ptr [rsp + 432];          jmp   n00145_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00148_lit_charset_α:     mov              r11, 208
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_534_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00170_scan_upto_α
n00148_lit_charset_β:     mov              r11, 208;                            jmp   n00144_scan_sequence_af
.Lgedscan_α_534_0:      .quad            .Lgedscan_α_534_0_s
.Lgedscan_α_534_0_s:    .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00170_scan_upto_α:       mov              r11, 209
                        mov              qword ptr [rsp + 768], r14
.Lgedscan_α_536_0:      mov              rax, qword ptr [rsp + 768]
                        cmp              rax, r15;                            jge   n00144_scan_sequence_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_536_2]
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
                        pop              rax;                                 je    .Lgedscan_α_536_1
                        mov              qword ptr [rsp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n00171_lit_integer_α
.Lgedscan_α_536_1:      inc              qword ptr [rsp + 768];               jmp   .Lgedscan_α_536_0
n00170_scan_upto_β:       mov              r11, 209
                        inc              qword ptr [rsp + 768];               jmp   .Lgedscan_α_536_0
.Lgedscan_α_536_2:      .quad            .Lgedscan_α_536_2_s
.Lgedscan_α_536_2_s:    .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lgedscan_α_537_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00172_coerce_numeric_α
.Lgedscan_α_537_0:      .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00172_coerce_numeric_α:  mov              r11, 211
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 5;                               je    .Lgedscan_α_539_1
                        cmp              al, 3;                               jne   .Lgedscan_α_539_0
                        mov              eax, dword ptr [rsp + 800]
                        cmp              al, 3;                               jne   .Lgedscan_α_539_0
.Lgedscan_α_539_1:      mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00173_binop_α
.Lgedscan_α_539_0:      lea              rdi, [rsp + 752]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00173_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_binop_α:           mov              r11, 212
                        mov              eax, dword ptr [rsp + 736]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lgedscan_α_540_2
                        mov              rax, qword ptr [rsp + 744]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax;          jmp   .Lgedscan_α_540_7
.Lgedscan_α_540_2:      and              edx, 1;                              jz    .Lgedscan_α_540_0
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lgedscan_α_540_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lgedscan_α_540_4
.Lgedscan_α_540_3:      movq             xmm0, rsi
.Lgedscan_α_540_4:      cmp              cl, 5;                               je    .Lgedscan_α_540_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lgedscan_α_540_6
.Lgedscan_α_540_5:      movq             xmm1, rdi
.Lgedscan_α_540_6:      addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 720], 5
                        mov              qword ptr [rsp + 728], rax
.Lgedscan_α_540_7:                                                            jmp   n00151_scan_tab_α
.Lgedscan_α_540_0:      mov              rdi, qword ptr [rsp + 736]
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
                        cmp              al, 104;                             je    n00144_scan_sequence_af
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n00151_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_scan_tab_α:        mov              r11, 213
                        mov              rax, qword ptr [rsp + 728]
                        cmp              rax, 1;                              jge   .Lgedscan_α_542_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_542_0:      cmp              rax, 1;                              jl    n00170_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00170_scan_upto_β
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
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00144_scan_sequence_as
n00151_scan_tab_β:        mov              r11, 213
                        mov              r14, qword ptr [rsp + 704];          jmp   n00170_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00147_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lgedscan_α_543_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00174_scan_match_α
n00147_lit_string_β:      mov              r11, 214;                            jmp   n00144_scan_sequence_af
.Lgedscan_α_543_0:      .quad            .Lgedscan_α_543_0_s
.Lgedscan_α_543_0_s:    .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00174_scan_match_α:      mov              r11, 215
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00144_scan_sequence_af
                        mov              rdi, qword ptr [rip + .Lgedscan_α_545_0]
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
                        test             eax, eax;                            jne   n00144_scan_sequence_af
                        mov              qword ptr [rsp + 640], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 648], rax;          jmp   n00150_scan_tab_α
.Lgedscan_α_545_0:      .quad            .Lgedscan_α_545_0_s
.Lgedscan_α_545_0_s:    .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n00150_scan_tab_α:        mov              r11, 216
                        mov              rax, qword ptr [rsp + 648]
                        cmp              rax, 1;                              jge   .Lgedscan_α_547_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_547_0:      cmp              rax, 1;                              jl    n00144_scan_sequence_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00144_scan_sequence_af
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
                        mov              qword ptr [rsp + 616], rdx;          jmp   n00144_scan_sequence_as
n00150_scan_tab_β:        mov              r11, 216
                        mov              r14, qword ptr [rsp + 624];          jmp   n00144_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n00137_lit_charset_α:     mov              r11, 217
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], -1
                        mov              rax, qword ptr [rip + .Lgedscan_α_548_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n00175_scan_many_α
n00137_lit_charset_β:     mov              r11, 217;                            jmp   n00135_disjunction_af
.Lgedscan_α_548_0:      .quad            .Lgedscan_α_548_0_s
.Lgedscan_α_548_0_s:    .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_many_α:       mov              r11, 218
                        mov              eax, r14d
.Lgedscan_α_550_0:      cmp              eax, r15d;                           jge   .Lgedscan_α_550_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedscan_α_550_2]
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
                        pop              rax;                                 je    .Lgedscan_α_550_1
                        add              eax, 1;                              jmp   .Lgedscan_α_550_0
.Lgedscan_α_550_1:      cmp              eax, r14d;                           je    n00135_disjunction_af
                        mov              qword ptr [rsp + 944], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 952], rcx;          jmp   n00139_scan_tab_α
n00175_scan_many_β:       mov              r11, 218;                            jmp   n00135_disjunction_af
.Lgedscan_α_550_2:      .quad            .Lgedscan_α_550_2_s
.Lgedscan_α_550_2_s:    .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00139_scan_tab_α:        mov              r11, 219
                        mov              rax, qword ptr [rsp + 952]
                        cmp              rax, 1;                              jge   .Lgedscan_α_552_0
                        add              rax, r15
                        add              rax, 1
.Lgedscan_α_552_0:      cmp              rax, 1;                              jl    n00135_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00135_disjunction_af
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
                        mov              qword ptr [rsp + 920], rdx;          jmp   n00135_disjunction_as
n00139_scan_tab_β:        mov              r11, 219
                        mov              r14, qword ptr [rsp + 928];          jmp   n00135_disjunction_af
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
                        lea              rcx, [rip + .Lgedscan_α_553_3]
                        push             rcx
                        lea              rcx, [rip + .Lgedscan_α_553_2]
                        push             rcx;                                 jmp   FN__gedscan
.Lgedscan_α_553_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lgedscan_α_553_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__gedwalk:
gedwalk_α_body:
                        lea              rax, [rip + n00176_suspend_β]
                        mov              qword ptr [rsp + 208], rax
#-----------------------------------------------------------------------------------------------------------------------
n00177_disjunction_α:     mov              r11, 220
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00178_var_α
n00177_disjunction_as:    mov              r11, 220
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lgedwalk_α_562_0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00176_suspend_α
.Lgedwalk_α_562_0:      cmp              eax, 1;                              jne   .Lgedwalk_α_562_1
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00176_suspend_α
.Lgedwalk_α_562_1:                                                            jmp   n00176_suspend_α
n00177_disjunction_β:     mov              r11, 220
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n00177_disjunction_af
                                                                              jmp   n00179_proc_gen_β
n00177_disjunction_af:    mov              r11, 220
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00180_var_α
                                                                              jmp   gedwalk_ω
#-----------------------------------------------------------------------------------------------------------------------
n00176_suspend_α:         mov              r11, 221
                        lea              rax, [rip + n00176_suspend_β]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedwalk_γ
n00176_suspend_β:         mov              r11, 221;                            jmp   n00177_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:             mov              r11, 222
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n00181_field_get_α
n00180_var_β:             mov              r11, 222;                            jmp   n00177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00181_field_get_α:       mov              r11, 223
                        mov              rdi, qword ptr [rip + .Lgedwalk_α_567_0]
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
                        cmp              al, 104;                             je    n00177_disjunction_af
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n00182_iterate_α
.Lgedwalk_α_567_0:      .quad            .Lgedwalk_α_567_0_s
.Lgedwalk_α_567_0_s:    .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00182_iterate_α:         mov              r11, 224
                        mov              qword ptr [rsp + 160], 0
.Lgedwalk_α_569_0:      mov              rdi, qword ptr [rsp + 176]
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
                        cmp              al, 104;                             je    n00177_disjunction_af
                                                                              jmp   n00179_proc_gen_α
n00182_iterate_β:         mov              r11, 224
                        inc              qword ptr [rsp + 160];               jmp   .Lgedwalk_α_569_0
#-----------------------------------------------------------------------------------------------------------------------
n00179_proc_gen_α:        mov              r11, 225
                        mov              qword ptr [rsp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedwalk_α_571_200
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedwalk_α_571_201
.Lgedwalk_α_571_200:    mov              edi, 0
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
.Lgedwalk_α_571_201:    lea              rax, [rip + .Lgedwalk_α_571_7]
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
                        test             rax, rax;                            je    .Lgedwalk_α_571_1
                        lea              rcx, [rip + .Lgedwalk_α_571_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedwalk_α_571_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedwalk_α_571_4];      jmp   rax
.Lgedwalk_α_571_3:      add              rsp, 16
                        mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lgedwalk_α_571_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedwalk_α_571_2
.Lgedwalk_α_571_5:      call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedwalk_α_571_2
.Lgedwalk_α_571_4:      add              rsp, 16
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lgedwalk_α_571_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedwalk_α_571_2
.Lgedwalk_α_571_6:      call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedwalk_α_571_2
.Lgedwalk_α_571_1:      mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedwalk_α_571_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedwalk_α_571_29
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
.Lgedwalk_α_571_29:     mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00182_iterate_β
                                                                              jmp   n00177_disjunction_as
n00179_proc_gen_β:        mov              r11, 225
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120];          jmp   qword ptr [rsp]
.Lgedwalk_α_571_7:      add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n00182_iterate_β
                                                                              jmp   n00177_disjunction_as
.Lgedwalk_β_571_0:      .quad            .Lgedwalk_β_571_0_s
.Lgedwalk_β_571_0_s:    .string          "gedwalk"
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_α:             mov              r11, 226
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00177_disjunction_as
n00178_var_β:             mov              r11, 226;                            jmp   n00177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedwalk_β:
                                                                              jmp   n00176_suspend_β
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
                        lea              rax, [rip + n00183_suspend_β]
                        mov              qword ptr [rsp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n00184_disjunction_α:     mov              r11, 227
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              dword ptr [rsp + 592], 0;            jmp   n00185_var_α
n00184_disjunction_as:    mov              r11, 227
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              jne   .Lgedsub_α_603_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax;          jmp   n00186_assign_α
.Lgedsub_α_603_0:       cmp              eax, 1;                              jne   .Lgedsub_α_603_1
                                                                              jmp   n00186_assign_α
.Lgedsub_α_603_1:                                                             jmp   n00186_assign_α
n00184_disjunction_β:     mov              r11, 227
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              je    n00184_disjunction_af
                                                                              jmp   n00184_disjunction_af
n00184_disjunction_af:    mov              r11, 227
                        add              dword ptr [rsp + 592], 1
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 1;                              je    gedsub_ω
                                                                              jmp   n00187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_α:             mov              r11, 229
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00188_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_field_get_α:       mov              r11, 230
                        mov              rdi, qword ptr [rip + .Lgedsub_α_607_0]
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
                        mov              qword ptr [rsp + 104], rdx;          jmp   n00189_iterate_α
.Lgedsub_α_607_0:       .quad            .Lgedsub_α_607_0_s
.Lgedsub_α_607_0_s:     .string          "sub"
#-----------------------------------------------------------------------------------------------------------------------
n00189_iterate_α:         mov              r11, 231
                        mov              qword ptr [rsp + 80], 0
.Lgedsub_α_609_0:       mov              rdi, qword ptr [rsp + 96]
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
                                                                              jmp   n00190_assign_α
n00189_iterate_β:         mov              r11, 231
                        inc              qword ptr [rsp + 80];                jmp   .Lgedsub_α_609_0
#-----------------------------------------------------------------------------------------------------------------------
n00190_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00191_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_bound_α:           mov              r11, 233
                        mov              qword ptr [rsp + 128], rsp;          jmp   n00192_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00192_disjunction_α:     mov              r11, 234
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              dword ptr [rsp + 192], 0;            jmp   n00193_var_α
n00192_disjunction_as:    mov              r11, 234
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 0;                              jne   .Lgedsub_α_614_0
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00194_unmark_α
.Lgedsub_α_614_0:                                                             jmp   n00194_unmark_α
n00192_disjunction_β:     mov              r11, 234
                        mov              eax, dword ptr [rsp + 192];          jmp   n00195_disjunction_β
n00192_disjunction_af:    mov              r11, 234
                        add              dword ptr [rsp + 192], 1
                        mov              eax, dword ptr [rsp + 192];          jmp   n00194_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00196_field_get_α
n00193_var_β:             mov              r11, 235;                            jmp   n00192_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00196_field_get_α:       mov              r11, 236
                        mov              rdi, qword ptr [rip + .Lgedsub_α_617_0]
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
                        cmp              al, 104;                             je    n00192_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00197_var_α
.Lgedsub_α_617_0:       .quad            .Lgedsub_α_617_0_s
.Lgedsub_α_617_0_s:     .string          "tag"
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00198_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_binop_test_α:      mov              r11, 238
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
                        test             eax, eax;                            jz    n00192_disjunction_af
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00195_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_disjunction_α:     mov              r11, 239
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n00199_var_α
n00195_disjunction_as:    mov              r11, 239
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lgedsub_α_622_0
                                                                              jmp   n00192_disjunction_as
.Lgedsub_α_622_0:       cmp              eax, 1;                              jne   .Lgedsub_α_622_1
                                                                              jmp   n00192_disjunction_as
.Lgedsub_α_622_1:                                                             jmp   n00192_disjunction_as
n00195_disjunction_β:     mov              r11, 239
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              je    n00200_call_value_β
                                                                              jmp   n00194_unmark_α
n00195_disjunction_af:    mov              r11, 239
                        add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 1;                              je    n00201_var_α
                                                                              jmp   n00194_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00183_suspend_α
n00201_var_β:             mov              r11, 240;                            jmp   n00194_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_suspend_α:         mov              r11, 241
                        lea              rax, [rip + n00183_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedsub_γ
n00183_suspend_β:         mov              r11, 241;                            jmp   n00195_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00202_unop_α
n00199_var_β:             mov              r11, 242;                            jmp   n00195_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00202_unop_α:            mov              r11, 243
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
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00203_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_lit_integer_α:     mov              r11, 244
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lgedsub_α_630_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00204_binop_test_α
.Lgedsub_α_630_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00204_binop_test_α:      mov              r11, 245
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 112;                             je    .Lgedsub_α_631_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 112;                             je    .Lgedsub_α_631_0
                        mov              eax, dword ptr [rsp + 448]
                        cmp              al, 3;                               jne   .Lgedsub_α_631_2
                        mov              eax, dword ptr [rsp + 480]
                        cmp              al, 3;                               jne   .Lgedsub_α_631_2
.Lgedsub_α_631_1:       mov              rax, qword ptr [rsp + 456]
                        mov              rcx, qword ptr [rsp + 488]
                        cmp              rax, rcx;                            jle   n00195_disjunction_af
                        mov              rcx, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rcx
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rcx;          jmp   n00205_lit_string_α
.Lgedsub_α_631_0:       mov              rdi, qword ptr [rsp + 448]
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
                        test             eax, eax;                            je    .Lgedsub_α_631_1
                        cmp              eax, 1;                              je    n00195_disjunction_af
                                                                              jmp   n00205_lit_string_α
.Lgedsub_α_631_2:       mov              rdi, qword ptr [rsp + 448]
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
                        test             eax, eax;                            jz    n00195_disjunction_af
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 6
                        mov              rax, qword ptr [rip + .Lgedsub_α_632_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00206_var_α
.Lgedsub_α_632_0:       .quad            .Lgedsub_α_632_0_s
.Lgedsub_α_632_0_s:     .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00206_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00207_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00208_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00208_call_icon_α:       mov              r11, 249
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
                        cmp              al, 104;                             je    n00194_unmark_α
                                                                              jmp   n00200_call_value_α
n00208_call_icon_β:       mov              r11, 249;                            jmp   n00194_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_call_value_α:      mov              r11, 250
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
                        test             rax, rax;                            je    .Lgedsub_α_640_7
                        lea              rcx, [rip + .Lgedsub_α_640_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedsub_α_640_3]
                        push             rcx;                                 jmp   rax
.Lgedsub_α_640_3:       mov              qword ptr [rsp + 296], rsp
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lgedsub_α_640_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedsub_α_640_2
.Lgedsub_α_640_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedsub_α_640_2
.Lgedsub_α_640_4:       mov              qword ptr [rsp + 296], rsp
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lgedsub_α_640_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedsub_α_640_2
.Lgedsub_α_640_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedsub_α_640_2
.Lgedsub_α_640_7:       mov              rdi, qword ptr [rsp + 240]
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
.Lgedsub_α_640_2:       mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n00194_unmark_α
                                                                              jmp   n00209_suspend_α
n00200_call_value_β:      mov              r11, 250
                        mov              rax, qword ptr [rsp + 288]
                        cmp              rax, 1;                              jne   .Lgedsub_β_640_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 296];          jmp   qword ptr [rsp]
.Lgedsub_β_640_8:       lea              rdi, [rsp + 288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00194_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00209_suspend_α
                                                                              jmp   n00194_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_suspend_α:         mov              r11, 251
                        lea              rax, [rip + n00209_suspend_β]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedsub_γ
n00209_suspend_β:         mov              r11, 251;                            jmp   n00200_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n00194_unmark_α:          mov              r11, 252
                        mov              rsp, qword ptr [rsp + 128];          jmp   n00189_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 664], rax;          jmp   n00210_call_icon_α
n00185_var_β:             mov              r11, 253;                            jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_icon_α:       mov              r11, 254
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
                        cmp              al, 104;                             je    n00184_disjunction_af
                                                                              jmp   n00184_disjunction_as
n00210_call_icon_β:       mov              r11, 254;                            jmp   n00184_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
gedsub_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedsub_β:
                                                                              jmp   n00183_suspend_β
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
                        lea              rax, [rip + n00211_suspend_β]
                        mov              qword ptr [rsp + 160], rax
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 6
                        mov              rax, qword ptr [rip + .Lgedval_α_654_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00213_var_α
.Lgedval_α_654_0:       .quad            .Lgedval_α_654_0_s
.Lgedval_α_654_0_s:     .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00213_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00214_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_call_value_α:      mov              r11, 257
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
                        test             rax, rax;                            je    .Lgedval_α_658_7
                        lea              rcx, [rip + .Lgedval_α_658_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedval_α_658_3]
                        push             rcx;                                 jmp   rax
.Lgedval_α_658_3:       mov              qword ptr [rsp + 104], rsp
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lgedval_α_658_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedval_α_658_2
.Lgedval_α_658_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedval_α_658_2
.Lgedval_α_658_4:       mov              qword ptr [rsp + 104], rsp
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lgedval_α_658_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedval_α_658_2
.Lgedval_α_658_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedval_α_658_2
.Lgedval_α_658_7:       mov              rdi, qword ptr [rsp + 48]
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
.Lgedval_α_658_2:       mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    gedval_ω
                                                                              jmp   n00215_field_get_α
n00214_call_value_β:      mov              r11, 257
                        mov              rax, qword ptr [rsp + 96]
                        cmp              rax, 1;                              jne   .Lgedval_β_658_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 104];          jmp   qword ptr [rsp]
.Lgedval_β_658_8:       lea              rdi, [rsp + 96]
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00215_field_get_α
                                                                              jmp   gedval_ω
#-----------------------------------------------------------------------------------------------------------------------
n00215_field_get_α:       mov              r11, 258
                        mov              rdi, qword ptr [rip + .Lgedval_α_659_0]
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
                        mov              qword ptr [rsp + 40], rdx;           jmp   n00211_suspend_α
.Lgedval_α_659_0:       .quad            .Lgedval_α_659_0_s
.Lgedval_α_659_0_s:     .string          "data"
#-----------------------------------------------------------------------------------------------------------------------
n00211_suspend_α:         mov              r11, 259
                        lea              rax, [rip + n00211_suspend_β]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedval_γ
n00211_suspend_β:         mov              r11, 259;                            jmp   n00214_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
gedval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedval_β:
                                                                              jmp   n00211_suspend_β
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
                        lea              rax, [rip + n00216_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n00217_lit_string_α:      mov              r11, 260
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 6
                        mov              rax, qword ptr [rip + .Lgedref_α_668_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n00218_var_α
.Lgedref_α_668_0:       .quad            .Lgedref_α_668_0_s
.Lgedref_α_668_0_s:     .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00218_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00219_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n00219_call_value_α:      mov              r11, 262
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
                        test             rax, rax;                            je    .Lgedref_α_672_7
                        lea              rcx, [rip + .Lgedref_α_672_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedref_α_672_3]
                        push             rcx;                                 jmp   rax
.Lgedref_α_672_3:       mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lgedref_α_672_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedref_α_672_2
.Lgedref_α_672_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedref_α_672_2
.Lgedref_α_672_4:       mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lgedref_α_672_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedref_α_672_2
.Lgedref_α_672_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedref_α_672_2
.Lgedref_α_672_7:       mov              rdi, qword ptr [rsp + 64]
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
.Lgedref_α_672_2:       mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    gedref_ω
                                                                              jmp   n00220_field_get_α
n00219_call_value_β:      mov              r11, 262
                        mov              rax, qword ptr [rsp + 112]
                        cmp              rax, 1;                              jne   .Lgedref_β_672_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120];          jmp   qword ptr [rsp]
.Lgedref_β_672_8:       lea              rdi, [rsp + 112]
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
                        mov              qword ptr [rsp + 88], rdx;           jmp   n00220_field_get_α
                                                                              jmp   gedref_ω
#-----------------------------------------------------------------------------------------------------------------------
n00220_field_get_α:       mov              r11, 263
                        mov              rdi, qword ptr [rip + .Lgedref_α_673_0]
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
                        mov              qword ptr [rsp + 56], rdx;           jmp   n00221_unop_test_α
.Lgedref_α_673_0:       .quad            .Lgedref_α_673_0_s
.Lgedref_α_673_0_s:     .string          "ref"
#-----------------------------------------------------------------------------------------------------------------------
n00221_unop_test_α:       mov              r11, 264
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 104;                             je    n00219_call_value_β
                        cmp              eax, 0;                              je    n00219_call_value_β
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00216_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00216_suspend_α:         mov              r11, 265
                        lea              rax, [rip + n00216_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   gedref_γ
n00216_suspend_β:         mov              r11, 265;                            jmp   n00219_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
gedref_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
gedref_β:
                                                                              jmp   n00216_suspend_β
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
n00222_disjunction_α:     mov              r11, 266
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n00223_var_α
n00222_disjunction_as:    mov              r11, 266
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lgedfnf_α_729_0
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00224_assign_α
.Lgedfnf_α_729_0:       cmp              eax, 1;                              jne   .Lgedfnf_α_729_1
                                                                              jmp   n00224_assign_α
.Lgedfnf_α_729_1:                                                             jmp   n00224_assign_α
n00222_disjunction_β:     mov              r11, 266
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n00225_proc_gen_β
                                                                              jmp   n00222_disjunction_af
n00222_disjunction_af:    mov              r11, 266
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    gedfnf_ω
                                                                              jmp   n00226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00226_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_α:             mov              r11, 268
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00227_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_scan_enter_α:      mov              r11, 269
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
                        mov              r14, 0;                              jmp   n00228_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00228_disjunction_α:     mov              r11, 270
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              dword ptr [rsp + 800], 0;            jmp   n00229_lit_charset_α
n00228_disjunction_as:    mov              r11, 270
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              jne   .Lgedfnf_α_736_0
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00230_assign_α
.Lgedfnf_α_736_0:       cmp              eax, 1;                              jne   .Lgedfnf_α_736_1
                                                                              jmp   n00230_assign_α
.Lgedfnf_α_736_1:                                                             jmp   n00230_assign_α
n00228_disjunction_β:     mov              r11, 270
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              je    n00231_scan_tab_β
                                                                              jmp   n00232_scan_tab_β
n00228_disjunction_af:    mov              r11, 270
                        add              dword ptr [rsp + 800], 1
                        mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 1;                              je    n00233_lit_integer_α
                                                                              jmp   n00234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lgedfnf_α_738_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00235_scan_match_α
.Lgedfnf_α_738_0:       .quad            .Lgedfnf_α_738_0_s
.Lgedfnf_α_738_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00235_scan_match_α:      mov              r11, 273
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00236_disjunction_α
                        mov              rdi, qword ptr [rip + .Lgedfnf_α_740_0]
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
                        test             eax, eax;                            jne   n00236_disjunction_α
                        mov              qword ptr [rsp + 736], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 744], rax;          jmp   n00237_scan_tab_α
.Lgedfnf_α_740_0:       .quad            .Lgedfnf_α_740_0_s
.Lgedfnf_α_740_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00237_scan_tab_α:        mov              r11, 274
                        mov              rax, qword ptr [rsp + 744]
                        cmp              rax, 1;                              jge   .Lgedfnf_α_742_0
                        add              rax, r15
                        add              rax, 1
.Lgedfnf_α_742_0:       cmp              rax, 1;                              jl    n00236_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00236_disjunction_α
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
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00236_disjunction_α
n00237_scan_tab_β:        mov              r11, 274
                        mov              r14, qword ptr [rsp + 720];          jmp   n00236_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00236_disjunction_α:     mov              r11, 275
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              dword ptr [rsp + 624], 0;            jmp   n00238_lit_charset_α
n00236_disjunction_as:    mov              r11, 275
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              jne   .Lgedfnf_α_744_0
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00239_scan_tab_α
.Lgedfnf_α_744_0:       cmp              eax, 1;                              jne   .Lgedfnf_α_744_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00239_scan_tab_α
.Lgedfnf_α_744_1:                                                             jmp   n00239_scan_tab_α
n00236_disjunction_β:     mov              r11, 275
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              je    n00240_scan_upto_β
                                                                              jmp   n00236_disjunction_af
n00236_disjunction_af:    mov              r11, 275
                        add              dword ptr [rsp + 624], 1
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 1;                              je    n00241_lit_integer_α
                                                                              jmp   n00242_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_scan_tab_α:        mov              r11, 276
                        mov              rax, qword ptr [rsp + 616]
                        cmp              rax, 1;                              jge   .Lgedfnf_α_746_0
                        add              rax, r15
                        add              rax, 1
.Lgedfnf_α_746_0:       cmp              rax, 1;                              jl    n00236_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00236_disjunction_β
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
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00243_assign_α
n00239_scan_tab_β:        mov              r11, 276
                        mov              r14, qword ptr [rsp + 592];          jmp   n00236_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00243_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00244_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_conjunction_α:     mov              r11, 278
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00245_scan_α
n00244_conjunction_β:     mov              r11, 278;                            jmp   n00242_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00245_scan_α:            mov              r11, 279
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
                        mov              r15, qword ptr [rsp + 496];          jmp   n00246_disjunction_α
n00245_scan_β:            mov              r11, 279;                            jmp   n00246_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lgedfnf_α_751_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00236_disjunction_as
n00241_lit_integer_β:     mov              r11, 280;                            jmp   n00236_disjunction_af
.Lgedfnf_α_751_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00238_lit_charset_α:     mov              r11, 281
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], -1
                        mov              rax, qword ptr [rip + .Lgedfnf_α_752_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00240_scan_upto_α
n00238_lit_charset_β:     mov              r11, 281;                            jmp   n00236_disjunction_af
.Lgedfnf_α_752_0:       .quad            .Lgedfnf_α_752_0_s
.Lgedfnf_α_752_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00240_scan_upto_α:       mov              r11, 282
                        mov              qword ptr [rsp + 656], r14
.Lgedfnf_α_754_0:       mov              rax, qword ptr [rsp + 656]
                        cmp              rax, r15;                            jge   n00236_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedfnf_α_754_2]
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
                        pop              rax;                                 je    .Lgedfnf_α_754_1
                        mov              qword ptr [rsp + 640], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 648], rax;          jmp   n00236_disjunction_as
.Lgedfnf_α_754_1:       inc              qword ptr [rsp + 656];               jmp   .Lgedfnf_α_754_0
n00240_scan_upto_β:       mov              r11, 282
                        inc              qword ptr [rsp + 656];               jmp   .Lgedfnf_α_754_0
.Lgedfnf_α_754_2:       .quad            .Lgedfnf_α_754_2_s
.Lgedfnf_α_754_2_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00233_lit_integer_α:     mov              r11, 283
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lgedfnf_α_755_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n00232_scan_tab_α
n00233_lit_integer_β:     mov              r11, 283;                            jmp   gedfnf_ω
.Lgedfnf_α_755_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00232_scan_tab_α:        mov              r11, 284
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lgedfnf_α_757_0
                        add              rax, r15
                        add              rax, 1
.Lgedfnf_α_757_0:       cmp              rax, 1;                              jl    gedfnf_ω
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
                        mov              qword ptr [rsp + 952], rdx;          jmp   n00247_return_α
n00232_scan_tab_β:        mov              r11, 284
                        mov              r14, qword ptr [rsp + 960];          jmp   gedfnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00247_return_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_charset_α:     mov              r11, 286
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], -1
                        mov              rax, qword ptr [rip + .Lgedfnf_α_759_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n00248_scan_upto_α
n00229_lit_charset_β:     mov              r11, 286;                            jmp   n00228_disjunction_af
.Lgedfnf_α_759_0:       .quad            .Lgedfnf_α_759_0_s
.Lgedfnf_α_759_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00248_scan_upto_α:       mov              r11, 287
                        mov              qword ptr [rsp + 912], r14
.Lgedfnf_α_761_0:       mov              rax, qword ptr [rsp + 912]
                        cmp              rax, r15;                            jge   n00228_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedfnf_α_761_2]
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
                        pop              rax;                                 je    .Lgedfnf_α_761_1
                        mov              qword ptr [rsp + 896], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 904], rax;          jmp   n00231_scan_tab_α
.Lgedfnf_α_761_1:       inc              qword ptr [rsp + 912];               jmp   .Lgedfnf_α_761_0
n00248_scan_upto_β:       mov              r11, 287
                        inc              qword ptr [rsp + 912];               jmp   .Lgedfnf_α_761_0
.Lgedfnf_α_761_2:       .quad            .Lgedfnf_α_761_2_s
.Lgedfnf_α_761_2_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00231_scan_tab_α:        mov              r11, 288
                        mov              rax, qword ptr [rsp + 904]
                        cmp              rax, 1;                              jge   .Lgedfnf_α_763_0
                        add              rax, r15
                        add              rax, 1
.Lgedfnf_α_763_0:       cmp              rax, 1;                              jl    n00248_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00248_scan_upto_β
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
                        mov              qword ptr [rsp + 872], rdx;          jmp   n00249_call_icon_α
n00231_scan_tab_β:        mov              r11, 288
                        mov              r14, qword ptr [rsp + 880];          jmp   n00248_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00249_call_icon_α:       mov              r11, 289
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
                        cmp              al, 104;                             je    n00231_scan_tab_β
                                                                              jmp   n00228_disjunction_as
n00249_call_icon_β:       mov              r11, 289;                            jmp   n00231_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00246_disjunction_α:     mov              r11, 290
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              dword ptr [rsp + 256], 0;            jmp   n00250_var_α
n00246_disjunction_as:    mov              r11, 290
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              jne   .Lgedfnf_α_767_0
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00251_var_α
.Lgedfnf_α_767_0:       cmp              eax, 1;                              jne   .Lgedfnf_α_767_1
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00251_var_α
.Lgedfnf_α_767_1:                                                             jmp   n00251_var_α
n00246_disjunction_β:     mov              r11, 290
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 0;                              je    n00251_var_α
                                                                              jmp   n00251_var_α
n00246_disjunction_af:    mov              r11, 290
                        add              dword ptr [rsp + 256], 1
                        mov              eax, dword ptr [rsp + 256]
                        cmp              eax, 1;                              je    n00252_var_α
                                                                              jmp   n00251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:             mov              r11, 291
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00253_assign_α
n00252_var_β:             mov              r11, 291;                            jmp   n00251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_assign_α:          mov              r11, 292
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00246_disjunction_as
n00253_assign_β:          mov              r11, 292;                            jmp   n00251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_α:             mov              r11, 293
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00254_unop_α
n00250_var_β:             mov              r11, 293;                            jmp   n00246_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00254_unop_α:            mov              r11, 294
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
                        mov              qword ptr [rsp + 392], rdx;          jmp   n00255_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_integer_α:     mov              r11, 295
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lgedfnf_α_774_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00256_binop_test_α
.Lgedfnf_α_774_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00256_binop_test_α:      mov              r11, 296
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 112;                             je    .Lgedfnf_α_775_0
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 112;                             je    .Lgedfnf_α_775_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 3;                               jne   .Lgedfnf_α_775_2
                        mov              eax, dword ptr [rsp + 416]
                        cmp              al, 3;                               jne   .Lgedfnf_α_775_2
.Lgedfnf_α_775_1:       mov              rax, qword ptr [rsp + 392]
                        mov              rcx, qword ptr [rsp + 424]
                        cmp              rax, rcx;                            jle   n00246_disjunction_af
                        mov              rcx, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rcx
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rcx;          jmp   n00257_var_α
.Lgedfnf_α_775_0:       mov              rdi, qword ptr [rsp + 384]
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
                        test             eax, eax;                            je    .Lgedfnf_α_775_1
                        cmp              eax, 1;                              je    n00246_disjunction_af
                                                                              jmp   n00257_var_α
.Lgedfnf_α_775_2:       mov              rdi, qword ptr [rsp + 384]
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
                        test             eax, eax;                            jz    n00246_disjunction_af
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00257_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_α:             mov              r11, 297
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00258_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lgedfnf_α_778_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00259_binop_α
.Lgedfnf_α_778_0:       .quad            .Lgedfnf_α_778_0_s
.Lgedfnf_α_778_0_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00259_binop_α:           mov              r11, 299
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00260_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_α:             mov              r11, 300
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00261_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00261_binop_α:           mov              r11, 301
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00262_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n00246_disjunction_as
n00262_assign_β:          mov              r11, 302;                            jmp   n00251_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00251_var_α:             mov              r11, 303
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lgedfnf_α_786_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00264_var_α
.Lgedfnf_α_786_0:       .quad            .Lgedfnf_α_786_0_s
.Lgedfnf_α_786_0_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:             mov              r11, 305
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_lit_string_α:      mov              r11, 306
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lgedfnf_α_789_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00266_proc_gen_α
.Lgedfnf_α_789_0:       .quad            .Lgedfnf_α_789_0_s
.Lgedfnf_α_789_0_s:     .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00266_proc_gen_α:        mov              r11, 307
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedfnf_α_791_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedfnf_α_791_201
.Lgedfnf_α_791_200:     mov              edi, 0
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
.Lgedfnf_α_791_201:     lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedfnf_α_791_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lgedfnf_α_791_203
.Lgedfnf_α_791_202:     mov              edi, 1
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
.Lgedfnf_α_791_203:     lea              rax, [rip + .Lgedfnf_α_791_7]
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
                        test             rax, rax;                            je    .Lgedfnf_α_791_1
                        lea              rcx, [rip + .Lgedfnf_α_791_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedfnf_α_791_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedfnf_α_791_4];       jmp   rax
.Lgedfnf_α_791_3:       add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lgedfnf_α_791_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedfnf_α_791_2
.Lgedfnf_α_791_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedfnf_α_791_2
.Lgedfnf_α_791_4:       add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lgedfnf_α_791_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedfnf_α_791_2
.Lgedfnf_α_791_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedfnf_α_791_2
.Lgedfnf_α_791_1:       mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedfnf_α_791_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedfnf_α_791_29
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
.Lgedfnf_α_791_29:      mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00267_var_α
                                                                              jmp   n00268_binop_α
n00266_proc_gen_β:        mov              r11, 307
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 184];          jmp   qword ptr [rsp]
.Lgedfnf_α_791_7:       add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00267_var_α
                                                                              jmp   n00268_binop_α
.Lgedfnf_β_791_0:       .quad            .Lgedfnf_β_791_0_s
.Lgedfnf_β_791_0_s:     .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00268_binop_α:           mov              r11, 308
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00269_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_binop_α:           mov              r11, 309
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00270_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:             mov              r11, 311
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00271_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_return_α:          mov              r11, 312
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedfnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_α:             mov              r11, 313
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00272_lit_string_α
n00223_var_β:             mov              r11, 313;                            jmp   n00222_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 4
                        mov              rax, qword ptr [rip + .Lgedfnf_α_800_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n00225_proc_gen_α
.Lgedfnf_α_800_0:       .quad            .Lgedfnf_α_800_0_s
.Lgedfnf_α_800_0_s:     .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00225_proc_gen_α:        mov              r11, 315
                        mov              qword ptr [rsp + 1088], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedfnf_α_802_200
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedfnf_α_802_201
.Lgedfnf_α_802_200:     mov              edi, 0
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
.Lgedfnf_α_802_201:     lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedfnf_α_802_202
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lgedfnf_α_802_203
.Lgedfnf_α_802_202:     mov              edi, 1
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
.Lgedfnf_α_802_203:     lea              rax, [rip + .Lgedfnf_α_802_7]
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
                        test             rax, rax;                            je    .Lgedfnf_α_802_1
                        lea              rcx, [rip + .Lgedfnf_α_802_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedfnf_α_802_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedfnf_α_802_4];       jmp   rax
.Lgedfnf_α_802_3:       add              rsp, 16
                        mov              qword ptr [rsp + 1096], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1088]
                        test             rax, rax;                            jne   .Lgedfnf_α_802_5
                        mov              qword ptr [rsp + 1088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedfnf_α_802_2
.Lgedfnf_α_802_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedfnf_α_802_2
.Lgedfnf_α_802_4:       add              rsp, 16
                        mov              rax, qword ptr [rsp + 1088]
                        test             rax, rax;                            jne   .Lgedfnf_α_802_6
                        mov              qword ptr [rsp + 1088], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedfnf_α_802_2
.Lgedfnf_α_802_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedfnf_α_802_2
.Lgedfnf_α_802_1:       mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedfnf_α_802_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedfnf_α_802_29
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
.Lgedfnf_α_802_29:      mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00222_disjunction_af
                                                                              jmp   n00222_disjunction_as
n00225_proc_gen_β:        mov              r11, 315
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1096];         jmp   qword ptr [rsp]
.Lgedfnf_α_802_7:       add              rsp, 8
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00222_disjunction_af
                                                                              jmp   n00222_disjunction_as
.Lgedfnf_β_802_0:       .quad            .Lgedfnf_β_802_0_s
.Lgedfnf_β_802_0_s:     .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00242_scan_α:            mov              r11, 316
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
                        mov              r15, qword ptr [rsp + 496];          jmp   n00246_disjunction_α
n00242_scan_β:            mov              r11, 316;                            jmp   n00246_disjunction_α
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
                        lea              rcx, [rip + .Lgedfnf_α_805_3]
                        push             rcx
                        lea              rcx, [rip + .Lgedfnf_α_805_2]
                        push             rcx;                                 jmp   FN__gedfnf
.Lgedfnf_α_805_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lgedfnf_α_805_3:       add              rsp, 24
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
n00273_disjunction_α:     mov              r11, 317
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n00274_var_α
n00273_disjunction_as:    mov              r11, 317
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lgedlnf_α_851_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00275_assign_α
.Lgedlnf_α_851_0:       cmp              eax, 1;                              jne   .Lgedlnf_α_851_1
                                                                              jmp   n00275_assign_α
.Lgedlnf_α_851_1:                                                             jmp   n00275_assign_α
n00273_disjunction_β:     mov              r11, 317
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              je    n00276_proc_gen_β
                                                                              jmp   n00273_disjunction_af
n00273_disjunction_af:    mov              r11, 317
                        add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 1;                              je    gedlnf_ω
                                                                              jmp   n00277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_assign_α:          mov              r11, 318
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00277_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_α:             mov              r11, 319
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00278_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_scan_enter_α:      mov              r11, 320
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
                        mov              r14, 0;                              jmp   n00279_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00279_disjunction_α:     mov              r11, 321
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n00280_lit_charset_α
n00279_disjunction_as:    mov              r11, 321
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lgedlnf_α_858_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n00281_assign_α
.Lgedlnf_α_858_0:       cmp              eax, 1;                              jne   .Lgedlnf_α_858_1
                                                                              jmp   n00281_assign_α
.Lgedlnf_α_858_1:                                                             jmp   n00281_assign_α
n00279_disjunction_β:     mov              r11, 321
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n00282_scan_tab_β
                                                                              jmp   n00283_scan_tab_β
n00279_disjunction_af:    mov              r11, 321
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n00284_lit_integer_α
                                                                              jmp   n00285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_α:          mov              r11, 322
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n00285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lgedlnf_α_860_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n00286_scan_match_α
.Lgedlnf_α_860_0:       .quad            .Lgedlnf_α_860_0_s
.Lgedlnf_α_860_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00286_scan_match_α:      mov              r11, 324
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n00287_disjunction_α
                        mov              rdi, qword ptr [rip + .Lgedlnf_α_862_0]
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
                        test             eax, eax;                            jne   n00287_disjunction_α
                        mov              qword ptr [rsp + 592], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 600], rax;          jmp   n00288_scan_tab_α
.Lgedlnf_α_862_0:       .quad            .Lgedlnf_α_862_0_s
.Lgedlnf_α_862_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00288_scan_tab_α:        mov              r11, 325
                        mov              rax, qword ptr [rsp + 600]
                        cmp              rax, 1;                              jge   .Lgedlnf_α_864_0
                        add              rax, r15
                        add              rax, 1
.Lgedlnf_α_864_0:       cmp              rax, 1;                              jl    n00287_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00287_disjunction_α
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
                        mov              qword ptr [rsp + 568], rdx;          jmp   n00287_disjunction_α
n00288_scan_tab_β:        mov              r11, 325
                        mov              r14, qword ptr [rsp + 576];          jmp   n00287_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_disjunction_α:     mov              r11, 326
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n00289_lit_charset_α
n00287_disjunction_as:    mov              r11, 326
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lgedlnf_α_866_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00290_scan_tab_α
.Lgedlnf_α_866_0:       cmp              eax, 1;                              jne   .Lgedlnf_α_866_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00290_scan_tab_α
.Lgedlnf_α_866_1:                                                             jmp   n00290_scan_tab_α
n00287_disjunction_β:     mov              r11, 326
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n00291_scan_upto_β
                                                                              jmp   n00287_disjunction_af
n00287_disjunction_af:    mov              r11, 326
                        add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n00292_lit_integer_α
                                                                              jmp   n00293_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_scan_tab_α:        mov              r11, 327
                        mov              rax, qword ptr [rsp + 472]
                        cmp              rax, 1;                              jge   .Lgedlnf_α_868_0
                        add              rax, r15
                        add              rax, 1
.Lgedlnf_α_868_0:       cmp              rax, 1;                              jl    n00287_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00287_disjunction_β
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
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00294_assign_α
n00290_scan_tab_β:        mov              r11, 327
                        mov              r14, qword ptr [rsp + 448];          jmp   n00287_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00294_assign_α:          mov              r11, 328
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00295_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_conjunction_α:     mov              r11, 329
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00296_scan_α
n00295_conjunction_β:     mov              r11, 329;                            jmp   n00293_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_scan_α:            mov              r11, 330
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
                        mov              r15, qword ptr [rsp + 352];          jmp   n00297_var_α
n00296_scan_β:            mov              r11, 330;                            jmp   n00297_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_integer_α:     mov              r11, 331
                        mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lgedlnf_α_873_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00287_disjunction_as
n00292_lit_integer_β:     mov              r11, 331;                            jmp   n00287_disjunction_af
.Lgedlnf_α_873_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00289_lit_charset_α:     mov              r11, 332
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], -1
                        mov              rax, qword ptr [rip + .Lgedlnf_α_874_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00291_scan_upto_α
n00289_lit_charset_β:     mov              r11, 332;                            jmp   n00287_disjunction_af
.Lgedlnf_α_874_0:       .quad            .Lgedlnf_α_874_0_s
.Lgedlnf_α_874_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00291_scan_upto_α:       mov              r11, 333
                        mov              qword ptr [rsp + 512], r14
.Lgedlnf_α_876_0:       mov              rax, qword ptr [rsp + 512]
                        cmp              rax, r15;                            jge   n00287_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedlnf_α_876_2]
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
                        pop              rax;                                 je    .Lgedlnf_α_876_1
                        mov              qword ptr [rsp + 496], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 504], rax;          jmp   n00287_disjunction_as
.Lgedlnf_α_876_1:       inc              qword ptr [rsp + 512];               jmp   .Lgedlnf_α_876_0
n00291_scan_upto_β:       mov              r11, 333
                        inc              qword ptr [rsp + 512];               jmp   .Lgedlnf_α_876_0
.Lgedlnf_α_876_2:       .quad            .Lgedlnf_α_876_2_s
.Lgedlnf_α_876_2_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_integer_α:     mov              r11, 334
                        mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Lgedlnf_α_877_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00283_scan_tab_α
n00284_lit_integer_β:     mov              r11, 334;                            jmp   gedlnf_ω
.Lgedlnf_α_877_0:       .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00283_scan_tab_α:        mov              r11, 335
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lgedlnf_α_879_0
                        add              rax, r15
                        add              rax, 1
.Lgedlnf_α_879_0:       cmp              rax, 1;                              jl    gedlnf_ω
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
                        mov              qword ptr [rsp + 808], rdx;          jmp   n00298_return_α
n00283_scan_tab_β:        mov              r11, 335
                        mov              r14, qword ptr [rsp + 816];          jmp   gedlnf_ω
#-----------------------------------------------------------------------------------------------------------------------
n00298_return_α:          mov              r11, 336
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_charset_α:     mov              r11, 337
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], -1
                        mov              rax, qword ptr [rip + .Lgedlnf_α_881_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00299_scan_upto_α
n00280_lit_charset_β:     mov              r11, 337;                            jmp   n00279_disjunction_af
.Lgedlnf_α_881_0:       .quad            .Lgedlnf_α_881_0_s
.Lgedlnf_α_881_0_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00299_scan_upto_α:       mov              r11, 338
                        mov              qword ptr [rsp + 768], r14
.Lgedlnf_α_883_0:       mov              rax, qword ptr [rsp + 768]
                        cmp              rax, r15;                            jge   n00279_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgedlnf_α_883_2]
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
                        pop              rax;                                 je    .Lgedlnf_α_883_1
                        mov              qword ptr [rsp + 752], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n00282_scan_tab_α
.Lgedlnf_α_883_1:       inc              qword ptr [rsp + 768];               jmp   .Lgedlnf_α_883_0
n00299_scan_upto_β:       mov              r11, 338
                        inc              qword ptr [rsp + 768];               jmp   .Lgedlnf_α_883_0
.Lgedlnf_α_883_2:       .quad            .Lgedlnf_α_883_2_s
.Lgedlnf_α_883_2_s:     .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n00282_scan_tab_α:        mov              r11, 339
                        mov              rax, qword ptr [rsp + 760]
                        cmp              rax, 1;                              jge   .Lgedlnf_α_885_0
                        add              rax, r15
                        add              rax, 1
.Lgedlnf_α_885_0:       cmp              rax, 1;                              jl    n00299_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00299_scan_upto_β
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
                        mov              qword ptr [rsp + 728], rdx;          jmp   n00300_call_icon_α
n00282_scan_tab_β:        mov              r11, 339
                        mov              r14, qword ptr [rsp + 736];          jmp   n00299_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00300_call_icon_α:       mov              r11, 340
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
                        cmp              al, 104;                             je    n00282_scan_tab_β
                                                                              jmp   n00279_disjunction_as
n00300_call_icon_β:       mov              r11, 340;                            jmp   n00282_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00297_var_α:             mov              r11, 341
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00301_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lgedlnf_α_890_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n00302_binop_α
.Lgedlnf_α_890_0:       .quad            .Lgedlnf_α_890_0_s
.Lgedlnf_α_890_0_s:     .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n00302_binop_α:           mov              r11, 343
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00303_var_α:             mov              r11, 344
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00304_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_binop_α:           mov              r11, 345
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00305_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00305_assign_α:          mov              r11, 346
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_α:             mov              r11, 347
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00307_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00307_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 1
                        mov              rax, qword ptr [rip + .Lgedlnf_α_898_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00308_var_α
.Lgedlnf_α_898_0:       .quad            .Lgedlnf_α_898_0_s
.Lgedlnf_α_898_0_s:     .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00308_var_α:             mov              r11, 349
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lgedlnf_α_901_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00310_proc_gen_α
.Lgedlnf_α_901_0:       .quad            .Lgedlnf_α_901_0_s
.Lgedlnf_α_901_0_s:     .string          "TITL"
#-----------------------------------------------------------------------------------------------------------------------
n00310_proc_gen_α:        mov              r11, 351
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedlnf_α_903_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedlnf_α_903_201
.Lgedlnf_α_903_200:     mov              edi, 0
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
.Lgedlnf_α_903_201:     lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedlnf_α_903_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lgedlnf_α_903_203
.Lgedlnf_α_903_202:     mov              edi, 1
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
.Lgedlnf_α_903_203:     lea              rax, [rip + .Lgedlnf_α_903_7]
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
                        test             rax, rax;                            je    .Lgedlnf_α_903_1
                        lea              rcx, [rip + .Lgedlnf_α_903_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedlnf_α_903_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedlnf_α_903_4];       jmp   rax
.Lgedlnf_α_903_3:       add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lgedlnf_α_903_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedlnf_α_903_2
.Lgedlnf_α_903_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedlnf_α_903_2
.Lgedlnf_α_903_4:       add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lgedlnf_α_903_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedlnf_α_903_2
.Lgedlnf_α_903_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedlnf_α_903_2
.Lgedlnf_α_903_1:       mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedlnf_α_903_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedlnf_α_903_29
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
.Lgedlnf_α_903_29:      mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00311_var_α
                                                                              jmp   n00312_binop_α
n00310_proc_gen_β:        mov              r11, 351
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 184];          jmp   qword ptr [rsp]
.Lgedlnf_α_903_7:       add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n00311_var_α
                                                                              jmp   n00312_binop_α
.Lgedlnf_β_903_0:       .quad            .Lgedlnf_β_903_0_s
.Lgedlnf_β_903_0_s:     .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00312_binop_α:           mov              r11, 352
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00313_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_binop_α:           mov              r11, 353
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00314_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:          mov              r11, 354
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n00311_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_α:             mov              r11, 355
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 40], rax;           jmp   n00315_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_return_α:          mov              r11, 356
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   gedlnf_γ
#-----------------------------------------------------------------------------------------------------------------------
n00274_var_α:             mov              r11, 357
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 984], rax;          jmp   n00316_lit_string_α
n00274_var_β:             mov              r11, 357;                            jmp   n00273_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00316_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 4
                        mov              rax, qword ptr [rip + .Lgedlnf_α_912_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00276_proc_gen_α
.Lgedlnf_α_912_0:       .quad            .Lgedlnf_α_912_0_s
.Lgedlnf_α_912_0_s:     .string          "NAME"
#-----------------------------------------------------------------------------------------------------------------------
n00276_proc_gen_α:        mov              r11, 359
                        mov              qword ptr [rsp + 944], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedlnf_α_914_200
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgedlnf_α_914_201
.Lgedlnf_α_914_200:     mov              edi, 0
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
.Lgedlnf_α_914_201:     lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgedlnf_α_914_202
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lgedlnf_α_914_203
.Lgedlnf_α_914_202:     mov              edi, 1
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
.Lgedlnf_α_914_203:     lea              rax, [rip + .Lgedlnf_α_914_7]
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
                        test             rax, rax;                            je    .Lgedlnf_α_914_1
                        lea              rcx, [rip + .Lgedlnf_α_914_4]
                        push             rcx
                        lea              rcx, [rip + .Lgedlnf_α_914_3]
                        push             rcx
                        lea              rdx, [rip + .Lgedlnf_α_914_4];       jmp   rax
.Lgedlnf_α_914_3:       add              rsp, 16
                        mov              qword ptr [rsp + 952], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lgedlnf_α_914_5
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedlnf_α_914_2
.Lgedlnf_α_914_5:       call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgedlnf_α_914_2
.Lgedlnf_α_914_4:       add              rsp, 16
                        mov              rax, qword ptr [rsp + 944]
                        test             rax, rax;                            jne   .Lgedlnf_α_914_6
                        mov              qword ptr [rsp + 944], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgedlnf_α_914_2
.Lgedlnf_α_914_6:       call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgedlnf_α_914_2
.Lgedlnf_α_914_1:       mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgedlnf_α_914_2:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgedlnf_α_914_29
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
.Lgedlnf_α_914_29:      mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00273_disjunction_af
                                                                              jmp   n00273_disjunction_as
n00276_proc_gen_β:        mov              r11, 359
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 952];          jmp   qword ptr [rsp]
.Lgedlnf_α_914_7:       add              rsp, 8
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n00273_disjunction_af
                                                                              jmp   n00273_disjunction_as
.Lgedlnf_β_914_0:       .quad            .Lgedlnf_β_914_0_s
.Lgedlnf_β_914_0_s:     .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00293_scan_α:            mov              r11, 360
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
                        mov              r15, qword ptr [rsp + 352];          jmp   n00297_var_α
n00293_scan_β:            mov              r11, 360;                            jmp   n00297_var_α
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
                        lea              rcx, [rip + .Lgedlnf_α_917_3]
                        push             rcx
                        lea              rcx, [rip + .Lgedlnf_α_917_2]
                        push             rcx;                                 jmp   FN__gedlnf
.Lgedlnf_α_917_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lgedlnf_α_917_3:       add              rsp, 24
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
n00317_disjunction_α:     mov              r11, 361
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              dword ptr [rsp + 1104], 0;           jmp   n00318_var_ref_α
n00317_disjunction_as:    mov              r11, 361
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              jne   .Lgeddate_α_1063_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n00319_disjunction_α
.Lgeddate_α_1063_0:                                                           jmp   n00319_disjunction_α
n00317_disjunction_β:     mov              r11, 361
                        mov              eax, dword ptr [rsp + 1104];         jmp   n00319_disjunction_α
n00317_disjunction_af:    mov              r11, 361
                        add              dword ptr [rsp + 1104], 1
                        mov              eax, dword ptr [rsp + 1104];         jmp   n00319_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # geddate__INITFLAG__0
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00320_nulltest_var_α
n00318_var_ref_β:         mov              r11, 362;                            jmp   n00317_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00320_nulltest_var_α:    mov              r11, 363
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              al, 104;                             je    n00317_disjunction_af
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
                        cmp              al, 104;                             je    n00317_disjunction_af
                        cmp              eax, 0;                              jne   n00317_disjunction_af
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n00321_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_lit_integer_α:     mov              r11, 364
                        mov              qword ptr [rsp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1067_0]
                        mov              qword ptr [rsp + 2584], rax;         jmp   n00322_assign_var_α
.Lgeddate_α_1067_0:     .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_var_α:      mov              r11, 365
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
                        cmp              al, 104;                             je    n00317_disjunction_af
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n00323_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_call_icon_α:       mov              r11, 366
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
                        cmp              al, 104;                             je    n00324_var_ref_α
                                                                              jmp   n00325_assign_α
n00323_call_icon_β:       mov              r11, 366;                            jmp   n00324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [r9 + 48], rax             # geddate__STATIC__ftab
                        mov              qword ptr [r9 + 56], rdx;            jmp   n00324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_var_ref_α:         mov              r11, 368
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n00326_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1074_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n00327_subscript_α
.Lgeddate_α_1074_0:     .quad            .Lgeddate_α_1074_0_s
.Lgeddate_α_1074_0_s:   .string          "JAN"
#-----------------------------------------------------------------------------------------------------------------------
n00327_subscript_α:       mov              r11, 370
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
                        cmp              al, 104;                             je    n00328_var_ref_α
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00329_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1076_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00330_assign_var_α
.Lgeddate_α_1076_0:     .quad            .Lgeddate_α_1076_0_s
.Lgeddate_α_1076_0_s:   .string          "Jan"
#-----------------------------------------------------------------------------------------------------------------------
n00330_assign_var_α:      mov              r11, 372
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
                        cmp              al, 104;                             je    n00328_var_ref_α
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n00328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_var_ref_α:         mov              r11, 373
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n00331_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1080_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n00332_subscript_α
.Lgeddate_α_1080_0:     .quad            .Lgeddate_α_1080_0_s
.Lgeddate_α_1080_0_s:   .string          "FEB"
#-----------------------------------------------------------------------------------------------------------------------
n00332_subscript_α:       mov              r11, 375
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
                        cmp              al, 104;                             je    n00333_var_ref_α
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n00334_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00334_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1082_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n00335_assign_var_α
.Lgeddate_α_1082_0:     .quad            .Lgeddate_α_1082_0_s
.Lgeddate_α_1082_0_s:   .string          "Feb"
#-----------------------------------------------------------------------------------------------------------------------
n00335_assign_var_α:      mov              r11, 377
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
                        cmp              al, 104;                             je    n00333_var_ref_α
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n00333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_lit_string_α:      mov              r11, 379
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1086_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n00337_subscript_α
.Lgeddate_α_1086_0:     .quad            .Lgeddate_α_1086_0_s
.Lgeddate_α_1086_0_s:   .string          "MAR"
#-----------------------------------------------------------------------------------------------------------------------
n00337_subscript_α:       mov              r11, 380
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
                        cmp              al, 104;                             je    n00338_var_ref_α
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n00339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1088_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n00340_assign_var_α
.Lgeddate_α_1088_0:     .quad            .Lgeddate_α_1088_0_s
.Lgeddate_α_1088_0_s:   .string          "Mar"
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_var_α:      mov              r11, 382
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
                        cmp              al, 104;                             je    n00338_var_ref_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n00338_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n00341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1092_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n00342_subscript_α
.Lgeddate_α_1092_0:     .quad            .Lgeddate_α_1092_0_s
.Lgeddate_α_1092_0_s:   .string          "APR"
#-----------------------------------------------------------------------------------------------------------------------
n00342_subscript_α:       mov              r11, 385
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
                        cmp              al, 104;                             je    n00343_var_ref_α
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n00344_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00344_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1094_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n00345_assign_var_α
.Lgeddate_α_1094_0:     .quad            .Lgeddate_α_1094_0_s
.Lgeddate_α_1094_0_s:   .string          "Apr"
#-----------------------------------------------------------------------------------------------------------------------
n00345_assign_var_α:      mov              r11, 387
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
                        cmp              al, 104;                             je    n00343_var_ref_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n00343_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n00346_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1098_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n00347_subscript_α
.Lgeddate_α_1098_0:     .quad            .Lgeddate_α_1098_0_s
.Lgeddate_α_1098_0_s:   .string          "MAY"
#-----------------------------------------------------------------------------------------------------------------------
n00347_subscript_α:       mov              r11, 390
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
                        cmp              al, 104;                             je    n00348_var_ref_α
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n00349_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1100_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n00350_assign_var_α
.Lgeddate_α_1100_0:     .quad            .Lgeddate_α_1100_0_s
.Lgeddate_α_1100_0_s:   .string          "May"
#-----------------------------------------------------------------------------------------------------------------------
n00350_assign_var_α:      mov              r11, 392
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
                        cmp              al, 104;                             je    n00348_var_ref_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n00348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n00351_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1104_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00352_subscript_α
.Lgeddate_α_1104_0:     .quad            .Lgeddate_α_1104_0_s
.Lgeddate_α_1104_0_s:   .string          "JUN"
#-----------------------------------------------------------------------------------------------------------------------
n00352_subscript_α:       mov              r11, 395
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
                        cmp              al, 104;                             je    n00353_var_ref_α
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n00354_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00354_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1106_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n00355_assign_var_α
.Lgeddate_α_1106_0:     .quad            .Lgeddate_α_1106_0_s
.Lgeddate_α_1106_0_s:   .string          "Jun"
#-----------------------------------------------------------------------------------------------------------------------
n00355_assign_var_α:      mov              r11, 397
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
                        cmp              al, 104;                             je    n00353_var_ref_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n00353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n00356_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1110_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n00357_subscript_α
.Lgeddate_α_1110_0:     .quad            .Lgeddate_α_1110_0_s
.Lgeddate_α_1110_0_s:   .string          "JUL"
#-----------------------------------------------------------------------------------------------------------------------
n00357_subscript_α:       mov              r11, 400
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
                        cmp              al, 104;                             je    n00358_var_ref_α
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n00359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1112_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n00360_assign_var_α
.Lgeddate_α_1112_0:     .quad            .Lgeddate_α_1112_0_s
.Lgeddate_α_1112_0_s:   .string          "Jul"
#-----------------------------------------------------------------------------------------------------------------------
n00360_assign_var_α:      mov              r11, 402
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
                        cmp              al, 104;                             je    n00358_var_ref_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n00358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n00361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1116_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n00362_subscript_α
.Lgeddate_α_1116_0:     .quad            .Lgeddate_α_1116_0_s
.Lgeddate_α_1116_0_s:   .string          "AUG"
#-----------------------------------------------------------------------------------------------------------------------
n00362_subscript_α:       mov              r11, 405
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
                        cmp              al, 104;                             je    n00363_var_ref_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx;         jmp   n00364_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00364_lit_string_α:      mov              r11, 406
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1118_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n00365_assign_var_α
.Lgeddate_α_1118_0:     .quad            .Lgeddate_α_1118_0_s
.Lgeddate_α_1118_0_s:   .string          "Aug"
#-----------------------------------------------------------------------------------------------------------------------
n00365_assign_var_α:      mov              r11, 407
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
                        cmp              al, 104;                             je    n00363_var_ref_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n00363_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_ref_α:         mov              r11, 408
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n00366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rsp + 1792], 2            # result
                        mov              dword ptr [rsp + 1796], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1122_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00367_subscript_α
.Lgeddate_α_1122_0:     .quad            .Lgeddate_α_1122_0_s
.Lgeddate_α_1122_0_s:   .string          "SEP"
#-----------------------------------------------------------------------------------------------------------------------
n00367_subscript_α:       mov              r11, 410
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
                        cmp              al, 104;                             je    n00368_var_ref_α
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n00369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00369_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1124_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n00370_assign_var_α
.Lgeddate_α_1124_0:     .quad            .Lgeddate_α_1124_0_s
.Lgeddate_α_1124_0_s:   .string          "Sep"
#-----------------------------------------------------------------------------------------------------------------------
n00370_assign_var_α:      mov              r11, 412
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
                        cmp              al, 104;                             je    n00368_var_ref_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n00368_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00368_var_ref_α:         mov              r11, 413
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n00371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_string_α:      mov              r11, 414
                        mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1128_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n00372_subscript_α
.Lgeddate_α_1128_0:     .quad            .Lgeddate_α_1128_0_s
.Lgeddate_α_1128_0_s:   .string          "OCT"
#-----------------------------------------------------------------------------------------------------------------------
n00372_subscript_α:       mov              r11, 415
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
                        cmp              al, 104;                             je    n00373_var_ref_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n00374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_lit_string_α:      mov              r11, 416
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1130_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n00375_assign_var_α
.Lgeddate_α_1130_0:     .quad            .Lgeddate_α_1130_0_s
.Lgeddate_α_1130_0_s:   .string          "Oct"
#-----------------------------------------------------------------------------------------------------------------------
n00375_assign_var_α:      mov              r11, 417
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
                        cmp              al, 104;                             je    n00373_var_ref_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n00373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_var_ref_α:         mov              r11, 418
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n00376_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1134_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n00377_subscript_α
.Lgeddate_α_1134_0:     .quad            .Lgeddate_α_1134_0_s
.Lgeddate_α_1134_0_s:   .string          "NOV"
#-----------------------------------------------------------------------------------------------------------------------
n00377_subscript_α:       mov              r11, 420
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
                        cmp              al, 104;                             je    n00378_var_ref_α
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n00379_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1136_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00380_assign_var_α
.Lgeddate_α_1136_0:     .quad            .Lgeddate_α_1136_0_s
.Lgeddate_α_1136_0_s:   .string          "Nov"
#-----------------------------------------------------------------------------------------------------------------------
n00380_assign_var_α:      mov              r11, 422
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
                        cmp              al, 104;                             je    n00378_var_ref_α
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n00378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_var_ref_α:         mov              r11, 423
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n00381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1140_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00382_subscript_α
.Lgeddate_α_1140_0:     .quad            .Lgeddate_α_1140_0_s
.Lgeddate_α_1140_0_s:   .string          "DEC"
#-----------------------------------------------------------------------------------------------------------------------
n00382_subscript_α:       mov              r11, 425
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
                        cmp              al, 104;                             je    n00383_var_ref_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n00384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_lit_string_α:      mov              r11, 426
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1142_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n00385_assign_var_α
.Lgeddate_α_1142_0:     .quad            .Lgeddate_α_1142_0_s
.Lgeddate_α_1142_0_s:   .string          "Dec"
#-----------------------------------------------------------------------------------------------------------------------
n00385_assign_var_α:      mov              r11, 427
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
                        cmp              al, 104;                             je    n00383_var_ref_α
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n00383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00383_var_ref_α:         mov              r11, 428
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n00386_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_lit_string_α:      mov              r11, 429
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1146_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n00387_subscript_α
.Lgeddate_α_1146_0:     .quad            .Lgeddate_α_1146_0_s
.Lgeddate_α_1146_0_s:   .string          "ABT"
#-----------------------------------------------------------------------------------------------------------------------
n00387_subscript_α:       mov              r11, 430
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
                        cmp              al, 104;                             je    n00388_var_ref_α
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n00389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_string_α:      mov              r11, 431
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1148_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n00390_assign_var_α
.Lgeddate_α_1148_0:     .quad            .Lgeddate_α_1148_0_s
.Lgeddate_α_1148_0_s:   .string          "abt"
#-----------------------------------------------------------------------------------------------------------------------
n00390_assign_var_α:      mov              r11, 432
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
                        cmp              al, 104;                             je    n00388_var_ref_α
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n00388_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_ref_α:         mov              r11, 433
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n00391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_lit_string_α:      mov              r11, 434
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1152_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n00392_subscript_α
.Lgeddate_α_1152_0:     .quad            .Lgeddate_α_1152_0_s
.Lgeddate_α_1152_0_s:   .string          "BEF"
#-----------------------------------------------------------------------------------------------------------------------
n00392_subscript_α:       mov              r11, 435
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
                        cmp              al, 104;                             je    n00393_var_ref_α
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n00394_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_string_α:      mov              r11, 436
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1154_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00395_assign_var_α
.Lgeddate_α_1154_0:     .quad            .Lgeddate_α_1154_0_s
.Lgeddate_α_1154_0_s:   .string          "bef"
#-----------------------------------------------------------------------------------------------------------------------
n00395_assign_var_α:      mov              r11, 437
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
                        cmp              al, 104;                             je    n00393_var_ref_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n00393_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_ref_α:         mov              r11, 438
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n00396_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:      mov              r11, 439
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1158_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n00397_subscript_α
.Lgeddate_α_1158_0:     .quad            .Lgeddate_α_1158_0_s
.Lgeddate_α_1158_0_s:   .string          "AFT"
#-----------------------------------------------------------------------------------------------------------------------
n00397_subscript_α:       mov              r11, 440
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
                        cmp              al, 104;                             je    n00398_var_ref_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n00399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_lit_string_α:      mov              r11, 441
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1160_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n00400_assign_var_α
.Lgeddate_α_1160_0:     .quad            .Lgeddate_α_1160_0_s
.Lgeddate_α_1160_0_s:   .string          "aft"
#-----------------------------------------------------------------------------------------------------------------------
n00400_assign_var_α:      mov              r11, 442
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
                        cmp              al, 104;                             je    n00398_var_ref_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n00398_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_var_ref_α:        mov              r11, 443
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n00401_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1164_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n00402_subscript_α
.Lgeddate_α_1164_0:     .quad            .Lgeddate_α_1164_0_s
.Lgeddate_α_1164_0_s:   .string          "CAL"
#-----------------------------------------------------------------------------------------------------------------------
n00402_subscript_α:      mov              r11, 445
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
                        cmp              al, 104;                             je    n00403_var_ref_α
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n00404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_lit_string_α:     mov              r11, 446
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1166_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00405_assign_var_α
.Lgeddate_α_1166_0:     .quad            .Lgeddate_α_1166_0_s
.Lgeddate_α_1166_0_s:   .string          "cal"
#-----------------------------------------------------------------------------------------------------------------------
n00405_assign_var_α:     mov              r11, 447
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
                        cmp              al, 104;                             je    n00403_var_ref_α
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n00403_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n00406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_lit_string_α:     mov              r11, 449
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1170_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n00407_subscript_α
.Lgeddate_α_1170_0:     .quad            .Lgeddate_α_1170_0_s
.Lgeddate_α_1170_0_s:   .string          "EST"
#-----------------------------------------------------------------------------------------------------------------------
n00407_subscript_α:      mov              r11, 450
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
                        cmp              al, 104;                             je    n00319_disjunction_α
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n00408_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_lit_string_α:     mov              r11, 451
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 3
                        mov              rax, qword ptr [rip + .Lgeddate_α_1172_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00409_assign_var_α
.Lgeddate_α_1172_0:     .quad            .Lgeddate_α_1172_0_s
.Lgeddate_α_1172_0_s:   .string          "est"
#-----------------------------------------------------------------------------------------------------------------------
n00409_assign_var_α:     mov              r11, 452
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
                        cmp              al, 104;                             je    n00319_disjunction_α
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n00410_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_conjunction_α:    mov              r11, 453
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00317_disjunction_as
n00410_conjunction_β:    mov              r11, 453;                            jmp   n00319_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00319_disjunction_α:    mov              r11, 454
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              dword ptr [rsp + 880], 0;            jmp   n00411_var_α
n00319_disjunction_as:   mov              r11, 454
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              jne   .Lgeddate_α_1176_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax;          jmp   n00412_assign_α
.Lgeddate_α_1176_0:     cmp              eax, 1;                              jne   .Lgeddate_α_1176_1
                                                                              jmp   n00412_assign_α
.Lgeddate_α_1176_1:                                                           jmp   n00412_assign_α
n00319_disjunction_β:    mov              r11, 454
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 0;                              je    n00413_proc_gen_β
                                                                              jmp   n00319_disjunction_af
n00319_disjunction_af:   mov              r11, 454
                        add              dword ptr [rsp + 880], 1
                        mov              eax, dword ptr [rsp + 880]
                        cmp              eax, 1;                              je    geddate_ω
                                                                              jmp   n00414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00412_assign_α:         mov              r11, 455
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n00414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_lit_string_α:     mov              r11, 456
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 0
                        mov              rax, qword ptr [rip + .Lgeddate_α_1178_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n00415_assign_α
.Lgeddate_α_1178_0:     .quad            .Lgeddate_α_1178_0_s
.Lgeddate_α_1178_0_s:   .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00415_assign_α:         mov              r11, 457
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n00416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_var_α:            mov              r11, 458
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 840], rax;          jmp   n00417_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00417_scan_enter_α:     mov              r11, 459
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
                        mov              r14, 0;                              jmp   n00418_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00418_lit_integer_α:    mov              r11, 460
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1184_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n00419_scan_pos_α
.Lgeddate_α_1184_0:     .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00419_scan_pos_α:       mov              r11, 461
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lgeddate_α_1186_0
                        add              rax, r15
                        add              rax, 1
.Lgeddate_α_1186_0:     cmp              rax, 1;                              jl    n00420_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00420_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00420_var_α
                        mov              qword ptr [rsp + 368], 3
                        mov              qword ptr [rsp + 376], rax;          jmp   n00421_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00420_var_α:            mov              r11, 462
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0;            jmp   n00422_lit_charset_α
n00420_var_β:            mov              r11, 462;                            jmp   n00421_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_lit_charset_α:    mov              r11, 463
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], -1
                        mov              rax, qword ptr [rip + .Lgeddate_α_1188_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00423_scan_many_α
.Lgeddate_α_1188_0:     .quad            .Lgeddate_α_1188_0_s
.Lgeddate_α_1188_0_s:   .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00423_scan_many_α:      mov              r11, 464
                        mov              eax, r14d
.Lgeddate_α_1190_0:     cmp              eax, r15d;                           jge   .Lgeddate_α_1190_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgeddate_α_1190_2]
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
                        pop              rax;                                 je    .Lgeddate_α_1190_1
                        add              eax, 1;                              jmp   .Lgeddate_α_1190_0
.Lgeddate_α_1190_1:     cmp              eax, r14d;                           je    n00424_disjunction_α
                        mov              qword ptr [rsp + 800], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 808], rcx;          jmp   n00425_scan_tab_α
n00423_scan_many_β:      mov              r11, 464;                            jmp   n00424_disjunction_α
.Lgeddate_α_1190_2:     .quad            .Lgeddate_α_1190_2_s
.Lgeddate_α_1190_2_s:   .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00425_scan_tab_α:       mov              r11, 465
                        mov              rax, qword ptr [rsp + 808]
                        cmp              rax, 1;                              jge   .Lgeddate_α_1192_0
                        add              rax, r15
                        add              rax, 1
.Lgeddate_α_1192_0:     cmp              rax, 1;                              jl    n00424_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00424_disjunction_α
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
                        mov              qword ptr [rsp + 776], rdx;          jmp   n00424_disjunction_α
n00425_scan_tab_β:       mov              r11, 465
                        mov              r14, qword ptr [rsp + 784];          jmp   n00424_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_disjunction_α:    mov              r11, 466
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n00426_lit_charset_α
n00424_disjunction_as:   mov              r11, 466
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lgeddate_α_1194_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00427_scan_tab_α
.Lgeddate_α_1194_0:     cmp              eax, 1;                              jne   .Lgeddate_α_1194_1
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00427_scan_tab_α
.Lgeddate_α_1194_1:                                                           jmp   n00427_scan_tab_α
n00424_disjunction_β:    mov              r11, 466
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n00428_scan_upto_β
                                                                              jmp   n00424_disjunction_af
n00424_disjunction_af:   mov              r11, 466
                        add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n00429_lit_integer_α
                                                                              jmp   n00430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_scan_tab_α:       mov              r11, 467
                        mov              rax, qword ptr [rsp + 680]
                        cmp              rax, 1;                              jge   .Lgeddate_α_1196_0
                        add              rax, r15
                        add              rax, 1
.Lgeddate_α_1196_0:     cmp              rax, 1;                              jl    n00424_disjunction_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00424_disjunction_β
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
                        mov              qword ptr [rsp + 648], rdx;          jmp   n00431_assign_α
n00427_scan_tab_β:       mov              r11, 467
                        mov              r14, qword ptr [rsp + 656];          jmp   n00424_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00431_assign_α:         mov              r11, 468
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n00430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_var_α:            mov              r11, 469
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 456], rax;          jmp   n00432_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_lit_string_α:     mov              r11, 470
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lgeddate_α_1200_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00433_disjunction_α
.Lgeddate_α_1200_0:     .quad            .Lgeddate_α_1200_0_s
.Lgeddate_α_1200_0_s:   .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00433_disjunction_α:    mov              r11, 471
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n00434_var_ref_α
n00433_disjunction_as:   mov              r11, 471
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Lgeddate_α_1202_0
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00435_binop_α
.Lgeddate_α_1202_0:     cmp              eax, 1;                              jne   .Lgeddate_α_1202_1
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00435_binop_α
.Lgeddate_α_1202_1:                                                           jmp   n00435_binop_α
n00433_disjunction_β:    mov              r11, 471
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n00433_disjunction_af
                                                                              jmp   n00433_disjunction_af
n00433_disjunction_af:   mov              r11, 471
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n00436_var_α
                                                                              jmp   n00418_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00435_binop_α:          mov              r11, 472
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00437_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_binop_α:          mov              r11, 473
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00438_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_assign_α:         mov              r11, 474
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00439_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_conjunction_α:    mov              r11, 475
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00418_lit_integer_α
n00439_conjunction_β:    mov              r11, 475;                            jmp   n00418_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_var_α:            mov              r11, 476
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00433_disjunction_as
n00436_var_β:            mov              r11, 476;                            jmp   n00433_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00434_var_ref_α:        mov              r11, 477
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # geddate__STATIC__ftab
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n00440_var_α
n00434_var_ref_β:        mov              r11, 477;                            jmp   n00433_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00440_var_α:            mov              r11, 478
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00441_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_subscript_α:      mov              r11, 479
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
                        cmp              al, 104;                             je    n00433_disjunction_af
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n00442_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_deref_α:          mov              r11, 480
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
                        cmp              al, 104;                             je    n00433_disjunction_af
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n00443_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_unop_test_α:      mov              r11, 481
                        mov              eax, dword ptr [rsp + 592]
                        cmp              al, 104;                             je    n00433_disjunction_af
                        cmp              eax, 0;                              je    n00433_disjunction_af
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax;          jmp   n00433_disjunction_as
n00443_unop_test_β:      mov              r11, 481;                            jmp   n00433_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00429_lit_integer_α:    mov              r11, 482
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1216_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00424_disjunction_as
n00429_lit_integer_β:    mov              r11, 482;                            jmp   n00424_disjunction_af
.Lgeddate_α_1216_0:     .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00426_lit_charset_α:    mov              r11, 483
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lgeddate_α_1217_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00428_scan_upto_α
n00426_lit_charset_β:    mov              r11, 483;                            jmp   n00424_disjunction_af
.Lgeddate_α_1217_0:     .quad            .Lgeddate_α_1217_0_s
.Lgeddate_α_1217_0_s:   .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00428_scan_upto_α:      mov              r11, 484
                        mov              qword ptr [rsp + 720], r14
.Lgeddate_α_1219_0:     mov              rax, qword ptr [rsp + 720]
                        cmp              rax, r15;                            jge   n00424_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lgeddate_α_1219_2]
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
                        pop              rax;                                 je    .Lgeddate_α_1219_1
                        mov              qword ptr [rsp + 704], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 712], rax;          jmp   n00424_disjunction_as
.Lgeddate_α_1219_1:     inc              qword ptr [rsp + 720];               jmp   .Lgeddate_α_1219_0
n00428_scan_upto_β:      mov              r11, 484
                        inc              qword ptr [rsp + 720];               jmp   .Lgeddate_α_1219_0
.Lgeddate_α_1219_2:     .quad            .Lgeddate_α_1219_2_s
.Lgeddate_α_1219_2_s:   .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00421_scan_α:           mov              r11, 485
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
                        mov              r15, qword ptr [rsp + 320];          jmp   n00444_disjunction_α
n00421_scan_β:           mov              r11, 485;                            jmp   n00444_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_disjunction_α:    mov              r11, 486
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00445_var_α
n00444_disjunction_as:   mov              r11, 486
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lgeddate_α_1223_0
                                                                              jmp   geddate_γ
.Lgeddate_α_1223_0:     cmp              eax, 1;                              jne   .Lgeddate_α_1223_1
                                                                              jmp   geddate_γ
.Lgeddate_α_1223_1:                                                           jmp   geddate_γ
n00444_disjunction_β:    mov              r11, 486
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    geddate_ω
                                                                              jmp   geddate_ω
n00444_disjunction_af:   mov              r11, 486
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00446_var_α
                                                                              jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00446_var_α:            mov              r11, 487
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00447_lit_integer_α
n00446_var_β:            mov              r11, 487;                            jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00447_lit_integer_α:    mov              r11, 488
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1226_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00448_call_icon_α
.Lgeddate_α_1226_0:     .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n00448_call_icon_α:      mov              r11, 489
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
                                                                              jmp   n00449_return_α
n00448_call_icon_β:      mov              r11, 489;                            jmp   geddate_ω
#-----------------------------------------------------------------------------------------------------------------------
n00449_return_α:         mov              r11, 490
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00445_var_α:            mov              r11, 491
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00450_unop_α
n00445_var_β:            mov              r11, 491;                            jmp   n00444_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00450_unop_α:           mov              r11, 492
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
                        mov              qword ptr [rsp + 152], rdx;          jmp   n00451_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_lit_integer_α:    mov              r11, 493
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1233_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00452_binop_test_α
.Lgeddate_α_1233_0:     .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n00452_binop_test_α:     mov              r11, 494
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 112;                             je    .Lgeddate_α_1234_0
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 112;                             je    .Lgeddate_α_1234_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 3;                               jne   .Lgeddate_α_1234_2
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 3;                               jne   .Lgeddate_α_1234_2
.Lgeddate_α_1234_1:     mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 184]
                        cmp              rax, rcx;                            jle   n00444_disjunction_af
                        mov              rcx, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rcx
                        mov              rcx, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rcx;          jmp   n00453_var_α
.Lgeddate_α_1234_0:     mov              rdi, qword ptr [rsp + 144]
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
                        test             eax, eax;                            je    .Lgeddate_α_1234_1
                        cmp              eax, 1;                              je    n00444_disjunction_af
                                                                              jmp   n00453_var_α
.Lgeddate_α_1234_2:     mov              rdi, qword ptr [rsp + 144]
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
                        test             eax, eax;                            jz    n00444_disjunction_af
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00453_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_var_α:            mov              r11, 495
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00454_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_lit_integer_α:    mov              r11, 496
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1237_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n00455_lit_integer_α
.Lgeddate_α_1237_0:     .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00455_lit_integer_α:    mov              r11, 497
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lgeddate_α_1238_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00456_subscript_α
.Lgeddate_α_1238_0:     .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00456_subscript_α:      mov              r11, 498
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
                        mov              qword ptr [rsp + 72], rdx;           jmp   n00457_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00457_return_α:         mov              r11, 499
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   geddate_γ
#-----------------------------------------------------------------------------------------------------------------------
n00411_var_α:            mov              r11, 500
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n00458_lit_string_α
n00411_var_β:            mov              r11, 500;                            jmp   n00319_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00458_lit_string_α:     mov              r11, 501
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Lgeddate_α_1243_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n00413_proc_gen_α
.Lgeddate_α_1243_0:     .quad            .Lgeddate_α_1243_0_s
.Lgeddate_α_1243_0_s:   .string          "DATE"
#-----------------------------------------------------------------------------------------------------------------------
n00413_proc_gen_α:       mov              r11, 502
                        mov              qword ptr [rsp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgeddate_α_1245_200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lgeddate_α_1245_201
.Lgeddate_α_1245_200:   mov              edi, 0
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
.Lgeddate_α_1245_201:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lgeddate_α_1245_202
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lgeddate_α_1245_203
.Lgeddate_α_1245_202:   mov              edi, 1
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
.Lgeddate_α_1245_203:   lea              rax, [rip + .Lgeddate_α_1245_7]
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
                        test             rax, rax;                            je    .Lgeddate_α_1245_1
                        lea              rcx, [rip + .Lgeddate_α_1245_4]
                        push             rcx
                        lea              rcx, [rip + .Lgeddate_α_1245_3]
                        push             rcx
                        lea              rdx, [rip + .Lgeddate_α_1245_4];     jmp   rax
.Lgeddate_α_1245_3:     add              rsp, 16
                        mov              qword ptr [rsp + 1016], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lgeddate_α_1245_5
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgeddate_α_1245_2
.Lgeddate_α_1245_5:     call             rt_gen_spine_pass_γ@PLT;             jmp   .Lgeddate_α_1245_2
.Lgeddate_α_1245_4:     add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lgeddate_α_1245_6
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lgeddate_α_1245_2
.Lgeddate_α_1245_6:     call             rt_gen_spine_pass_ω@PLT;             jmp   .Lgeddate_α_1245_2
.Lgeddate_α_1245_1:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lgeddate_α_1245_2:     mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lgeddate_α_1245_29
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
.Lgeddate_α_1245_29:    mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00319_disjunction_af
                                                                              jmp   n00459_lit_charset_α
n00413_proc_gen_β:       mov              r11, 502
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1016];         jmp   qword ptr [rsp]
.Lgeddate_α_1245_7:     add              rsp, 8
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n00319_disjunction_af
                                                                              jmp   n00459_lit_charset_α
.Lgeddate_β_1245_0:     .quad            .Lgeddate_β_1245_0_s
.Lgeddate_β_1245_0_s:   .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00459_lit_charset_α:    mov              r11, 503
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], -1
                        mov              rax, qword ptr [rip + .Lgeddate_α_1246_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n00460_call_icon_α
.Lgeddate_α_1246_0:     .quad            .Lgeddate_α_1246_0_s
.Lgeddate_α_1246_0_s:   .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00460_call_icon_α:      mov              r11, 504
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
                        cmp              al, 104;                             je    n00413_proc_gen_β
                                                                              jmp   n00319_disjunction_as
n00460_call_icon_β:      mov              r11, 504;                            jmp   n00413_proc_gen_β
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
                        lea              rcx, [rip + .Lgeddate_α_1249_3]
                        push             rcx
                        lea              rcx, [rip + .Lgeddate_α_1249_2]
                        push             rcx;                                 jmp   FN__geddate
.Lgeddate_α_1249_2:     add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lgeddate_α_1249_3:     add              rsp, 24
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
n00461_disjunction_α:    mov              r11, 505
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              dword ptr [rsp + 4464], 0;           jmp   n00462_var_α
n00461_disjunction_as:   mov              r11, 505
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 0;                              jne   .Lmain_α_1435_0
                        mov              rax, qword ptr [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4488]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n00463_var_α
.Lmain_α_1435_0:        cmp              eax, 1;                              jne   .Lmain_α_1435_1
                        mov              rax, qword ptr [rsp + 4848]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4856]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n00463_var_α
.Lmain_α_1435_1:                                                              jmp   n00463_var_α
n00461_disjunction_β:    mov              r11, 505
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 0;                              je    n00464_disjunction_β
                                                                              jmp   n00463_var_α
n00461_disjunction_af:   mov              r11, 505
                        add              dword ptr [rsp + 4464], 1
                        mov              eax, dword ptr [rsp + 4464]
                        cmp              eax, 1;                              je    n00465_kw_icon_α
                                                                              jmp   n00463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_var_α:            mov              r11, 506
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n00466_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_call_proc_staged_α:
                        mov              r11, 507
                        lea              rsi, [rsp + 4432]
                        call             gedload_dcα;                         jmp   .Lmain_α_1439_2
.Lmain_α_1439_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1439_29
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
.Lmain_α_1439_29:       mov              qword ptr [rsp + 4384], rax
                        mov              qword ptr [rsp + 4392], rdx
                        cmp              al, 104;                             je    n00467_var_α
                                                                              jmp   n00468_assign_α
n00466_call_proc_staged_β:
                        mov              r11, 507;                            jmp   n00467_var_α
.Lmain_β_1439_0:        .quad            .Lmain_β_1439_0_s
.Lmain_β_1439_0_s:      .string          "gedload"
#-----------------------------------------------------------------------------------------------------------------------
n00468_assign_α:         mov              r11, 508
                        mov              rax, qword ptr [rsp + 4384]
                        mov              rdx, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx;         jmp   n00467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_var_α:            mov              r11, 509
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n00469_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_call_icon_α:      mov              r11, 510
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
                        cmp              al, 104;                             je    n00470_make_list_α
                                                                              jmp   n00470_make_list_α
n00469_call_icon_β:      mov              r11, 510;                            jmp   n00470_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00470_make_list_α:      mov              r11, 511
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
                        mov              qword ptr [rsp + 4312], rdx;         jmp   n00471_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00471_assign_α:         mov              r11, 512
                        mov              rax, qword ptr [rsp + 4304]
                        mov              rdx, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n00472_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00472_call_icon_α:      mov              r11, 513
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
                        cmp              al, 104;                             je    n00473_var_α
                                                                              jmp   n00474_assign_α
n00472_call_icon_β:      mov              r11, 513;                            jmp   n00473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_assign_α:         mov              r11, 514
                        mov              rax, qword ptr [rsp + 4272]
                        mov              rdx, qword ptr [rsp + 4280]
                        mov              qword ptr [r9 + 0], rax              # ptab
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_var_α:            mov              r11, 515
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 3888], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n00475_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00475_field_get_α:      mov              r11, 516
                        mov              rdi, qword ptr [rip + .Lmain_α_1453_0]
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
                        cmp              al, 104;                             je    n00476_var_α
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n00477_iterate_α
.Lmain_α_1453_0:        .quad            .Lmain_α_1453_0_s
.Lmain_α_1453_0_s:      .string          "ind"
#-----------------------------------------------------------------------------------------------------------------------
n00477_iterate_α:        mov              r11, 517
                        mov              qword ptr [rsp + 3856], 0
.Lmain_α_1455_0:        mov              rdi, qword ptr [rsp + 3872]
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
                        cmp              al, 104;                             je    n00476_var_α
                                                                              jmp   n00478_assign_α
n00477_iterate_β:        mov              r11, 517
                        inc              qword ptr [rsp + 3856];              jmp   .Lmain_α_1455_0
#-----------------------------------------------------------------------------------------------------------------------
n00478_assign_α:         mov              r11, 518
                        mov              rax, qword ptr [rsp + 3840]
                        mov              rdx, qword ptr [rsp + 3848]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00479_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_bound_α:          mov              r11, 519
                        mov              qword ptr [rsp + 3904], rsp;         jmp   n00480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_var_α:            mov              r11, 520
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n00481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_var_ref_α:        mov              r11, 521
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # ptab
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx;         jmp   n00482_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_var_α:            mov              r11, 522
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n00483_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_subscript_α:      mov              r11, 523
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
                        cmp              al, 104;                             je    n00484_unmark_α
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx;         jmp   n00485_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_lit_integer_α:    mov              r11, 524
                        mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1466_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n00486_var_α
.Lmain_α_1466_0:        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00486_var_α:            mov              r11, 525
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n00487_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_call_proc_staged_α:
                        mov              r11, 526
                        lea              rsi, [rsp + 4240]
                        call             sortkey_dcα;                         jmp   .Lmain_α_1470_2
.Lmain_α_1470_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1470_29
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
.Lmain_α_1470_29:       mov              qword ptr [rsp + 4192], rax
                        mov              qword ptr [rsp + 4200], rdx
                        cmp              al, 104;                             je    n00484_unmark_α
                                                                              jmp   n00488_var_α
n00487_call_proc_staged_β:
                        mov              r11, 526;                            jmp   n00484_unmark_α
.Lmain_β_1470_0:        .quad            .Lmain_β_1470_0_s
.Lmain_β_1470_0_s:      .string          "sortkey"
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_α:            mov              r11, 527
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n00489_call_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_call_α:           mov              r11, 528
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
                        cmp              al, 104;                             je    n00484_unmark_α
                                                                              jmp   n00490_assign_var_α
n00489_call_β:           mov              r11, 528;                            jmp   n00484_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_assign_var_α:     mov              r11, 529
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
                        cmp              al, 104;                             je    n00484_unmark_α
                        mov              qword ptr [rsp + 4080], rax
                        mov              qword ptr [rsp + 4088], rdx;         jmp   n00491_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_call_icon_α:      mov              r11, 530
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
                        cmp              al, 104;                             je    n00484_unmark_α
                                                                              jmp   n00484_unmark_α
n00491_call_icon_β:      mov              r11, 530;                            jmp   n00484_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_unmark_α:         mov              r11, 531
                        mov              rsp, qword ptr [rsp + 3904];         jmp   n00477_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00476_var_α:            mov              r11, 532
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 3816], rax;         jmp   n00492_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_lit_integer_α:    mov              r11, 533
                        mov              qword ptr [rsp + 3824], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1482_0]
                        mov              qword ptr [rsp + 3832], rax;         jmp   n00493_call_icon_α
.Lmain_α_1482_0:        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00493_call_icon_α:      mov              r11, 534
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
                        cmp              al, 104;                             je    n00494_lit_integer_α
                                                                              jmp   n00495_assign_α
n00493_call_icon_β:      mov              r11, 534;                            jmp   n00494_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_assign_α:         mov              r11, 535
                        mov              rax, qword ptr [rsp + 3744]
                        mov              rdx, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx;         jmp   n00494_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_lit_integer_α:    mov              r11, 536
                        mov              qword ptr [rsp + 3728], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1486_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n00496_assign_α
.Lmain_α_1486_0:        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00496_assign_α:         mov              r11, 537
                        mov              rax, qword ptr [rsp + 3728]
                        mov              rdx, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx;         jmp   n00497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_var_α:            mov              r11, 538
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n00498_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_iterate_α:        mov              r11, 539
                        mov              qword ptr [rsp + 3600], 0
.Lmain_α_1491_0:        mov              rdi, qword ptr [rsp + 3616]
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
                        cmp              al, 104;                             je    n00499_var_α
                                                                              jmp   n00500_field_var_α
n00498_iterate_β:        mov              r11, 539
                        inc              qword ptr [rsp + 3600];              jmp   .Lmain_α_1491_0
#-----------------------------------------------------------------------------------------------------------------------
n00500_field_var_α:      mov              r11, 540
                        mov              rdi, qword ptr [rip + .Lmain_α_1492_0]
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
                        cmp              al, 104;                             je    n00499_var_α
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n00501_var_α
.Lmain_α_1492_0:        .quad            .Lmain_α_1492_0_s
.Lmain_α_1492_0_s:      .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00501_var_α:            mov              r11, 541
                        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 3704], rax;         jmp   n00502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_lit_integer_α:    mov              r11, 542
                        mov              qword ptr [rsp + 3712], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1495_0]
                        mov              qword ptr [rsp + 3720], rax;         jmp   n00503_coerce_numeric_α
.Lmain_α_1495_0:        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00503_coerce_numeric_α: mov              r11, 543
                        mov              eax, dword ptr [rsp + 4976]
                        cmp              al, 5;                               je    .Lmain_α_1497_1
                        cmp              al, 3;                               jne   .Lmain_α_1497_0
                        mov              eax, dword ptr [rsp + 3712]
                        cmp              al, 3;                               jne   .Lmain_α_1497_0
.Lmain_α_1497_1:        mov              rax, qword ptr [rsp + 4976]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 4984]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n00504_binop_α
.Lmain_α_1497_0:        lea              rdi, [rsp + 4976]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00504_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00504_binop_α:          mov              r11, 544
                        mov              eax, dword ptr [rsp + 3680]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_1498_2
                        mov              rax, qword ptr [rsp + 3688]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 3664], 3
                        mov              qword ptr [rsp + 3672], rax;         jmp   .Lmain_α_1498_7
.Lmain_α_1498_2:        and              edx, 1;                              jz    .Lmain_α_1498_0
                        mov              rsi, qword ptr [rsp + 3688]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_1498_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_1498_4
.Lmain_α_1498_3:        movq             xmm0, rsi
.Lmain_α_1498_4:        cmp              cl, 5;                               je    .Lmain_α_1498_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_1498_6
.Lmain_α_1498_5:        movq             xmm1, rdi
.Lmain_α_1498_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 3664], 5
                        mov              qword ptr [rsp + 3672], rax
.Lmain_α_1498_7:                                                              jmp   n00505_assign_α
.Lmain_α_1498_0:        mov              rdi, qword ptr [rsp + 3680]
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
                        cmp              al, 104;                             je    n00498_iterate_β
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx;         jmp   n00505_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_assign_α:         mov              r11, 545
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 4976], rax
                        mov              qword ptr [rsp + 4984], rdx
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n00506_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_assign_var_α:     mov              r11, 546
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
                        cmp              al, 104;                             je    n00499_var_α
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n00498_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00499_var_α:            mov              r11, 547
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 88], rax;           jmp   n00507_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_iterate_α:        mov              r11, 548
                        mov              qword ptr [rsp + 64], 0
.Lmain_α_1504_0:        mov              rdi, qword ptr [rsp + 80]
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
                                                                              jmp   n00508_assign_α
n00507_iterate_β:        mov              r11, 548
                        inc              qword ptr [rsp + 64];                jmp   .Lmain_α_1504_0
#-----------------------------------------------------------------------------------------------------------------------
n00508_assign_α:         mov              r11, 549
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx;         jmp   n00509_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00509_bound_α:          mov              r11, 550
                        mov              qword ptr [rsp + 96], rsp;           jmp   n00510_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00510_call_icon_α:      mov              r11, 551
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
                        cmp              al, 104;                             je    n00511_lit_string_α
                                                                              jmp   n00511_lit_string_α
n00510_call_icon_β:      mov              r11, 551;                            jmp   n00511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00511_lit_string_α:     mov              r11, 552
                        mov              qword ptr [rsp + 3392], 2            # result
                        mov              dword ptr [rsp + 3396], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1510_0]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n00512_var_α
.Lmain_α_1510_0:        .quad            .Lmain_α_1510_0_s
.Lmain_α_1510_0_s:      .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n00512_var_α:            mov              r11, 553
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n00513_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_field_get_α:      mov              r11, 554
                        mov              rdi, qword ptr [rip + .Lmain_α_1513_0]
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
                        cmp              al, 104;                             je    n00514_disjunction_α
                        mov              qword ptr [rsp + 3408], rax
                        mov              qword ptr [rsp + 3416], rdx;         jmp   n00515_lit_string_α
.Lmain_α_1513_0:        .quad            .Lmain_α_1513_0_s
.Lmain_α_1513_0_s:      .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00515_lit_string_α:     mov              r11, 555
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 2
                        mov              rax, qword ptr [rip + .Lmain_α_1514_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n00516_var_α
.Lmain_α_1514_0:        .quad            .Lmain_α_1514_0_s
.Lmain_α_1514_0_s:      .string          "] "
#-----------------------------------------------------------------------------------------------------------------------
n00516_var_α:            mov              r11, 556
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n00517_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_field_get_α:      mov              r11, 557
                        mov              rdi, qword ptr [rip + .Lmain_α_1517_0]
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
                        cmp              al, 104;                             je    n00514_disjunction_α
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx;         jmp   n00518_call_proc_staged_α
.Lmain_α_1517_0:        .quad            .Lmain_α_1517_0_s
.Lmain_α_1517_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00518_call_proc_staged_α:
                        mov              r11, 558
                        lea              rsi, [rsp + 3504]
                        call             gedlnf_dcα;                          jmp   .Lmain_α_1519_2
.Lmain_α_1519_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1519_29
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
.Lmain_α_1519_29:       mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    n00514_disjunction_α
                                                                              jmp   n00519_call_icon_α
n00518_call_proc_staged_β:
                        mov              r11, 558;                            jmp   n00514_disjunction_α
.Lmain_β_1519_0:        .quad            .Lmain_β_1519_0_s
.Lmain_β_1519_0_s:      .string          "gedlnf"
#-----------------------------------------------------------------------------------------------------------------------
n00519_call_icon_α:      mov              r11, 559
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
                        cmp              al, 104;                             je    n00514_disjunction_α
                                                                              jmp   n00514_disjunction_α
n00519_call_icon_β:      mov              r11, 559;                            jmp   n00514_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_disjunction_α:    mov              r11, 560
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              dword ptr [rsp + 2752], 0;           jmp   n00520_var_α
n00514_disjunction_as:   mov              r11, 560
                        mov              eax, dword ptr [rsp + 2752]
                        cmp              eax, 0;                              jne   .Lmain_α_1523_0
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n00521_lit_string_α
.Lmain_α_1523_0:                                                              jmp   n00521_lit_string_α
n00514_disjunction_β:    mov              r11, 560
                        mov              eax, dword ptr [rsp + 2752];         jmp   n00522_proc_gen_β
n00514_disjunction_af:   mov              r11, 560
                        add              dword ptr [rsp + 2752], 1
                        mov              eax, dword ptr [rsp + 2752];         jmp   n00521_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_var_α:            mov              r11, 561
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 3272], rax;         jmp   n00523_field_get_α
n00520_var_β:            mov              r11, 561;                            jmp   n00514_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00523_field_get_α:      mov              r11, 562
                        mov              rdi, qword ptr [rip + .Lmain_α_1526_0]
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
                        cmp              al, 104;                             je    n00514_disjunction_af
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n00524_lit_string_α
.Lmain_α_1526_0:        .quad            .Lmain_α_1526_0_s
.Lmain_α_1526_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00524_lit_string_α:     mov              r11, 563
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1527_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n00525_proc_gen_α
.Lmain_α_1527_0:        .quad            .Lmain_α_1527_0_s
.Lmain_α_1527_0_s:      .string          "FAMC"
#-----------------------------------------------------------------------------------------------------------------------
n00525_proc_gen_α:       mov              r11, 564
                        mov              qword ptr [rsp + 3216], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1529_200
                        mov              rax, qword ptr [rsp + 3248]
                        mov              rdx, qword ptr [rsp + 3256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1529_201
.Lmain_α_1529_200:      mov              edi, 0
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
.Lmain_α_1529_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1529_202
                        mov              rax, qword ptr [rsp + 3280]
                        mov              rdx, qword ptr [rsp + 3288]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1529_203
.Lmain_α_1529_202:      mov              edi, 1
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
.Lmain_α_1529_203:      lea              rax, [rip + .Lmain_α_1529_7]
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
                        test             rax, rax;                            je    .Lmain_α_1529_1
                        lea              rcx, [rip + .Lmain_α_1529_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1529_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1529_4];        jmp   rax
.Lmain_α_1529_3:        add              rsp, 16
                        mov              qword ptr [rsp + 3224], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3216]
                        test             rax, rax;                            jne   .Lmain_α_1529_5
                        mov              qword ptr [rsp + 3216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1529_2
.Lmain_α_1529_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1529_2
.Lmain_α_1529_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3216]
                        test             rax, rax;                            jne   .Lmain_α_1529_6
                        mov              qword ptr [rsp + 3216], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1529_2
.Lmain_α_1529_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1529_2
.Lmain_α_1529_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1529_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1529_29
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
.Lmain_α_1529_29:       mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n00514_disjunction_af
                                                                              jmp   n00526_assign_α
n00525_proc_gen_β:       mov              r11, 564
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3224];         jmp   qword ptr [rsp]
.Lmain_α_1529_7:        add              rsp, 8
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n00514_disjunction_af
                                                                              jmp   n00526_assign_α
.Lmain_β_1529_0:        .quad            .Lmain_β_1529_0_s
.Lmain_β_1529_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00526_assign_α:         mov              r11, 565
                        mov              rax, qword ptr [rsp + 3168]
                        mov              rdx, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx;         jmp   n00527_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00527_lit_string_α:     mov              r11, 566
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1531_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n00528_var_α
.Lmain_α_1531_0:        .quad            .Lmain_α_1531_0_s
.Lmain_α_1531_0_s:      .string          "father"
#-----------------------------------------------------------------------------------------------------------------------
n00528_var_α:            mov              r11, 567
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n00529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00529_lit_string_α:     mov              r11, 568
                        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1534_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n00530_proc_gen_α
.Lmain_α_1534_0:        .quad            .Lmain_α_1534_0_s
.Lmain_α_1534_0_s:      .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00530_proc_gen_α:       mov              r11, 569
                        mov              qword ptr [rsp + 3104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1536_200
                        mov              rax, qword ptr [rsp + 3136]
                        mov              rdx, qword ptr [rsp + 3144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1536_201
.Lmain_α_1536_200:      mov              edi, 0
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
.Lmain_α_1536_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1536_202
                        mov              rax, qword ptr [rsp + 3152]
                        mov              rdx, qword ptr [rsp + 3160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1536_203
.Lmain_α_1536_202:      mov              edi, 1
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
.Lmain_α_1536_203:      lea              rax, [rip + .Lmain_α_1536_7]
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
                        test             rax, rax;                            je    .Lmain_α_1536_1
                        lea              rcx, [rip + .Lmain_α_1536_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1536_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1536_4];        jmp   rax
.Lmain_α_1536_3:        add              rsp, 16
                        mov              qword ptr [rsp + 3112], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lmain_α_1536_5
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1536_2
.Lmain_α_1536_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1536_2
.Lmain_α_1536_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 3104]
                        test             rax, rax;                            jne   .Lmain_α_1536_6
                        mov              qword ptr [rsp + 3104], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1536_2
.Lmain_α_1536_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1536_2
.Lmain_α_1536_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1536_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1536_29
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
.Lmain_α_1536_29:       mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n00531_lit_string_α
                                                                              jmp   n00532_call_proc_staged_α
n00530_proc_gen_β:       mov              r11, 569
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 3112];         jmp   qword ptr [rsp]
.Lmain_α_1536_7:        add              rsp, 8
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n00531_lit_string_α
                                                                              jmp   n00532_call_proc_staged_α
.Lmain_β_1536_0:        .quad            .Lmain_β_1536_0_s
.Lmain_β_1536_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00532_call_proc_staged_α:
                        mov              r11, 570
                        lea              rsi, [rsp + 3040]
                        lea              rdx, [rsp + 3056]
                        call             refto_dcα;                           jmp   .Lmain_α_1538_2
.Lmain_α_1538_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1538_29
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
.Lmain_α_1538_29:       mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n00530_proc_gen_β
                                                                              jmp   n00531_lit_string_α
n00532_call_proc_staged_β:
                        mov              r11, 570;                            jmp   n00530_proc_gen_β
.Lmain_β_1538_0:        .quad            .Lmain_β_1538_0_s
.Lmain_β_1538_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00531_lit_string_α:     mov              r11, 571
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1539_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n00533_var_α
.Lmain_α_1539_0:        .quad            .Lmain_α_1539_0_s
.Lmain_α_1539_0_s:      .string          "mother"
#-----------------------------------------------------------------------------------------------------------------------
n00533_var_α:            mov              r11, 572
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n00534_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00534_lit_string_α:     mov              r11, 573
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1542_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n00522_proc_gen_α
.Lmain_α_1542_0:        .quad            .Lmain_α_1542_0_s
.Lmain_α_1542_0_s:      .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00522_proc_gen_α:       mov              r11, 574
                        mov              qword ptr [rsp + 2912], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1544_200
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1544_201
.Lmain_α_1544_200:      mov              edi, 0
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
.Lmain_α_1544_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1544_202
                        mov              rax, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1544_203
.Lmain_α_1544_202:      mov              edi, 1
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
.Lmain_α_1544_203:      lea              rax, [rip + .Lmain_α_1544_7]
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
                        test             rax, rax;                            je    .Lmain_α_1544_1
                        lea              rcx, [rip + .Lmain_α_1544_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1544_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1544_4];        jmp   rax
.Lmain_α_1544_3:        add              rsp, 16
                        mov              qword ptr [rsp + 2920], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lmain_α_1544_5
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1544_2
.Lmain_α_1544_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1544_2
.Lmain_α_1544_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2912]
                        test             rax, rax;                            jne   .Lmain_α_1544_6
                        mov              qword ptr [rsp + 2912], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1544_2
.Lmain_α_1544_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1544_2
.Lmain_α_1544_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1544_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1544_29
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
.Lmain_α_1544_29:       mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n00521_lit_string_α
                                                                              jmp   n00535_call_proc_staged_α
n00522_proc_gen_β:       mov              r11, 574
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2920];         jmp   qword ptr [rsp]
.Lmain_α_1544_7:        add              rsp, 8
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n00521_lit_string_α
                                                                              jmp   n00535_call_proc_staged_α
.Lmain_β_1544_0:        .quad            .Lmain_β_1544_0_s
.Lmain_β_1544_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00535_call_proc_staged_α:
                        mov              r11, 575
                        lea              rsi, [rsp + 2848]
                        lea              rdx, [rsp + 2864]
                        call             refto_dcα;                           jmp   .Lmain_α_1546_2
.Lmain_α_1546_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1546_29
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
.Lmain_α_1546_29:       mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n00522_proc_gen_β
                                                                              jmp   n00536_conjunction_α
n00535_call_proc_staged_β:
                        mov              r11, 575;                            jmp   n00522_proc_gen_β
.Lmain_β_1546_0:        .quad            .Lmain_β_1546_0_s
.Lmain_β_1546_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00536_conjunction_α:    mov              r11, 576
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n00514_disjunction_as
n00536_conjunction_β:    mov              r11, 576;                            jmp   n00521_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_lit_string_α:     mov              r11, 577
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 2
                        mov              rax, qword ptr [rip + .Lmain_α_1548_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n00537_var_α
.Lmain_α_1548_0:        .quad            .Lmain_α_1548_0_s
.Lmain_α_1548_0_s:      .string          "b."
#-----------------------------------------------------------------------------------------------------------------------
n00537_var_α:            mov              r11, 578
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n00538_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00538_field_get_α:      mov              r11, 579
                        mov              rdi, qword ptr [rip + .Lmain_α_1551_0]
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
                        cmp              al, 104;                             je    n00539_kw_icon_α
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n00540_lit_string_α
.Lmain_α_1551_0:        .quad            .Lmain_α_1551_0_s
.Lmain_α_1551_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00540_lit_string_α:     mov              r11, 580
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1552_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n00541_proc_gen_α
.Lmain_α_1552_0:        .quad            .Lmain_α_1552_0_s
.Lmain_α_1552_0_s:      .string          "BIRT"
#-----------------------------------------------------------------------------------------------------------------------
n00541_proc_gen_α:       mov              r11, 581
                        mov              qword ptr [rsp + 2656], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1554_200
                        mov              rax, qword ptr [rsp + 2688]
                        mov              rdx, qword ptr [rsp + 2696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1554_201
.Lmain_α_1554_200:      mov              edi, 0
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
.Lmain_α_1554_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1554_202
                        mov              rax, qword ptr [rsp + 2720]
                        mov              rdx, qword ptr [rsp + 2728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1554_203
.Lmain_α_1554_202:      mov              edi, 1
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
.Lmain_α_1554_203:      lea              rax, [rip + .Lmain_α_1554_7]
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
                        test             rax, rax;                            je    .Lmain_α_1554_1
                        lea              rcx, [rip + .Lmain_α_1554_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1554_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1554_4];        jmp   rax
.Lmain_α_1554_3:        add              rsp, 16
                        mov              qword ptr [rsp + 2664], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lmain_α_1554_5
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1554_2
.Lmain_α_1554_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1554_2
.Lmain_α_1554_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2656]
                        test             rax, rax;                            jne   .Lmain_α_1554_6
                        mov              qword ptr [rsp + 2656], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1554_2
.Lmain_α_1554_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1554_2
.Lmain_α_1554_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1554_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1554_29
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
.Lmain_α_1554_29:       mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00539_kw_icon_α
                                                                              jmp   n00542_call_proc_staged_α
n00541_proc_gen_β:       mov              r11, 581
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2664];         jmp   qword ptr [rsp]
.Lmain_α_1554_7:        add              rsp, 8
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n00539_kw_icon_α
                                                                              jmp   n00542_call_proc_staged_α
.Lmain_β_1554_0:        .quad            .Lmain_β_1554_0_s
.Lmain_β_1554_0_s:      .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00542_call_proc_staged_α:
                        mov              r11, 582
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             event_dcα;                           jmp   .Lmain_α_1556_2
.Lmain_α_1556_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1556_29
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
.Lmain_α_1556_29:       mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n00541_proc_gen_β
                                                                              jmp   n00539_kw_icon_α
n00542_call_proc_staged_β:
                        mov              r11, 582;                            jmp   n00541_proc_gen_β
.Lmain_β_1556_0:        .quad            .Lmain_β_1556_0_s
.Lmain_β_1556_0_s:      .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00539_kw_icon_α:        mov              r11, 583
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0;           jmp   n00543_assign_α
n00539_kw_icon_β:        mov              r11, 583;                            jmp   n00544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_assign_α:         mov              r11, 584
                        mov              rax, qword ptr [rsp + 2496]
                        mov              rdx, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_var_α:            mov              r11, 585
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 472], rax;          jmp   n00545_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_field_get_α:      mov              r11, 586
                        mov              rdi, qword ptr [rip + .Lmain_α_1561_0]
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
                        cmp              al, 104;                             je    n00546_lit_string_α
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n00547_lit_string_α
.Lmain_α_1561_0:        .quad            .Lmain_α_1561_0_s
.Lmain_α_1561_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00547_lit_string_α:     mov              r11, 587
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1562_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00548_proc_gen_α
.Lmain_α_1562_0:        .quad            .Lmain_α_1562_0_s
.Lmain_α_1562_0_s:      .string          "FAMS"
#-----------------------------------------------------------------------------------------------------------------------
n00548_proc_gen_α:       mov              r11, 588
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1564_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1564_201
.Lmain_α_1564_200:      mov              edi, 0
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
.Lmain_α_1564_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1564_202
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1564_203
.Lmain_α_1564_202:      mov              edi, 1
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
.Lmain_α_1564_203:      lea              rax, [rip + .Lmain_α_1564_7]
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
                        test             rax, rax;                            je    .Lmain_α_1564_1
                        lea              rcx, [rip + .Lmain_α_1564_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1564_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1564_4];        jmp   rax
.Lmain_α_1564_3:        add              rsp, 16
                        mov              qword ptr [rsp + 424], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lmain_α_1564_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1564_2
.Lmain_α_1564_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1564_2
.Lmain_α_1564_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lmain_α_1564_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1564_2
.Lmain_α_1564_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1564_2
.Lmain_α_1564_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1564_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1564_29
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
.Lmain_α_1564_29:       mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00546_lit_string_α
                                                                              jmp   n00549_assign_α
n00548_proc_gen_β:       mov              r11, 588
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 424];          jmp   qword ptr [rsp]
.Lmain_α_1564_7:        add              rsp, 8
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n00546_lit_string_α
                                                                              jmp   n00549_assign_α
.Lmain_β_1564_0:        .quad            .Lmain_β_1564_0_s
.Lmain_β_1564_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00549_assign_α:         mov              r11, 589
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx;         jmp   n00550_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_bound_α:          mov              r11, 590
                        mov              qword ptr [rsp + 496], rsp;          jmp   n00551_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:     mov              r11, 591
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 2
                        mov              rax, qword ptr [rip + .Lmain_α_1568_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n00552_var_α
.Lmain_α_1568_0:        .quad            .Lmain_α_1568_0_s
.Lmain_α_1568_0_s:      .string          "m."
#-----------------------------------------------------------------------------------------------------------------------
n00552_var_α:            mov              r11, 592
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n00553_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_lit_string_α:     mov              r11, 593
                        mov              qword ptr [rsp + 2480], 2            # result
                        mov              dword ptr [rsp + 2484], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1571_0]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n00554_proc_gen_α
.Lmain_α_1571_0:        .quad            .Lmain_α_1571_0_s
.Lmain_α_1571_0_s:      .string          "MARR"
#-----------------------------------------------------------------------------------------------------------------------
n00554_proc_gen_α:       mov              r11, 594
                        mov              qword ptr [rsp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1573_200
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1573_201
.Lmain_α_1573_200:      mov              edi, 0
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
.Lmain_α_1573_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1573_202
                        mov              rax, qword ptr [rsp + 2480]
                        mov              rdx, qword ptr [rsp + 2488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1573_203
.Lmain_α_1573_202:      mov              edi, 1
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
.Lmain_α_1573_203:      lea              rax, [rip + .Lmain_α_1573_7]
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
                        test             rax, rax;                            je    .Lmain_α_1573_1
                        lea              rcx, [rip + .Lmain_α_1573_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1573_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1573_4];        jmp   rax
.Lmain_α_1573_3:        add              rsp, 16
                        mov              qword ptr [rsp + 2440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2432]
                        test             rax, rax;                            jne   .Lmain_α_1573_5
                        mov              qword ptr [rsp + 2432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1573_2
.Lmain_α_1573_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1573_2
.Lmain_α_1573_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2432]
                        test             rax, rax;                            jne   .Lmain_α_1573_6
                        mov              qword ptr [rsp + 2432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1573_2
.Lmain_α_1573_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1573_2
.Lmain_α_1573_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1573_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1573_29
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
.Lmain_α_1573_29:       mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n00555_lit_string_α
                                                                              jmp   n00556_call_proc_staged_α
n00554_proc_gen_β:       mov              r11, 594
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2440];         jmp   qword ptr [rsp]
.Lmain_α_1573_7:        add              rsp, 8
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n00555_lit_string_α
                                                                              jmp   n00556_call_proc_staged_α
.Lmain_β_1573_0:        .quad            .Lmain_β_1573_0_s
.Lmain_β_1573_0_s:      .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00556_call_proc_staged_α:
                        mov              r11, 595
                        lea              rsi, [rsp + 2368]
                        lea              rdx, [rsp + 2384]
                        call             event_dcα;                           jmp   .Lmain_α_1575_2
.Lmain_α_1575_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1575_29
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
.Lmain_α_1575_29:       mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n00554_proc_gen_β
                                                                              jmp   n00557_assign_α
n00556_call_proc_staged_β:
                        mov              r11, 595;                            jmp   n00554_proc_gen_β
.Lmain_β_1575_0:        .quad            .Lmain_β_1575_0_s
.Lmain_β_1575_0_s:      .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00557_assign_α:         mov              r11, 596
                        mov              rax, qword ptr [rsp + 2304]
                        mov              rdx, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00555_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_lit_string_α:     mov              r11, 597
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1577_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n00558_var_α
.Lmain_α_1577_0:        .quad            .Lmain_α_1577_0_s
.Lmain_α_1577_0_s:      .string          "  husb"
#-----------------------------------------------------------------------------------------------------------------------
n00558_var_α:            mov              r11, 598
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n00559_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_field_get_α:      mov              r11, 599
                        mov              rdi, qword ptr [rip + .Lmain_α_1580_0]
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
                        cmp              al, 104;                             je    n00560_lit_string_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n00561_var_α
.Lmain_α_1580_0:        .quad            .Lmain_α_1580_0_s
.Lmain_α_1580_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00561_var_α:            mov              r11, 600
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n00562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_lit_string_α:     mov              r11, 601
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1583_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n00563_proc_gen_α
.Lmain_α_1583_0:        .quad            .Lmain_α_1583_0_s
.Lmain_α_1583_0_s:      .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00563_proc_gen_α:       mov              r11, 602
                        mov              qword ptr [rsp + 2240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1585_200
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1585_201
.Lmain_α_1585_200:      mov              edi, 0
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
.Lmain_α_1585_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1585_202
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1585_203
.Lmain_α_1585_202:      mov              edi, 1
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
.Lmain_α_1585_203:      lea              rax, [rip + .Lmain_α_1585_7]
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
                        test             rax, rax;                            je    .Lmain_α_1585_1
                        lea              rcx, [rip + .Lmain_α_1585_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1585_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1585_4];        jmp   rax
.Lmain_α_1585_3:        add              rsp, 16
                        mov              qword ptr [rsp + 2248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2240]
                        test             rax, rax;                            jne   .Lmain_α_1585_5
                        mov              qword ptr [rsp + 2240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1585_2
.Lmain_α_1585_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1585_2
.Lmain_α_1585_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2240]
                        test             rax, rax;                            jne   .Lmain_α_1585_6
                        mov              qword ptr [rsp + 2240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1585_2
.Lmain_α_1585_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1585_2
.Lmain_α_1585_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1585_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1585_29
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
.Lmain_α_1585_29:       mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n00560_lit_string_α
                                                                              jmp   n00564_binop_test_α
n00563_proc_gen_β:       mov              r11, 602
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2248];         jmp   qword ptr [rsp]
.Lmain_α_1585_7:        add              rsp, 8
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n00560_lit_string_α
                                                                              jmp   n00564_binop_test_α
.Lmain_β_1585_0:        .quad            .Lmain_β_1585_0_s
.Lmain_β_1585_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00564_binop_test_α:     mov              r11, 603
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
                        test             eax, eax;                            jz    n00563_proc_gen_β
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n00565_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_call_proc_staged_α:
                        mov              r11, 604
                        lea              rsi, [rsp + 2128]
                        lea              rdx, [rsp + 2144]
                        call             refto_dcα;                           jmp   .Lmain_α_1588_2
.Lmain_α_1588_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1588_29
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
.Lmain_α_1588_29:       mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n00563_proc_gen_β
                                                                              jmp   n00566_assign_α
n00565_call_proc_staged_β:
                        mov              r11, 604;                            jmp   n00563_proc_gen_β
.Lmain_β_1588_0:        .quad            .Lmain_β_1588_0_s
.Lmain_β_1588_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00566_assign_α:         mov              r11, 605
                        mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_lit_string_α:     mov              r11, 606
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1590_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n00567_var_α
.Lmain_α_1590_0:        .quad            .Lmain_α_1590_0_s
.Lmain_α_1590_0_s:      .string          "  wife"
#-----------------------------------------------------------------------------------------------------------------------
n00567_var_α:            mov              r11, 607
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n00568_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_field_get_α:      mov              r11, 608
                        mov              rdi, qword ptr [rip + .Lmain_α_1593_0]
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
                        cmp              al, 104;                             je    n00569_disjunction_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n00570_var_α
.Lmain_α_1593_0:        .quad            .Lmain_α_1593_0_s
.Lmain_α_1593_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00570_var_α:            mov              r11, 609
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n00571_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00571_lit_string_α:     mov              r11, 610
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1596_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n00572_proc_gen_α
.Lmain_α_1596_0:        .quad            .Lmain_α_1596_0_s
.Lmain_α_1596_0_s:      .string          "WIFE"
#-----------------------------------------------------------------------------------------------------------------------
n00572_proc_gen_α:       mov              r11, 611
                        mov              qword ptr [rsp + 2000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1598_200
                        mov              rax, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1598_201
.Lmain_α_1598_200:      mov              edi, 0
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
.Lmain_α_1598_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1598_202
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1598_203
.Lmain_α_1598_202:      mov              edi, 1
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
.Lmain_α_1598_203:      lea              rax, [rip + .Lmain_α_1598_7]
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
                        test             rax, rax;                            je    .Lmain_α_1598_1
                        lea              rcx, [rip + .Lmain_α_1598_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1598_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1598_4];        jmp   rax
.Lmain_α_1598_3:        add              rsp, 16
                        mov              qword ptr [rsp + 2008], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lmain_α_1598_5
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1598_2
.Lmain_α_1598_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1598_2
.Lmain_α_1598_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 2000]
                        test             rax, rax;                            jne   .Lmain_α_1598_6
                        mov              qword ptr [rsp + 2000], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1598_2
.Lmain_α_1598_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1598_2
.Lmain_α_1598_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1598_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1598_29
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
.Lmain_α_1598_29:       mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n00569_disjunction_α
                                                                              jmp   n00573_binop_test_α
n00572_proc_gen_β:       mov              r11, 611
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 2008];         jmp   qword ptr [rsp]
.Lmain_α_1598_7:        add              rsp, 8
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n00569_disjunction_α
                                                                              jmp   n00573_binop_test_α
.Lmain_β_1598_0:        .quad            .Lmain_β_1598_0_s
.Lmain_β_1598_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00573_binop_test_α:     mov              r11, 612
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
                        test             eax, eax;                            jz    n00572_proc_gen_β
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n00574_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_call_proc_staged_α:
                        mov              r11, 613
                        lea              rsi, [rsp + 1888]
                        lea              rdx, [rsp + 1904]
                        call             refto_dcα;                           jmp   .Lmain_α_1601_2
.Lmain_α_1601_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1601_29
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
.Lmain_α_1601_29:       mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n00572_proc_gen_β
                                                                              jmp   n00575_assign_α
n00574_call_proc_staged_β:
                        mov              r11, 613;                            jmp   n00572_proc_gen_β
.Lmain_β_1601_0:        .quad            .Lmain_β_1601_0_s
.Lmain_β_1601_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00575_assign_α:         mov              r11, 614
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00569_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00569_disjunction_α:    mov              r11, 615
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              dword ptr [rsp + 1712], 0;           jmp   n00576_var_α
n00569_disjunction_as:   mov              r11, 615
                        mov              eax, dword ptr [rsp + 1712]
                        cmp              eax, 0;                              jne   .Lmain_α_1604_0
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n00577_disjunction_α
.Lmain_α_1604_0:                                                              jmp   n00577_disjunction_α
n00569_disjunction_β:    mov              r11, 615
                        mov              eax, dword ptr [rsp + 1712];         jmp   n00577_disjunction_α
n00569_disjunction_af:   mov              r11, 615
                        add              dword ptr [rsp + 1712], 1
                        mov              eax, dword ptr [rsp + 1712];         jmp   n00577_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_var_α:            mov              r11, 616
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n00578_unop_test_α
n00576_var_β:            mov              r11, 616;                            jmp   n00569_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00578_unop_test_α:      mov              r11, 617
                        mov              eax, dword ptr [rsp + 4944]
                        cmp              al, 104;                             je    n00569_disjunction_af
                        cmp              eax, 0;                              je    n00569_disjunction_af
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n00579_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00579_lit_string_α:     mov              r11, 618
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 5
                        mov              rax, qword ptr [rip + .Lmain_α_1608_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n00580_call_icon_α
.Lmain_α_1608_0:        .quad            .Lmain_α_1608_0_s
.Lmain_α_1608_0_s:      .string          "   m."
#-----------------------------------------------------------------------------------------------------------------------
n00580_call_icon_α:      mov              r11, 619
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
                        cmp              al, 104;                             je    n00577_disjunction_α
                                                                              jmp   n00569_disjunction_as
n00580_call_icon_β:      mov              r11, 619;                            jmp   n00577_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00577_disjunction_α:    mov              r11, 620
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              dword ptr [rsp + 576], 0;            jmp   n00581_disjunction_α
n00577_disjunction_as:   mov              r11, 620
                        mov              eax, dword ptr [rsp + 576]
                        cmp              eax, 0;                              jne   .Lmain_α_1612_0
                                                                              jmp   n00582_conjunction_α
.Lmain_α_1612_0:                                                              jmp   n00582_conjunction_α
n00577_disjunction_β:    mov              r11, 620
                        mov              eax, dword ptr [rsp + 576];          jmp   n00583_unmark_α
n00577_disjunction_af:   mov              r11, 620
                        add              dword ptr [rsp + 576], 1
                        mov              eax, dword ptr [rsp + 576];          jmp   n00583_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00582_conjunction_α:    mov              r11, 621
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00583_unmark_α
n00582_conjunction_β:    mov              r11, 621;                            jmp   n00583_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00581_disjunction_α:    mov              r11, 622
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              dword ptr [rsp + 1392], 0;           jmp   n00584_var_α
n00581_disjunction_as:   mov              r11, 622
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              jne   .Lmain_α_1615_0
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00585_var_α
.Lmain_α_1615_0:        cmp              eax, 1;                              jne   .Lmain_α_1615_1
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n00585_var_α
.Lmain_α_1615_1:                                                              jmp   n00585_var_α
n00581_disjunction_β:    mov              r11, 622
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              je    n00586_proc_gen_β
                                                                              jmp   n00581_disjunction_af
n00581_disjunction_af:   mov              r11, 622
                        add              dword ptr [rsp + 1392], 1
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 1;                              je    n00587_var_α
                                                                              jmp   n00577_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00585_var_α:            mov              r11, 623
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00588_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00588_lit_string_α:     mov              r11, 624
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1618_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00589_proc_gen_α
.Lmain_α_1618_0:        .quad            .Lmain_α_1618_0_s
.Lmain_α_1618_0_s:      .string          "CHIL"
#-----------------------------------------------------------------------------------------------------------------------
n00589_proc_gen_α:       mov              r11, 625
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1620_200
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1620_201
.Lmain_α_1620_200:      mov              edi, 0
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
.Lmain_α_1620_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1620_202
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1620_203
.Lmain_α_1620_202:      mov              edi, 1
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
.Lmain_α_1620_203:      lea              rax, [rip + .Lmain_α_1620_7]
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
                        test             rax, rax;                            je    .Lmain_α_1620_1
                        lea              rcx, [rip + .Lmain_α_1620_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1620_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1620_4];        jmp   rax
.Lmain_α_1620_3:        add              rsp, 16
                        mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lmain_α_1620_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1620_2
.Lmain_α_1620_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1620_2
.Lmain_α_1620_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lmain_α_1620_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1620_2
.Lmain_α_1620_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1620_2
.Lmain_α_1620_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1620_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1620_29
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
.Lmain_α_1620_29:       mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n00583_unmark_α
                                                                              jmp   n00590_assign_α
n00589_proc_gen_β:       mov              r11, 625
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 648];          jmp   qword ptr [rsp]
.Lmain_α_1620_7:        add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n00583_unmark_α
                                                                              jmp   n00590_assign_α
.Lmain_β_1620_0:        .quad            .Lmain_β_1620_0_s
.Lmain_β_1620_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00590_assign_α:         mov              r11, 626
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 4944], rax
                        mov              qword ptr [rsp + 4952], rdx;         jmp   n00591_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00591_bound_α:          mov              r11, 627
                        mov              qword ptr [rsp + 704], rsp;          jmp   n00592_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00592_disjunction_α:    mov              r11, 628
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n00593_var_α
n00592_disjunction_as:   mov              r11, 628
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lmain_α_1625_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00594_lit_string_α
.Lmain_α_1625_0:        cmp              eax, 1;                              jne   .Lmain_α_1625_1
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00594_lit_string_α
.Lmain_α_1625_1:                                                              jmp   n00594_lit_string_α
n00592_disjunction_β:    mov              r11, 628
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n00595_proc_gen_β
                                                                              jmp   n00592_disjunction_af
n00592_disjunction_af:   mov              r11, 628
                        add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n00596_lit_string_α
                                                                              jmp   n00597_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00594_lit_string_α:     mov              r11, 629
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1626_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n00598_call_builtin_α
.Lmain_α_1626_0:        .quad            .Lmain_α_1626_0_s
.Lmain_α_1626_0_s:      .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n00598_call_builtin_α:   mov              r11, 630
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
                        cmp              al, 104;                             je    n00599_lit_string_α
                                                                              jmp   n00600_lit_string_α
n00598_call_builtin_β:   mov              r11, 630;                            jmp   n00599_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00600_lit_string_α:     mov              r11, 631
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1629_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n00601_var_α
.Lmain_α_1629_0:        .quad            .Lmain_α_1629_0_s
.Lmain_α_1629_0_s:      .string          "   son"
#-----------------------------------------------------------------------------------------------------------------------
n00601_var_α:            mov              r11, 632
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n00602_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00602_call_proc_staged_α:
                        mov              r11, 633
                        lea              rsi, [rsp + 1280]
                        lea              rdx, [rsp + 1296]
                        call             refto_dcα;                           jmp   .Lmain_α_1633_2
.Lmain_α_1633_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1633_29
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
.Lmain_α_1633_29:       mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n00597_unmark_α
                                                                              jmp   n00603_assign_α
n00602_call_proc_staged_β:
                        mov              r11, 633;                            jmp   n00597_unmark_α
.Lmain_β_1633_0:        .quad            .Lmain_β_1633_0_s
.Lmain_β_1633_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00603_assign_α:         mov              r11, 634
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00599_lit_string_α:     mov              r11, 635
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lmain_α_1635_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n00605_call_builtin_α
.Lmain_α_1635_0:        .quad            .Lmain_α_1635_0_s
.Lmain_α_1635_0_s:      .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n00605_call_builtin_α:   mov              r11, 636
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
                        cmp              al, 104;                             je    n00606_lit_string_α
                                                                              jmp   n00607_lit_string_α
n00605_call_builtin_β:   mov              r11, 636;                            jmp   n00606_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_lit_string_α:     mov              r11, 637
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1638_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n00608_var_α
.Lmain_α_1638_0:        .quad            .Lmain_α_1638_0_s
.Lmain_α_1638_0_s:      .string          "   dau"
#-----------------------------------------------------------------------------------------------------------------------
n00608_var_α:            mov              r11, 638
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n00609_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00609_call_proc_staged_α:
                        mov              r11, 639
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1120]
                        call             refto_dcα;                           jmp   .Lmain_α_1642_2
.Lmain_α_1642_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1642_29
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
.Lmain_α_1642_29:       mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n00597_unmark_α
                                                                              jmp   n00610_assign_α
n00609_call_proc_staged_β:
                        mov              r11, 639;                            jmp   n00597_unmark_α
.Lmain_β_1642_0:        .quad            .Lmain_β_1642_0_s
.Lmain_β_1642_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00610_assign_α:         mov              r11, 640
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00606_lit_string_α:     mov              r11, 641
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 6
                        mov              rax, qword ptr [rip + .Lmain_α_1644_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n00611_var_α
.Lmain_α_1644_0:        .quad            .Lmain_α_1644_0_s
.Lmain_α_1644_0_s:      .string          " child"
#-----------------------------------------------------------------------------------------------------------------------
n00611_var_α:            mov              r11, 642
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n00612_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00612_call_proc_staged_α:
                        mov              r11, 643
                        lea              rsi, [rsp + 992]
                        lea              rdx, [rsp + 1008]
                        call             refto_dcα;                           jmp   .Lmain_α_1648_2
.Lmain_α_1648_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1648_29
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
.Lmain_α_1648_29:       mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n00597_unmark_α
                                                                              jmp   n00613_assign_α
n00612_call_proc_staged_β:
                        mov              r11, 643;                            jmp   n00597_unmark_α
.Lmain_β_1648_0:        .quad            .Lmain_β_1648_0_s
.Lmain_β_1648_0_s:      .string          "refto"
#-----------------------------------------------------------------------------------------------------------------------
n00613_assign_α:         mov              r11, 644
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 4960], rax
                        mov              qword ptr [rsp + 4968], rdx;         jmp   n00604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00604_var_α:            mov              r11, 645
                        mov              rax, qword ptr [rsp + 4960]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 4968]
                        mov              qword ptr [rsp + 760], rax;          jmp   n00597_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_unmark_α:         mov              r11, 646
                        mov              rsp, qword ptr [rsp + 704];          jmp   n00589_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00596_lit_string_α:     mov              r11, 647
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 0
                        mov              rax, qword ptr [rip + .Lmain_α_1654_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n00592_disjunction_as
n00596_lit_string_β:     mov              r11, 647;                            jmp   n00592_disjunction_af
.Lmain_α_1654_0:        .quad            .Lmain_α_1654_0_s
.Lmain_α_1654_0_s:      .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00593_var_α:            mov              r11, 648
                        mov              rax, qword ptr [rsp + 4944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00614_lit_string_α
n00593_var_β:            mov              r11, 648;                            jmp   n00592_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00614_lit_string_α:     mov              r11, 649
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 3
                        mov              rax, qword ptr [rip + .Lmain_α_1657_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n00595_proc_gen_α
.Lmain_α_1657_0:        .quad            .Lmain_α_1657_0_s
.Lmain_α_1657_0_s:      .string          "SEX"
#-----------------------------------------------------------------------------------------------------------------------
n00595_proc_gen_α:       mov              r11, 650
                        mov              qword ptr [rsp + 848], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1659_200
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1659_201
.Lmain_α_1659_200:      mov              edi, 0
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
.Lmain_α_1659_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1659_202
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1659_203
.Lmain_α_1659_202:      mov              edi, 1
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
.Lmain_α_1659_203:      lea              rax, [rip + .Lmain_α_1659_7]
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
                        test             rax, rax;                            je    .Lmain_α_1659_1
                        lea              rcx, [rip + .Lmain_α_1659_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1659_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1659_4];        jmp   rax
.Lmain_α_1659_3:        add              rsp, 16
                        mov              qword ptr [rsp + 856], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lmain_α_1659_5
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1659_2
.Lmain_α_1659_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1659_2
.Lmain_α_1659_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lmain_α_1659_6
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1659_2
.Lmain_α_1659_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1659_2
.Lmain_α_1659_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1659_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1659_29
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
.Lmain_α_1659_29:       mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n00592_disjunction_af
                                                                              jmp   n00592_disjunction_as
n00595_proc_gen_β:       mov              r11, 650
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 856];          jmp   qword ptr [rsp]
.Lmain_α_1659_7:        add              rsp, 8
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n00592_disjunction_af
                                                                              jmp   n00592_disjunction_as
.Lmain_β_1659_0:        .quad            .Lmain_β_1659_0_s
.Lmain_β_1659_0_s:      .string          "gedval"
#-----------------------------------------------------------------------------------------------------------------------
n00583_unmark_α:         mov              r11, 651
                        mov              rsp, qword ptr [rsp + 496];          jmp   n00548_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00587_var_α:            mov              r11, 652
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n00615_lit_string_α
n00587_var_β:            mov              r11, 652;                            jmp   n00616_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00615_lit_string_α:     mov              r11, 653
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1664_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n00617_proc_gen_α
.Lmain_α_1664_0:        .quad            .Lmain_α_1664_0_s
.Lmain_α_1664_0_s:      .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00617_proc_gen_α:       mov              r11, 654
                        mov              qword ptr [rsp + 1632], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1666_200
                        mov              rax, qword ptr [rsp + 1664]
                        mov              rdx, qword ptr [rsp + 1672]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1666_201
.Lmain_α_1666_200:      mov              edi, 0
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
.Lmain_α_1666_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1666_202
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1666_203
.Lmain_α_1666_202:      mov              edi, 1
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
.Lmain_α_1666_203:      lea              rax, [rip + .Lmain_α_1666_7]
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
                        test             rax, rax;                            je    .Lmain_α_1666_1
                        lea              rcx, [rip + .Lmain_α_1666_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1666_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1666_4];        jmp   rax
.Lmain_α_1666_3:        add              rsp, 16
                        mov              qword ptr [rsp + 1640], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1632]
                        test             rax, rax;                            jne   .Lmain_α_1666_5
                        mov              qword ptr [rsp + 1632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1666_2
.Lmain_α_1666_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1666_2
.Lmain_α_1666_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1632]
                        test             rax, rax;                            jne   .Lmain_α_1666_6
                        mov              qword ptr [rsp + 1632], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1666_2
.Lmain_α_1666_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1666_2
.Lmain_α_1666_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1666_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1666_29
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
.Lmain_α_1666_29:       mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n00616_var_α
                                                                              jmp   n00581_disjunction_af
n00617_proc_gen_β:       mov              r11, 654
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1640];         jmp   qword ptr [rsp]
.Lmain_α_1666_7:        add              rsp, 8
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n00616_var_α
                                                                              jmp   n00581_disjunction_af
.Lmain_β_1666_0:        .quad            .Lmain_β_1666_0_s
.Lmain_β_1666_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00616_var_α:            mov              r11, 655
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0;           jmp   n00581_disjunction_as
n00616_var_β:            mov              r11, 655;                            jmp   n00581_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00584_var_α:            mov              r11, 656
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n00618_field_get_α
n00584_var_β:            mov              r11, 656;                            jmp   n00581_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00618_field_get_α:      mov              r11, 657
                        mov              rdi, qword ptr [rip + .Lmain_α_1670_0]
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
                        cmp              al, 104;                             je    n00581_disjunction_af
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n00619_var_α
.Lmain_α_1670_0:        .quad            .Lmain_α_1670_0_s
.Lmain_α_1670_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00619_var_α:            mov              r11, 658
                        mov              rax, qword ptr [rsp + 4928]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 4936]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n00620_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00620_lit_string_α:     mov              r11, 659
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1673_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n00586_proc_gen_α
.Lmain_α_1673_0:        .quad            .Lmain_α_1673_0_s
.Lmain_α_1673_0_s:      .string          "HUSB"
#-----------------------------------------------------------------------------------------------------------------------
n00586_proc_gen_α:       mov              r11, 660
                        mov              qword ptr [rsp + 1504], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1675_200
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1675_201
.Lmain_α_1675_200:      mov              edi, 0
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
.Lmain_α_1675_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1675_202
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1675_203
.Lmain_α_1675_202:      mov              edi, 1
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
.Lmain_α_1675_203:      lea              rax, [rip + .Lmain_α_1675_7]
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
                        test             rax, rax;                            je    .Lmain_α_1675_1
                        lea              rcx, [rip + .Lmain_α_1675_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1675_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1675_4];        jmp   rax
.Lmain_α_1675_3:        add              rsp, 16
                        mov              qword ptr [rsp + 1512], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1504]
                        test             rax, rax;                            jne   .Lmain_α_1675_5
                        mov              qword ptr [rsp + 1504], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1675_2
.Lmain_α_1675_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1675_2
.Lmain_α_1675_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1504]
                        test             rax, rax;                            jne   .Lmain_α_1675_6
                        mov              qword ptr [rsp + 1504], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1675_2
.Lmain_α_1675_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1675_2
.Lmain_α_1675_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1675_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1675_29
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
.Lmain_α_1675_29:       mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00581_disjunction_af
                                                                              jmp   n00621_binop_test_α
n00586_proc_gen_β:       mov              r11, 660
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1512];         jmp   qword ptr [rsp]
.Lmain_α_1675_7:        add              rsp, 8
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n00581_disjunction_af
                                                                              jmp   n00621_binop_test_α
.Lmain_β_1675_0:        .quad            .Lmain_β_1675_0_s
.Lmain_β_1675_0_s:      .string          "gedref"
#-----------------------------------------------------------------------------------------------------------------------
n00621_binop_test_α:     mov              r11, 661
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
                        test             eax, eax;                            jz    n00586_proc_gen_β
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n00581_disjunction_as
n00621_binop_test_β:     mov              r11, 661;                            jmp   n00586_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00546_lit_string_α:     mov              r11, 662
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lmain_α_1677_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00622_var_α
.Lmain_α_1677_0:        .quad            .Lmain_α_1677_0_s
.Lmain_α_1677_0_s:      .string          "d."
#-----------------------------------------------------------------------------------------------------------------------
n00622_var_α:            mov              r11, 663
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 344], rax;          jmp   n00623_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n00623_field_get_α:      mov              r11, 664
                        mov              rdi, qword ptr [rip + .Lmain_α_1680_0]
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
                        cmp              al, 104;                             je    n00624_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00625_lit_string_α
.Lmain_α_1680_0:        .quad            .Lmain_α_1680_0_s
.Lmain_α_1680_0_s:      .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00625_lit_string_α:     mov              r11, 665
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 4
                        mov              rax, qword ptr [rip + .Lmain_α_1681_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n00626_proc_gen_α
.Lmain_α_1681_0:        .quad            .Lmain_α_1681_0_s
.Lmain_α_1681_0_s:      .string          "DEAT"
#-----------------------------------------------------------------------------------------------------------------------
n00626_proc_gen_α:       mov              r11, 666
                        mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1683_200
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_1683_201
.Lmain_α_1683_200:      mov              edi, 0
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
.Lmain_α_1683_201:      lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_1683_202
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_1683_203
.Lmain_α_1683_202:      mov              edi, 1
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
.Lmain_α_1683_203:      lea              rax, [rip + .Lmain_α_1683_7]
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
                        test             rax, rax;                            je    .Lmain_α_1683_1
                        lea              rcx, [rip + .Lmain_α_1683_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_1683_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_1683_4];        jmp   rax
.Lmain_α_1683_3:        add              rsp, 16
                        mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lmain_α_1683_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1683_2
.Lmain_α_1683_5:        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_1683_2
.Lmain_α_1683_4:        add              rsp, 16
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lmain_α_1683_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_1683_2
.Lmain_α_1683_6:        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_1683_2
.Lmain_α_1683_1:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1683_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1683_29
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
.Lmain_α_1683_29:       mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00624_unmark_α
                                                                              jmp   n00627_call_proc_staged_α
n00626_proc_gen_β:       mov              r11, 666
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 296];          jmp   qword ptr [rsp]
.Lmain_α_1683_7:        add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n00624_unmark_α
                                                                              jmp   n00627_call_proc_staged_α
.Lmain_β_1683_0:        .quad            .Lmain_β_1683_0_s
.Lmain_β_1683_0_s:      .string          "gedsub"
#-----------------------------------------------------------------------------------------------------------------------
n00627_call_proc_staged_α:
                        mov              r11, 667
                        lea              rsi, [rsp + 224]
                        lea              rdx, [rsp + 240]
                        call             event_dcα;                           jmp   .Lmain_α_1685_2
.Lmain_α_1685_2:        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_1685_29
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
.Lmain_α_1685_29:       mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n00626_proc_gen_β
                                                                              jmp   n00628_conjunction_α
n00627_call_proc_staged_β:
                        mov              r11, 667;                            jmp   n00626_proc_gen_β
.Lmain_β_1685_0:        .quad            .Lmain_β_1685_0_s
.Lmain_β_1685_0_s:      .string          "event"
#-----------------------------------------------------------------------------------------------------------------------
n00628_conjunction_α:    mov              r11, 668
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00624_unmark_α
n00628_conjunction_β:    mov              r11, 668;                            jmp   n00624_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00624_unmark_α:         mov              r11, 669
                        mov              rsp, qword ptr [rsp + 96];           jmp   n00507_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00465_kw_icon_α:        mov              r11, 670
                        mov              rdi, qword ptr [rip + .Lmain_α_1689_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00463_var_α
                        mov              qword ptr [rsp + 4864], rax
                        mov              qword ptr [rsp + 4872], rdx;         jmp   n00629_assign_α
n00465_kw_icon_β:        mov              r11, 670;                            jmp   n00463_var_α
.Lmain_α_1689_0:        .quad            .Lmain_α_1689_0_s
.Lmain_α_1689_0_s:      .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00629_assign_α:         mov              r11, 671
                        mov              rax, qword ptr [rsp + 4864]
                        mov              rdx, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        mov              qword ptr [rsp + 4848], rax
                        mov              qword ptr [rsp + 4856], rdx;         jmp   n00461_disjunction_as
n00629_assign_β:         mov              r11, 671;                            jmp   n00463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_var_α:            mov              r11, 672
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 4824], rax;         jmp   n00630_unop_α
n00462_var_β:            mov              r11, 672;                            jmp   n00461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00630_unop_α:           mov              r11, 673
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
                        mov              qword ptr [rsp + 4808], rdx;         jmp   n00631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00631_lit_integer_α:    mov              r11, 674
                        mov              qword ptr [rsp + 4832], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1694_0]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n00632_binop_test_α
.Lmain_α_1694_0:        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00632_binop_test_α:     mov              r11, 675
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              al, 112;                             je    .Lmain_α_1695_0
                        mov              eax, dword ptr [rsp + 4832]
                        cmp              al, 112;                             je    .Lmain_α_1695_0
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              al, 3;                               jne   .Lmain_α_1695_2
                        mov              eax, dword ptr [rsp + 4832]
                        cmp              al, 3;                               jne   .Lmain_α_1695_2
.Lmain_α_1695_1:        mov              rax, qword ptr [rsp + 4808]
                        mov              rcx, qword ptr [rsp + 4840]
                        cmp              rax, rcx;                            jle   n00461_disjunction_af
                        mov              rcx, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4784], rcx
                        mov              rcx, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4792], rcx;         jmp   n00464_disjunction_α
.Lmain_α_1695_0:        mov              rdi, qword ptr [rsp + 4800]
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
                        test             eax, eax;                            je    .Lmain_α_1695_1
                        cmp              eax, 1;                              je    n00461_disjunction_af
                                                                              jmp   n00464_disjunction_α
.Lmain_α_1695_2:        mov              rdi, qword ptr [rsp + 4800]
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
                        test             eax, eax;                            jz    n00461_disjunction_af
                        mov              rax, qword ptr [rsp + 4832]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4840]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n00464_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_disjunction_α:    mov              r11, 676
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              dword ptr [rsp + 4512], 0;           jmp   n00633_var_ref_α
n00464_disjunction_as:   mov              r11, 676
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 0;                              jne   .Lmain_α_1697_0
                        mov              rax, qword ptr [rsp + 4528]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n00634_assign_α
.Lmain_α_1697_0:        cmp              eax, 1;                              jne   .Lmain_α_1697_1
                        mov              rax, qword ptr [rsp + 4640]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4648]
                        mov              qword ptr [rsp + 4504], rax;         jmp   n00634_assign_α
.Lmain_α_1697_1:                                                              jmp   n00634_assign_α
n00464_disjunction_β:    mov              r11, 676
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 0;                              je    n00464_disjunction_af
                                                                              jmp   n00464_disjunction_af
n00464_disjunction_af:   mov              r11, 676
                        add              dword ptr [rsp + 4512], 1
                        mov              eax, dword ptr [rsp + 4512]
                        cmp              eax, 1;                              je    n00635_lit_string_α
                                                                              jmp   n00463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00634_assign_α:         mov              r11, 677
                        mov              rax, qword ptr [rsp + 4496]
                        mov              rdx, qword ptr [rsp + 4504]
                        mov              qword ptr [rsp + 5008], rax
                        mov              qword ptr [rsp + 5016], rdx
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx;         jmp   n00461_disjunction_as
n00634_assign_β:         mov              r11, 677;                            jmp   n00463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_lit_string_α:     mov              r11, 678
                        mov              qword ptr [rsp + 4704], 2            # result
                        mov              dword ptr [rsp + 4708], 11
                        mov              rax, qword ptr [rip + .Lmain_α_1699_0]
                        mov              qword ptr [rsp + 4712], rax;         jmp   n00636_var_ref_α
n00635_lit_string_β:     mov              r11, 678;                            jmp   n00464_disjunction_af
.Lmain_α_1699_0:        .quad            .Lmain_α_1699_0_s
.Lmain_α_1699_0_s:      .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n00636_var_ref_α:        mov              r11, 679
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4720], rax
                        mov              qword ptr [rsp + 4728], rdx;         jmp   n00637_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00637_lit_integer_α:    mov              r11, 680
                        mov              qword ptr [rsp + 4736], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1702_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n00638_subscript_α
.Lmain_α_1702_0:        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00638_subscript_α:      mov              r11, 681
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        mov              qword ptr [rsp + 4752], rax
                        mov              qword ptr [rsp + 4760], rdx;         jmp   n00639_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00639_deref_α:          mov              r11, 682
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        mov              qword ptr [rsp + 4768], rax
                        mov              qword ptr [rsp + 4776], rdx;         jmp   n00640_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00640_call_icon_α:      mov              r11, 683
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                                                                              jmp   n00464_disjunction_as
n00640_call_icon_β:      mov              r11, 683;                            jmp   n00464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00633_var_ref_α:        mov              r11, 684
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n00641_lit_integer_α
n00633_var_ref_β:        mov              r11, 684;                            jmp   n00464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00641_lit_integer_α:    mov              r11, 685
                        mov              qword ptr [rsp + 4592], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_1709_0]
                        mov              qword ptr [rsp + 4600], rax;         jmp   n00642_subscript_α
.Lmain_α_1709_0:        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00642_subscript_α:      mov              r11, 686
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx;         jmp   n00643_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00643_deref_α:          mov              r11, 687
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                        mov              qword ptr [rsp + 4624], rax
                        mov              qword ptr [rsp + 4632], rdx;         jmp   n00644_call_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00644_call_icon_α:      mov              r11, 688
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
                        cmp              al, 104;                             je    n00464_disjunction_af
                                                                              jmp   n00464_disjunction_as
n00644_call_icon_β:      mov              r11, 688;                            jmp   n00464_disjunction_af
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
