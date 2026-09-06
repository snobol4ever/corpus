                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__rev$2F2:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1016], r13
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 992], r12
                        lea              rax, [rip + rev$2F2_alt1]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
rev$2F2_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_27_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n2_call_α
.Llit_string_α_27_0:    .quad            .Llit_string_α_27_0_s
.Llit_string_α_27_0_s:  .string          "[]"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_28_2]
                                                                              jmp   .Lcall_α_28_3
.Lcall_α_28_2:          .quad            .Lcall_α_28_2_s
.Lcall_α_28_2_s:        .string          "[]"
.Lcall_α_28_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   rev$2F2_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n4_lit_string_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_31_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n5_call_α
.Llit_string_α_31_0:    .quad            .Llit_string_α_31_0_s
.Llit_string_α_31_0_s:  .string          "[]"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_32_2]
                                                                              jmp   .Lcall_α_32_3
.Lcall_α_32_2:          .quad            .Lcall_α_32_2_s
.Lcall_α_32_2_s:        .string          "[]"
.Lcall_α_32_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   rev$2F2_γ
n5_call_β:              mov              r11, 6;                              jmp   rev$2F2_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n7_lit_string_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_lit_string_bx, @function
n7_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_35_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n8_var_ref_α
.Llit_string_α_35_0:    .quad            .Llit_string_α_35_0_s
.Llit_string_α_35_0_s:  .string          "."
                        .size            n7_lit_string_bx, .-n7_lit_string_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n9_var_ref_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n10_call_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_call_bx, @function
n10_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             mov              r11, 11
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n11_call_α
n10_call_β:             mov              r11, 11;                             jmp   rev$2F2_step
                        .size            n10_call_bx, .-n10_call_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n12_var_ref_α
n11_call_β:             mov              r11, 12;                             jmp   rev$2F2_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n14_call_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   rev$2F2_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n16_var_ref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n17_call_proc_staged_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_call_proc_staged_bx, @function
n17_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              r11, 18
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_52_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_52_201
.Lcall_proc_staged_α_52_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_52_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_52_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_52_203
.Lcall_proc_staged_α_52_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_52_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_52_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_52_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_52_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_52_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_52_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_52_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_52_21
                        add              rsp, 32
.Lcall_proc_staged_α_52_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_52_2
.Lcall_proc_staged_α_52_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_52_2
.Lcall_proc_staged_α_52_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_52_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   rev$2F2_step
.Lcall_proc_staged_α_52_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_52_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
.Lcall_proc_staged_α_52_29:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n18_var_ref_α
n17_call_proc_staged_β: mov              r11, 18
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_52_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_52_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_52_22:
                                                                              jmp   rev$2F2_step
.Lcall_proc_staged_α_52_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n18_var_ref_α
.Lcall_proc_staged_α_52_0:
                        .quad            .Lcall_proc_staged_α_52_0_s
.Lcall_proc_staged_α_52_0_s:
                        .string          "rev/2"
                        .size            n17_call_proc_staged_bx, .-n17_call_proc_staged_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n19_lit_string_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_55_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n20_var_ref_α
.Llit_string_α_55_0:    .quad            .Llit_string_α_55_0_s
.Llit_string_α_55_0_s:  .string          "."
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n21_lit_string_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_lit_string_bx, @function
n21_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_58_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n22_call_α
.Llit_string_α_58_0:    .quad            .Llit_string_α_58_0_s
.Llit_string_α_58_0_s:  .string          "[]"
                        .size            n21_lit_string_bx, .-n21_lit_string_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    rev$2F2_step
                                                                              jmp   n23_var_ref_α
n22_call_β:             mov              r11, 23;                             jmp   rev$2F2_step
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n24_call_proc_staged_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_call_proc_staged_bx, @function
n24_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α: mov              r11, 25
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_63_201
.Lcall_proc_staged_α_63_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_63_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_202
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_63_203
.Lcall_proc_staged_α_63_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_63_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_63_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_63_205
.Lcall_proc_staged_α_63_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_63_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_63_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_63_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tail_args_safe@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10d, eax
                        pop              rax
                        add              rsp, 8
                        test             r10, r10;                            je    .Lcall_proc_staged_α_63_99
                        mov              r10, qword ptr [rbp + 1016]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_63_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_63_99
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rax
.Lcall_proc_staged_α_63_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_63_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_63_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_63_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_63_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_63_21
                        add              rsp, 32
.Lcall_proc_staged_α_63_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_63_2
.Lcall_proc_staged_α_63_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_63_2
.Lcall_proc_staged_α_63_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_63_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_call_proc_staged_β
.Lcall_proc_staged_α_63_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_63_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_63_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n17_call_proc_staged_β
                                                                              jmp   rev$2F2_ret1
n24_call_proc_staged_β: mov              r11, 25
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_63_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_63_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_63_22:
                                                                              jmp   n17_call_proc_staged_β
.Lcall_proc_staged_α_63_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n17_call_proc_staged_β
                                                                              jmp   rev$2F2_ret1
.Lcall_proc_staged_α_63_0:
                        .quad            .Lcall_proc_staged_α_63_0_s
.Lcall_proc_staged_α_63_0_s:
                        .string          "append/3"
                        .size            n24_call_proc_staged_bx, .-n24_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_ret1:
                        lea              rax, [rip + n24_call_proc_staged_β]
                        mov              qword ptr [rbp + 1008], rax
                                                                              jmp   rev$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_step:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              rax, qword ptr [rbp + 1000]
                        test             rax, rax
                                                                              je    rev$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1000], rax
                        mov              r13, qword ptr [rbp + 1016]
                                                                              jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_β:
                        test             r15, r15
                                                                              jne   rev$2F2_ω
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1008], 0
                        test             rax, rax
                                                                              jne   rev$2F2_βres
                                                                              jmp   rev$2F2_step
rev$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              r13, rax;                            je    rev$2F2_altdet
                        lea              rdx, [rip + rev$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
rev$2F2_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
rev$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1040]
                        mov              r13, qword ptr [rbp + 1016]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__mklist$2F2:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1016], r13
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 992], r12
                        lea              rax, [rip + mklist$2F2_alt1]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 928
                        mov              edx, 992
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
mklist$2F2_α_body:
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n65_lit_integer_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_integer_bx, @function
n65_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n66_call_α
.Llit_integer_α_92_0:   .quad            0
                        .size            n65_lit_integer_bx, .-n65_lit_integer_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 28
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n67_var_ref_α
n66_call_β:             mov              r11, 28;                             jmp   mklist$2F2_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n68_lit_string_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n69_call_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "[]"
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_97_2]
                                                                              jmp   .Lcall_α_97_3
.Lcall_α_97_2:          .quad            .Lcall_α_97_2_s
.Lcall_α_97_2_s:        .string          "[]"
.Lcall_α_97_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n70_cut_α
n69_call_β:             mov              r11, 31;                             jmp   mklist$2F2_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_cut_bx, @function
n70_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_cut_α:              mov              r11, 32
                        mov              qword ptr [rbp + 1000], 0
                        mov              qword ptr [rbp + 1008], 0
                        lea              rdi, [rbp + 992]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   mklist$2F2_γ
                        .size            n70_cut_bx, .-n70_cut_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n72_var_ref_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n73_call_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_bx, @function
n73_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n74_var_ref_α
n73_call_β:             mov              r11, 35;                             jmp   mklist$2F2_step
                        .size            n73_call_bx, .-n73_call_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n75_lit_string_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n76_var_ref_α
.Llit_string_α_107_0:   .quad            .Llit_string_α_107_0_s
.Llit_string_α_107_0_s: .string          "."
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n77_var_ref_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n78_call_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 40
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n79_call_α
n78_call_β:             mov              r11, 40;                             jmp   mklist$2F2_step
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n80_var_ref_α
n79_call_β:             mov              r11, 41;                             jmp   mklist$2F2_step
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n81_var_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 504], rax;          jmp   n82_call_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n83_lit_integer_α
n82_call_β:             mov              r11, 44;                             jmp   mklist$2F2_step
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n84_call_α
.Llit_integer_α_119_0:  .quad            1
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n85_call_α
n84_call_β:             mov              r11, 46;                             jmp   mklist$2F2_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_call_bx, @function
n85_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_call_α:             mov              r11, 47
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n86_call_α
n85_call_β:             mov              r11, 47;                             jmp   mklist$2F2_step
                        .size            n85_call_bx, .-n85_call_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   n87_var_ref_α
n86_call_β:             mov              r11, 48;                             jmp   mklist$2F2_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n89_call_proc_staged_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_call_proc_staged_bx, @function
n89_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: mov              r11, 51
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_128_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_128_201
.Lcall_proc_staged_α_128_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_128_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_128_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_128_203
.Lcall_proc_staged_α_128_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_128_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_128_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_128_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 2
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tail_args_safe@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10d, eax
                        pop              rax
                        add              rsp, 8
                        test             r10, r10;                            je    .Lcall_proc_staged_α_128_99
                        mov              r10, qword ptr [rbp + 1016]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_128_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_128_99
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rax
.Lcall_proc_staged_α_128_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_128_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_128_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_128_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_128_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_128_21
                        add              rsp, 32
.Lcall_proc_staged_α_128_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_128_2
.Lcall_proc_staged_α_128_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_128_2
.Lcall_proc_staged_α_128_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_128_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mklist$2F2_step
.Lcall_proc_staged_α_128_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_128_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_128_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   mklist$2F2_ret1
n89_call_proc_staged_β: mov              r11, 51
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_128_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_128_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_128_22:
                                                                              jmp   mklist$2F2_step
.Lcall_proc_staged_α_128_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    mklist$2F2_step
                                                                              jmp   mklist$2F2_ret1
.Lcall_proc_staged_α_128_0:
                        .quad            .Lcall_proc_staged_α_128_0_s
.Lcall_proc_staged_α_128_0_s:
                        .string          "mklist/2"
                        .size            n89_call_proc_staged_bx, .-n89_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_ret1:
                        lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rbp + 1008], rax
                                                                              jmp   mklist$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_step:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              rax, qword ptr [rbp + 1000]
                        test             rax, rax
                                                                              je    mklist$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1000], rax
                        mov              r13, qword ptr [rbp + 1016]
                                                                              jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_β:
                        test             r15, r15
                                                                              jne   mklist$2F2_ω
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1008], 0
                        test             rax, rax
                                                                              jne   mklist$2F2_βres
                                                                              jmp   mklist$2F2_step
mklist$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              r13, rax;                            je    mklist$2F2_altdet
                        lea              rdx, [rip + mklist$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
mklist$2F2_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mklist$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1040]
                        mov              r13, qword ptr [rbp + 1016]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__append$2F3:
                        sub              rsp, 1152
                        mov              qword ptr [rsp + 1128], rcx
                        mov              qword ptr [rsp + 1136], rdx
                        mov              qword ptr [rsp + 1144], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1112], r13
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1088], r12
                        lea              rax, [rip + append$2F3_alt1]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1008
                        mov              edx, 1088
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
append$2F3_α_body:
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n130_lit_string_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_lit_string_bx, @function
n130_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n131_call_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          "[]"
                        .size            n130_lit_string_bx, .-n130_lit_string_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 54
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_160_2]
                                                                              jmp   .Lcall_α_160_3
.Lcall_α_160_2:         .quad            .Lcall_α_160_2_s
.Lcall_α_160_2_s:       .string          "[]"
.Lcall_α_160_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n132_var_ref_α
n131_call_β:            mov              r11, 54;                             jmp   append$2F3_step
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n133_var_ref_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_var_ref_bx, @function
n133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n134_call_α
                        .size            n133_var_ref_bx, .-n133_var_ref_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 57
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n135_var_ref_α
n134_call_β:            mov              r11, 57;                             jmp   append$2F3_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n136_var_ref_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n137_call_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_call_bx, @function
n137_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            mov              r11, 60
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   append$2F3_γ
n137_call_β:            mov              r11, 60;                             jmp   append$2F3_step
                        .size            n137_call_bx, .-n137_call_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n139_lit_string_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_173_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n140_var_ref_α
.Llit_string_α_173_0:   .quad            .Llit_string_α_173_0_s
.Llit_string_α_173_0_s: .string          "."
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n141_var_ref_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n142_call_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 65
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n143_call_α
n142_call_β:            mov              r11, 65;                             jmp   append$2F3_step
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_call_bx, @function
n143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            mov              r11, 66
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n144_var_ref_α
n143_call_β:            mov              r11, 66;                             jmp   append$2F3_step
                        .size            n143_call_bx, .-n143_call_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n146_call_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_call_bx, @function
n146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            mov              r11, 69
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n147_var_ref_α
n146_call_β:            mov              r11, 69;                             jmp   append$2F3_step
                        .size            n146_call_bx, .-n146_call_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n148_lit_string_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_lit_string_bx, @function
n148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 71
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_187_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n149_var_ref_α
.Llit_string_α_187_0:   .quad            .Llit_string_α_187_0_s
.Llit_string_α_187_0_s: .string          "."
                        .size            n148_lit_string_bx, .-n148_lit_string_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n150_var_ref_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_var_ref_bx, @function
n150_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n151_call_α
                        .size            n150_var_ref_bx, .-n150_var_ref_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 74
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n152_call_α
n151_call_β:            mov              r11, 74;                             jmp   append$2F3_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_call_bx, @function
n152_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_α:            mov              r11, 75
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   n153_var_ref_α
n152_call_β:            mov              r11, 75;                             jmp   append$2F3_step
                        .size            n152_call_bx, .-n152_call_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n154_var_ref_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n155_var_ref_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n156_call_proc_staged_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_call_proc_staged_bx, @function
n156_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        mov              r11, 79
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_201_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_201_201
.Lcall_proc_staged_α_201_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_201_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_201_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_201_203
.Lcall_proc_staged_α_201_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_201_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_201_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_201_205
.Lcall_proc_staged_α_201_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_201_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_201_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_201_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tail_args_safe@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10d, eax
                        pop              rax
                        add              rsp, 8
                        test             r10, r10;                            je    .Lcall_proc_staged_α_201_99
                        mov              r10, qword ptr [rbp + 1112]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_201_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_201_99
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rax
.Lcall_proc_staged_α_201_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_201_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_201_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_201_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_201_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_201_21
                        add              rsp, 32
.Lcall_proc_staged_α_201_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_201_2
.Lcall_proc_staged_α_201_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_201_2
.Lcall_proc_staged_α_201_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_201_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   append$2F3_step
.Lcall_proc_staged_α_201_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_201_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_201_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   append$2F3_ret1
n156_call_proc_staged_β:
                        mov              r11, 79
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_201_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_201_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_201_22:
                                                                              jmp   append$2F3_step
.Lcall_proc_staged_α_201_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    append$2F3_step
                                                                              jmp   append$2F3_ret1
.Lcall_proc_staged_α_201_0:
                        .quad            .Lcall_proc_staged_α_201_0_s
.Lcall_proc_staged_α_201_0_s:
                        .string          "append/3"
                        .size            n156_call_proc_staged_bx, .-n156_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ret1:
                        lea              rax, [rip + n156_call_proc_staged_β]
                        mov              qword ptr [rbp + 1104], rax
                                                                              jmp   append$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_step:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              rax, qword ptr [rbp + 1096]
                        test             rax, rax
                                                                              je    append$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1096], rax
                        mov              r13, qword ptr [rbp + 1112]
                                                                              jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_β:
                        test             r15, r15
                                                                              jne   append$2F3_ω
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1104], 0
                        test             rax, rax
                                                                              jne   append$2F3_βres
                                                                              jmp   append$2F3_step
append$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rax, qword ptr [rbp + 1112]
                        cmp              r13, rax;                            je    append$2F3_altdet
                        lea              rdx, [rip + append$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
append$2F3_altdet:      xor              eax, eax
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1112]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 392], r13
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 368], r12
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     mov              r11, 80
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_211_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n203_var_ref_α
.Llit_integer_α_211_0:  .quad            8
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_var_ref_bx, @function
n203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n204_call_proc_staged_α
                        .size            n203_var_ref_bx, .-n203_var_ref_bx
                        .type            n204_call_proc_staged_bx, @function
n204_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        mov              r11, 82
                        mov              qword ptr [rbp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_215_200
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_215_201
.Lcall_proc_staged_α_215_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_215_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_215_202
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_215_203
.Lcall_proc_staged_α_215_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_215_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_215_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_215_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_215_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_215_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_215_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_215_3:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_215_21
                        add              rsp, 32
.Lcall_proc_staged_α_215_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_215_2
.Lcall_proc_staged_α_215_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 256], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_215_2
.Lcall_proc_staged_α_215_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_215_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_215_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_215_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
.Lcall_proc_staged_α_215_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n205_var_ref_α
n204_call_proc_staged_β:
                        mov              r11, 82
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_215_22
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_215_22
                        mov              rcx, qword ptr [rbp + 264]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_215_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_215_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n205_var_ref_α
.Lcall_proc_staged_α_215_0:
                        .quad            .Lcall_proc_staged_α_215_0_s
.Lcall_proc_staged_α_215_0_s:
                        .string          "mklist/2"
                        .size            n204_call_proc_staged_bx, .-n204_call_proc_staged_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n207_call_proc_staged_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_call_proc_staged_bx, @function
n207_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_proc_staged_α:
                        mov              r11, 85
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_221_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_221_201
.Lcall_proc_staged_α_221_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_221_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_221_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_221_203
.Lcall_proc_staged_α_221_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_221_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_221_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_221_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_221_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_221_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_221_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_221_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_221_21
                        add              rsp, 32
.Lcall_proc_staged_α_221_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_221_2
.Lcall_proc_staged_α_221_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_221_2
.Lcall_proc_staged_α_221_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_221_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n204_call_proc_staged_β
.Lcall_proc_staged_α_221_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_221_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_221_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n204_call_proc_staged_β
                                                                              jmp   n208_var_α
n207_call_proc_staged_β:
                        mov              r11, 85
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_221_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_221_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_221_22:
                                                                              jmp   n204_call_proc_staged_β
.Lcall_proc_staged_α_221_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n204_call_proc_staged_β
                                                                              jmp   n208_var_α
.Lcall_proc_staged_α_221_0:
                        .quad            .Lcall_proc_staged_α_221_0_s
.Lcall_proc_staged_α_221_0_s:
                        .string          "rev/2"
                        .size            n207_call_proc_staged_bx, .-n207_call_proc_staged_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             mov              r11, 86
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 88], rax;           jmp   n209_call_α
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_call_bx, @function
n209_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n207_call_proc_staged_β
                                                                              jmp   n210_call_α
n209_call_β:            mov              r11, 87;                             jmp   n207_call_proc_staged_β
                        .size            n209_call_bx, .-n209_call_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 88
                        lea              rdi, [rbp + 16]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_nl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    n207_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n210_call_β:            mov              r11, 88;                             jmp   n207_call_proc_staged_β
                        .size            n210_call_bx, .-n210_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n207_call_proc_staged_β]
                        mov              qword ptr [rbp + 384], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              rax, qword ptr [rbp + 376]
                        test             rax, rax
                                                                              je    main$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_β:
                        test             r15, r15
                                                                              jne   main$2F0_ω
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 384], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rax, qword ptr [rbp + 392]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 416]
                        mov              r13, qword ptr [rbp + 392]
                        lea              rsp, [rbp + 432]
                        mov              rbp, qword ptr [rbp + 424];          jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rt_gcheap_warmup@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            call             rt_pl_root_omega@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        lea              rdi, [rsp + 64]
                        call             rt_pl_quad_seed@PLT
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], r12
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
main_α_body:
                        .type            n226_call_proc_staged_bx, @function
n226_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        mov              r11, 89
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_228_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_228_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_228_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_228_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_228_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_228_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_228_21
                        add              rsp, 32
.Lcall_proc_staged_α_228_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_228_2
.Lcall_proc_staged_α_228_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_228_2
.Lcall_proc_staged_α_228_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_228_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_228_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_228_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8]
.Lcall_proc_staged_α_228_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n226_call_proc_staged_β:
                        mov              r11, 89
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_228_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_228_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_228_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_228_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_228_0:
                        .quad            .Lcall_proc_staged_α_228_0_s
.Lcall_proc_staged_α_228_0_s:
                        .string          "main/0"
                        .size            n226_call_proc_staged_bx, .-n226_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
main_step:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 0
                        mov              rax, qword ptr [rbp + 72]
                        test             rax, rax
                                                                              je    main_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                        test             r15, r15
                                                                              jne   main_ω
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 80], 0
                        test             rax, rax
                                                                              jne   main_βres
                                                                              jmp   main_step
main_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 104]
                        xor              eax, eax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rbp + 112]
                        mov              r13, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "rev/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__rev$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            976
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "mklist/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__mklist$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            976
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "append/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__append$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1072
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "main/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            352
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
