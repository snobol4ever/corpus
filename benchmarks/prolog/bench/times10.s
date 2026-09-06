                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__d$2F3:
                        sub              rsp, 7728
                        mov              qword ptr [rsp + 7704], rcx
                        mov              qword ptr [rsp + 7712], rdx
                        mov              qword ptr [rsp + 7720], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 7728]
                        mov              qword ptr [rsp + 7696], rax
                        mov              qword ptr [rsp + 7688], r13
                        mov              qword ptr [rsp + 7680], 0
                        mov              qword ptr [rsp + 7672], 0
                        mov              qword ptr [rsp + 7664], r12
                        lea              rax, [rip + d$2F3_alt1]
                        mov              qword ptr [rsp + 7672], rax
                        lea              rdi, [rsp + 7664]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 7552
                        mov              edx, 7664
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
d$2F3_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n2_var_ref_α
.Llit_string_α_226_0:   .quad            .Llit_string_α_226_0_s
.Llit_string_α_226_0_s: .string          "+"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n3_var_ref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n4_call_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n5_call_α
n4_call_β:              mov              r11, 5;                              jmp   d$2F3_step
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   d$2F3_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   d$2F3_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n10_lit_string_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_240_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n11_var_ref_α
.Llit_string_α_240_0:   .quad            .Llit_string_α_240_0_s
.Llit_string_α_240_0_s: .string          "+"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n12_var_ref_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n13_call_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_call_bx, @function
n13_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n14_call_α
n13_call_β:             mov              r11, 14;                             jmp   d$2F3_step
                        .size            n13_call_bx, .-n13_call_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 472]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n15_cut_α
n14_call_β:             mov              r11, 15;                             jmp   d$2F3_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_cut_bx, @function
n15_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_cut_α:              mov              r11, 16
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n16_var_ref_α
                        .size            n15_cut_bx, .-n15_cut_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n17_var_ref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n18_var_ref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n19_call_proc_staged_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_call_proc_staged_bx, @function
n19_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α: mov              r11, 20
                        mov              qword ptr [rbp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_256_200
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_256_201
.Lcall_proc_staged_α_256_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_256_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_256_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_256_203
.Lcall_proc_staged_α_256_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_256_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_256_204
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_256_205
.Lcall_proc_staged_α_256_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_256_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_256_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_256_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_256_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_256_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_256_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_256_3:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_256_21
                        add              rsp, 32
.Lcall_proc_staged_α_256_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_256_2
.Lcall_proc_staged_α_256_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_256_2
.Lcall_proc_staged_α_256_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_256_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_256_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_256_29
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
.Lcall_proc_staged_α_256_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n20_var_ref_α
n19_call_proc_staged_β: mov              r11, 20
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_256_22
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_256_22
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_256_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_256_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n20_var_ref_α
.Lcall_proc_staged_α_256_0:
                        .quad            .Lcall_proc_staged_α_256_0_s
.Lcall_proc_staged_α_256_0_s:
                        .string          "d/3"
                        .size            n19_call_proc_staged_bx, .-n19_call_proc_staged_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n21_var_ref_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n23_call_proc_staged_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_proc_staged_bx, @function
n23_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α: mov              r11, 24
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_264_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_264_201
.Lcall_proc_staged_α_264_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_264_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_264_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_264_203
.Lcall_proc_staged_α_264_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_264_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_264_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_264_205
.Lcall_proc_staged_α_264_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_264_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_264_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_264_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_264_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_264_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_264_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_264_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_264_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_264_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_264_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_264_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_264_21
                        add              rsp, 32
.Lcall_proc_staged_α_264_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_264_2
.Lcall_proc_staged_α_264_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_264_2
.Lcall_proc_staged_α_264_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_264_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_call_proc_staged_β
.Lcall_proc_staged_α_264_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_264_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
.Lcall_proc_staged_α_264_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n19_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
n23_call_proc_staged_β: mov              r11, 24
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_264_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_264_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_264_22:
                                                                              jmp   n19_call_proc_staged_β
.Lcall_proc_staged_α_264_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n19_call_proc_staged_β
                                                                              jmp   d$2F3_ret0
.Lcall_proc_staged_α_264_0:
                        .quad            .Lcall_proc_staged_α_264_0_s
.Lcall_proc_staged_α_264_0_s:
                        .string          "d/3"
                        .size            n23_call_proc_staged_bx, .-n23_call_proc_staged_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n25_lit_string_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_lit_string_bx, @function
n25_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_267_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n26_var_ref_α
.Llit_string_α_267_0:   .quad            .Llit_string_α_267_0_s
.Llit_string_α_267_0_s: .string          "-"
                        .size            n25_lit_string_bx, .-n25_lit_string_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n28_call_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n29_call_α
n28_call_β:             mov              r11, 29;                             jmp   d$2F3_step
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n30_var_ref_α
n29_call_β:             mov              r11, 30;                             jmp   d$2F3_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n31_var_ref_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n32_call_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   d$2F3_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_281_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n35_var_ref_α
.Llit_string_α_281_0:   .quad            .Llit_string_α_281_0_s
.Llit_string_α_281_0_s: .string          "-"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n36_var_ref_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n37_call_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n38_call_α
n37_call_β:             mov              r11, 38;                             jmp   d$2F3_step
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n39_cut_α
n38_call_β:             mov              r11, 39;                             jmp   d$2F3_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_cut_bx, @function
n39_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_cut_α:              mov              r11, 40
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n40_var_ref_α
                        .size            n39_cut_bx, .-n39_cut_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n42_var_ref_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n43_call_proc_staged_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_call_proc_staged_bx, @function
n43_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: mov              r11, 44
                        mov              qword ptr [rbp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_200
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_297_201
.Lcall_proc_staged_α_297_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_297_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_297_203
.Lcall_proc_staged_α_297_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_297_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_297_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_297_205
.Lcall_proc_staged_α_297_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_297_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_297_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_297_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_297_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_297_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_297_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_297_3:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_297_21
                        add              rsp, 32
.Lcall_proc_staged_α_297_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_297_2
.Lcall_proc_staged_α_297_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1072], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_297_2
.Lcall_proc_staged_α_297_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_297_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_297_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_297_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
.Lcall_proc_staged_α_297_29:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n44_var_ref_α
n43_call_proc_staged_β: mov              r11, 44
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_297_22
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_297_22
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_297_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_297_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n44_var_ref_α
.Lcall_proc_staged_α_297_0:
                        .quad            .Lcall_proc_staged_α_297_0_s
.Lcall_proc_staged_α_297_0_s:
                        .string          "d/3"
                        .size            n43_call_proc_staged_bx, .-n43_call_proc_staged_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n47_call_proc_staged_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_proc_staged_bx, @function
n47_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α: mov              r11, 48
                        mov              qword ptr [rbp + 928], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_305_200
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_305_201
.Lcall_proc_staged_α_305_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_305_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_305_202
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_305_203
.Lcall_proc_staged_α_305_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_305_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_305_204
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_305_205
.Lcall_proc_staged_α_305_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_305_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_305_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_305_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_305_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_305_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_305_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_305_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_305_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_305_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_305_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_305_3:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_305_21
                        add              rsp, 32
.Lcall_proc_staged_α_305_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_305_2
.Lcall_proc_staged_α_305_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 928], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_305_2
.Lcall_proc_staged_α_305_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_305_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_call_proc_staged_β
.Lcall_proc_staged_α_305_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_305_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
.Lcall_proc_staged_α_305_29:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n43_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
n47_call_proc_staged_β: mov              r11, 48
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_305_22
                        mov              rax, qword ptr [rbp + 928]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_305_22
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_305_22:
                                                                              jmp   n43_call_proc_staged_β
.Lcall_proc_staged_α_305_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    n43_call_proc_staged_β
                                                                              jmp   d$2F3_ret1
.Lcall_proc_staged_α_305_0:
                        .quad            .Lcall_proc_staged_α_305_0_s
.Lcall_proc_staged_α_305_0_s:
                        .string          "d/3"
                        .size            n47_call_proc_staged_bx, .-n47_call_proc_staged_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n49_lit_string_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_308_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n50_var_ref_α
.Llit_string_α_308_0:   .quad            .Llit_string_α_308_0_s
.Llit_string_α_308_0_s: .string          "*"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n51_var_ref_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n52_call_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_call_bx, @function
n52_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             mov              r11, 53
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n53_call_α
n52_call_β:             mov              r11, 53;                             jmp   d$2F3_step
                        .size            n52_call_bx, .-n52_call_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             mov              r11, 54
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n54_var_ref_α
n53_call_β:             mov              r11, 54;                             jmp   d$2F3_step
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n55_var_ref_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n56_call_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_call_bx, @function
n56_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n57_var_ref_α
n56_call_β:             mov              r11, 57;                             jmp   d$2F3_step
                        .size            n56_call_bx, .-n56_call_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n58_lit_string_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_string_bx, @function
n58_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 59
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_322_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n59_lit_string_α
.Llit_string_α_322_0:   .quad            .Llit_string_α_322_0_s
.Llit_string_α_322_0_s: .string          "+"
                        .size            n58_lit_string_bx, .-n58_lit_string_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_323_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n60_var_ref_α
.Llit_string_α_323_0:   .quad            .Llit_string_α_323_0_s
.Llit_string_α_323_0_s: .string          "*"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n61_var_ref_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n62_call_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n63_lit_string_α
n62_call_β:             mov              r11, 63;                             jmp   d$2F3_ω
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 64
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_329_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n64_var_ref_α
.Llit_string_α_329_0:   .quad            .Llit_string_α_329_0_s
.Llit_string_α_329_0_s: .string          "*"
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n65_var_ref_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n66_call_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 67
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n67_call_α
n66_call_β:             mov              r11, 67;                             jmp   d$2F3_ω
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_call_bx, @function
n67_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             mov              r11, 68
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n68_call_α
n67_call_β:             mov              r11, 68;                             jmp   d$2F3_step
                        .size            n67_call_bx, .-n67_call_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 69
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n69_cut_α
n68_call_β:             mov              r11, 69;                             jmp   d$2F3_step
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_cut_bx, @function
n69_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_cut_α:              mov              r11, 70
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n70_var_ref_α
                        .size            n69_cut_bx, .-n69_cut_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n72_var_ref_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n73_call_proc_staged_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_proc_staged_bx, @function
n73_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α: mov              r11, 74
                        mov              qword ptr [rbp + 1872], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_346_200
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_346_201
.Lcall_proc_staged_α_346_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_346_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_346_202
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_346_203
.Lcall_proc_staged_α_346_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_346_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_346_204
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_346_205
.Lcall_proc_staged_α_346_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_346_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_346_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_346_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_346_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_346_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_346_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_346_3:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_346_21
                        add              rsp, 32
.Lcall_proc_staged_α_346_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_346_2
.Lcall_proc_staged_α_346_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1872], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_346_2
.Lcall_proc_staged_α_346_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_346_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_346_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_346_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
.Lcall_proc_staged_α_346_29:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n74_var_ref_α
n73_call_proc_staged_β: mov              r11, 74
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_346_22
                        mov              rax, qword ptr [rbp + 1872]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_346_22
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_346_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_346_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n74_var_ref_α
.Lcall_proc_staged_α_346_0:
                        .quad            .Lcall_proc_staged_α_346_0_s
.Lcall_proc_staged_α_346_0_s:
                        .string          "d/3"
                        .size            n73_call_proc_staged_bx, .-n73_call_proc_staged_bx
                        .type            n74_var_ref_bx, @function
n74_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n75_var_ref_α
                        .size            n74_var_ref_bx, .-n74_var_ref_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n76_var_ref_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n77_call_proc_staged_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_call_proc_staged_bx, @function
n77_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α: mov              r11, 78
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_354_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_354_201
.Lcall_proc_staged_α_354_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_354_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_354_202
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_354_203
.Lcall_proc_staged_α_354_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_354_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_354_204
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_354_205
.Lcall_proc_staged_α_354_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_354_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_354_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_354_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_354_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_354_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_354_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_354_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_354_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_354_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_354_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_354_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_354_21
                        add              rsp, 32
.Lcall_proc_staged_α_354_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_354_2
.Lcall_proc_staged_α_354_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_354_2
.Lcall_proc_staged_α_354_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_354_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_call_proc_staged_β
.Lcall_proc_staged_α_354_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_354_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
.Lcall_proc_staged_α_354_29:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n73_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
n77_call_proc_staged_β: mov              r11, 78
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_354_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_354_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_354_22:
                                                                              jmp   n73_call_proc_staged_β
.Lcall_proc_staged_α_354_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    n73_call_proc_staged_β
                                                                              jmp   d$2F3_ret2
.Lcall_proc_staged_α_354_0:
                        .quad            .Lcall_proc_staged_α_354_0_s
.Lcall_proc_staged_α_354_0_s:
                        .string          "d/3"
                        .size            n77_call_proc_staged_bx, .-n77_call_proc_staged_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n79_lit_string_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rbp + 3920], 2            # result
                        mov              dword ptr [rbp + 3924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_357_0]
                        mov              qword ptr [rbp + 3928], rax;         jmp   n80_var_ref_α
.Llit_string_α_357_0:   .quad            .Llit_string_α_357_0_s
.Llit_string_α_357_0_s: .string          "/"
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n81_var_ref_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n82_call_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 83
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3864], rax
                        lea              rdi, [rbp + 3856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n83_call_α
n82_call_β:             mov              r11, 83;                             jmp   d$2F3_step
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 84
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3752], rax
                        lea              rdi, [rbp + 3744]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n84_var_ref_α
n83_call_β:             mov              r11, 84;                             jmp   d$2F3_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n85_var_ref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n86_call_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             mov              r11, 87
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3656], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n87_var_ref_α
n86_call_β:             mov              r11, 87;                             jmp   d$2F3_step
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx;         jmp   n88_lit_string_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rbp + 3616], 2            # result
                        mov              dword ptr [rbp + 3620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_371_0]
                        mov              qword ptr [rbp + 3624], rax;         jmp   n89_lit_string_α
.Llit_string_α_371_0:   .quad            .Llit_string_α_371_0_s
.Llit_string_α_371_0_s: .string          "/"
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rbp + 3392], 2            # result
                        mov              dword ptr [rbp + 3396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_372_0]
                        mov              qword ptr [rbp + 3400], rax;         jmp   n90_lit_string_α
.Llit_string_α_372_0:   .quad            .Llit_string_α_372_0_s
.Llit_string_α_372_0_s: .string          "-"
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 91
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_373_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n91_var_ref_α
.Llit_string_α_373_0:   .quad            .Llit_string_α_373_0_s
.Llit_string_α_373_0_s: .string          "*"
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n93_call_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 94
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n94_lit_string_α
n93_call_β:             mov              r11, 94;                             jmp   d$2F3_ω
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 95
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_379_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n95_var_ref_α
.Llit_string_α_379_0:   .quad            .Llit_string_α_379_0_s
.Llit_string_α_379_0_s: .string          "*"
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n96_var_ref_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n97_call_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             mov              r11, 98
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n98_call_α
n97_call_β:             mov              r11, 98;                             jmp   d$2F3_ω
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 99
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n99_lit_string_α
n98_call_β:             mov              r11, 99;                             jmp   d$2F3_ω
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 100
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_386_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n100_var_ref_α
.Llit_string_α_386_0:   .quad            .Llit_string_α_386_0_s
.Llit_string_α_386_0_s: .string          "^"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n101_lit_integer_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_389_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n102_call_α
.Llit_integer_α_389_0:  .quad            2
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            mov              r11, 103
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n103_call_α
n102_call_β:            mov              r11, 103;                            jmp   d$2F3_ω
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_call_bx, @function
n103_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_call_α:            mov              r11, 104
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3560], rax
                        lea              rdi, [rbp + 3552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n104_call_α
n103_call_β:            mov              r11, 104;                            jmp   d$2F3_step
                        .size            n103_call_bx, .-n103_call_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3000], rax
                        lea              rdi, [rbp + 2992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n105_cut_α
n104_call_β:            mov              r11, 105;                            jmp   d$2F3_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_cut_bx, @function
n105_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_cut_α:             mov              r11, 106
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n106_var_ref_α
                        .size            n105_cut_bx, .-n105_cut_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n107_var_ref_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n108_var_ref_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n109_call_proc_staged_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_call_proc_staged_bx, @function
n109_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        mov              r11, 110
                        mov              qword ptr [rbp + 2896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_402_200
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_402_201
.Lcall_proc_staged_α_402_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_402_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_402_202
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_402_203
.Lcall_proc_staged_α_402_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_402_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_402_204
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_402_205
.Lcall_proc_staged_α_402_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_402_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_402_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_402_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_402_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_402_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_402_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_402_3:
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_402_21
                        add              rsp, 32
.Lcall_proc_staged_α_402_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_402_2
.Lcall_proc_staged_α_402_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_402_2
.Lcall_proc_staged_α_402_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_402_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_402_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_402_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
.Lcall_proc_staged_α_402_29:
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n110_var_ref_α
n109_call_proc_staged_β:
                        mov              r11, 110
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_402_22
                        mov              rax, qword ptr [rbp + 2896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_402_22
                        mov              rcx, qword ptr [rbp + 2904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_402_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_402_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n110_var_ref_α
.Lcall_proc_staged_α_402_0:
                        .quad            .Lcall_proc_staged_α_402_0_s
.Lcall_proc_staged_α_402_0_s:
                        .string          "d/3"
                        .size            n109_call_proc_staged_bx, .-n109_call_proc_staged_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n111_var_ref_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n112_var_ref_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n113_call_proc_staged_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_call_proc_staged_bx, @function
n113_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        mov              r11, 114
                        mov              qword ptr [rbp + 2752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_410_200
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_410_201
.Lcall_proc_staged_α_410_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_410_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_410_202
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_410_203
.Lcall_proc_staged_α_410_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_410_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_410_204
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_410_205
.Lcall_proc_staged_α_410_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_410_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_410_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_410_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_410_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_410_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_410_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_410_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_410_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_410_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_410_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_410_3:
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_410_21
                        add              rsp, 32
.Lcall_proc_staged_α_410_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_410_2
.Lcall_proc_staged_α_410_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_410_2
.Lcall_proc_staged_α_410_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_410_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_call_proc_staged_β
.Lcall_proc_staged_α_410_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_410_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
.Lcall_proc_staged_α_410_29:
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n109_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
n113_call_proc_staged_β:
                        mov              r11, 114
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_410_22
                        mov              rax, qword ptr [rbp + 2752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_410_22
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_410_22:
                                                                              jmp   n109_call_proc_staged_β
.Lcall_proc_staged_α_410_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    n109_call_proc_staged_β
                                                                              jmp   d$2F3_ret3
.Lcall_proc_staged_α_410_0:
                        .quad            .Lcall_proc_staged_α_410_0_s
.Lcall_proc_staged_α_410_0_s:
                        .string          "d/3"
                        .size            n113_call_proc_staged_bx, .-n113_call_proc_staged_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx;         jmp   n115_lit_string_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_lit_string_bx, @function
n115_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 5040], 2            # result
                        mov              dword ptr [rbp + 5044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_413_0]
                        mov              qword ptr [rbp + 5048], rax;         jmp   n116_var_ref_α
.Llit_string_α_413_0:   .quad            .Llit_string_α_413_0_s
.Llit_string_α_413_0_s: .string          "^"
                        .size            n115_lit_string_bx, .-n115_lit_string_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx;         jmp   n118_call_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 119
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 5016], rax
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4992], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 5000], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 4984], rax
                        lea              rdi, [rbp + 4976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4960], rax
                        mov              qword ptr [rbp + 4968], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n119_call_α
n118_call_β:            mov              r11, 119;                            jmp   d$2F3_step
                        .size            n118_call_bx, .-n118_call_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 120
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 4888], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4872], rax
                        lea              rdi, [rbp + 4864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n120_var_ref_α
n119_call_β:            mov              r11, 120;                            jmp   d$2F3_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx;         jmp   n121_var_ref_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_var_ref_bx, @function
n121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx;         jmp   n122_call_α
                        .size            n121_var_ref_bx, .-n121_var_ref_bx
                        .type            n122_call_bx, @function
n122_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 4784], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 4792], rax
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n123_var_ref_α
n122_call_β:            mov              r11, 123;                            jmp   d$2F3_step
                        .size            n122_call_bx, .-n122_call_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx;         jmp   n124_lit_string_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + 4736], 2            # result
                        mov              dword ptr [rbp + 4740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_427_0]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n125_lit_string_α
.Llit_string_α_427_0:   .quad            .Llit_string_α_427_0_s
.Llit_string_α_427_0_s: .string          "*"
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_lit_string_bx, @function
n125_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 4512], 2            # result
                        mov              dword ptr [rbp + 4516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_428_0]
                        mov              qword ptr [rbp + 4520], rax;         jmp   n126_var_ref_α
.Llit_string_α_428_0:   .quad            .Llit_string_α_428_0_s
.Llit_string_α_428_0_s: .string          "*"
                        .size            n125_lit_string_bx, .-n125_lit_string_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n127_var_ref_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_var_ref_bx, @function
n127_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx;         jmp   n128_call_α
                        .size            n127_var_ref_bx, .-n127_var_ref_bx
                        .type            n128_call_bx, @function
n128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4512]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4520]
                        mov              qword ptr [rbp + 4456], rax
                        lea              rdi, [rbp + 4448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n129_lit_string_α
n128_call_β:            mov              r11, 129;                            jmp   d$2F3_ω
                        .size            n128_call_bx, .-n128_call_bx
                        .type            n129_lit_string_bx, @function
n129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rbp + 4640], 2            # result
                        mov              dword ptr [rbp + 4644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rbp + 4648], rax;         jmp   n130_var_ref_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "^"
                        .size            n129_lit_string_bx, .-n129_lit_string_bx
                        .type            n130_var_ref_bx, @function
n130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx;         jmp   n131_var_ref_α
                        .size            n130_var_ref_bx, .-n130_var_ref_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx;         jmp   n132_call_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_call_bx, @function
n132_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            mov              r11, 133
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n133_call_α
n132_call_β:            mov              r11, 133;                            jmp   d$2F3_ω
                        .size            n132_call_bx, .-n132_call_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n134_call_α
n133_call_β:            mov              r11, 134;                            jmp   d$2F3_step
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        lea              rdi, [rbp + 4336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n135_cut_α
n134_call_β:            mov              r11, 135;                            jmp   d$2F3_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_cut_bx, @function
n135_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_cut_α:             mov              r11, 136
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n136_var_ref_α
                        .size            n135_cut_bx, .-n135_cut_bx
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx;         jmp   n137_call_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_call_bx, @function
n137_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            mov              r11, 138
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4272]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_pl_integer@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n138_var_ref_α
n137_call_β:            mov              r11, 138;                            jmp   d$2F3_ω
                        .size            n137_call_bx, .-n137_call_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7584]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx;         jmp   n139_var_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n140_lit_integer_α
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_lit_integer_bx, @function
n140_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_451_0]
                        mov              qword ptr [rbp + 4248], rax;         jmp   n141_call_α
.Llit_integer_α_451_0:  .quad            1
                        .size            n140_lit_integer_bx, .-n140_lit_integer_bx
                        .type            n141_call_bx, @function
n141_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n142_call_α
n141_call_β:            mov              r11, 142;                            jmp   d$2F3_step
                        .size            n141_call_bx, .-n141_call_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n143_var_ref_α
n142_call_β:            mov              r11, 143;                            jmp   d$2F3_ω
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx;         jmp   n144_var_ref_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx;         jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7616]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx;         jmp   n146_call_proc_staged_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_call_proc_staged_bx, @function
n146_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        mov              r11, 147
                        mov              qword ptr [rbp + 4000], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_461_200
                        mov              rax, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_461_201
.Lcall_proc_staged_α_461_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4032]
                        mov              rdx, qword ptr [rbp + 4040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_461_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_461_202
                        mov              rax, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_461_203
.Lcall_proc_staged_α_461_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4048]
                        mov              rdx, qword ptr [rbp + 4056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_461_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_461_204
                        mov              rax, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_461_205
.Lcall_proc_staged_α_461_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4064]
                        mov              rdx, qword ptr [rbp + 4072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_461_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_461_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_461_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_461_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_461_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_461_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_461_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_461_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_461_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_461_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_461_3:
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_461_21
                        add              rsp, 32
.Lcall_proc_staged_α_461_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_461_2
.Lcall_proc_staged_α_461_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4000], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_461_2
.Lcall_proc_staged_α_461_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_461_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_461_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_461_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
.Lcall_proc_staged_α_461_29:
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
n146_call_proc_staged_β:
                        mov              r11, 147
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_461_22
                        mov              rax, qword ptr [rbp + 4000]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_461_22
                        mov              rcx, qword ptr [rbp + 4008]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_461_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_461_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret4
.Lcall_proc_staged_α_461_0:
                        .quad            .Lcall_proc_staged_α_461_0_s
.Lcall_proc_staged_α_461_0_s:
                        .string          "d/3"
                        .size            n146_call_proc_staged_bx, .-n146_call_proc_staged_bx
                        .type            n147_var_ref_bx, @function
n147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5536], rax
                        mov              qword ptr [rbp + 5544], rdx;         jmp   n148_lit_string_α
                        .size            n147_var_ref_bx, .-n147_var_ref_bx
                        .type            n148_lit_string_bx, @function
n148_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rbp + 5632], 2            # result
                        mov              dword ptr [rbp + 5636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rbp + 5640], rax;         jmp   n149_var_ref_α
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "-"
                        .size            n148_lit_string_bx, .-n148_lit_string_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx;         jmp   n150_call_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5592], rax
                        lea              rdi, [rbp + 5584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n151_call_α
n150_call_β:            mov              r11, 151;                            jmp   d$2F3_step
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 152
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5496], rax
                        lea              rdi, [rbp + 5488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n152_var_ref_α
n151_call_β:            mov              r11, 152;                            jmp   d$2F3_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx;         jmp   n153_var_ref_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx;         jmp   n154_call_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 155
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5416], rax
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5400], rax
                        lea              rdi, [rbp + 5392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n155_var_ref_α
n154_call_β:            mov              r11, 155;                            jmp   d$2F3_step
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx;         jmp   n156_lit_string_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rbp + 5360], 2            # result
                        mov              dword ptr [rbp + 5364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 5368], rax;         jmp   n157_var_ref_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "-"
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_var_ref_bx, @function
n157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n158_call_α
                        .size            n157_var_ref_bx, .-n157_var_ref_bx
                        .type            n158_call_bx, @function
n158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5336], rax
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5320], rax
                        lea              rdi, [rbp + 5312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n159_call_α
n158_call_β:            mov              r11, 159;                            jmp   d$2F3_step
                        .size            n158_call_bx, .-n158_call_bx
                        .type            n159_call_bx, @function
n159_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5240], rax
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5224], rax
                        lea              rdi, [rbp + 5216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n160_cut_α
n159_call_β:            mov              r11, 160;                            jmp   d$2F3_step
                        .size            n159_call_bx, .-n159_call_bx
                        .type            n160_cut_bx, @function
n160_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_cut_α:             mov              r11, 161
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n161_var_ref_α
                        .size            n160_cut_bx, .-n160_cut_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx;         jmp   n162_var_ref_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx;         jmp   n163_var_ref_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n164_call_proc_staged_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_call_proc_staged_bx, @function
n164_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        mov              r11, 165
                        mov              qword ptr [rbp + 5120], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_490_200
                        mov              rax, qword ptr [rbp + 5152]
                        mov              rdx, qword ptr [rbp + 5160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_490_201
.Lcall_proc_staged_α_490_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5152]
                        mov              rdx, qword ptr [rbp + 5160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_490_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_490_202
                        mov              rax, qword ptr [rbp + 5168]
                        mov              rdx, qword ptr [rbp + 5176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_490_203
.Lcall_proc_staged_α_490_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5168]
                        mov              rdx, qword ptr [rbp + 5176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_490_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_490_204
                        mov              rax, qword ptr [rbp + 5184]
                        mov              rdx, qword ptr [rbp + 5192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_490_205
.Lcall_proc_staged_α_490_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5184]
                        mov              rdx, qword ptr [rbp + 5192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_490_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_490_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_490_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_490_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_490_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_490_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_490_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_490_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_490_3:
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_490_21
                        add              rsp, 32
.Lcall_proc_staged_α_490_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5120], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_490_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_490_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_490_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5056]
                        mov              rdx, qword ptr [rbp + 5064]
.Lcall_proc_staged_α_490_29:
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
n164_call_proc_staged_β:
                        mov              r11, 165
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_490_22
                        mov              rax, qword ptr [rbp + 5120]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_490_22
                        mov              rcx, qword ptr [rbp + 5128]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_490_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_490_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret5
.Lcall_proc_staged_α_490_0:
                        .quad            .Lcall_proc_staged_α_490_0_s
.Lcall_proc_staged_α_490_0_s:
                        .string          "d/3"
                        .size            n164_call_proc_staged_bx, .-n164_call_proc_staged_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n166_lit_string_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_lit_string_bx, @function
n166_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rbp + 6336], 2            # result
                        mov              dword ptr [rbp + 6340], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 6344], rax;         jmp   n167_var_ref_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "exp"
                        .size            n166_lit_string_bx, .-n166_lit_string_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n168_call_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6312], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6296], rax
                        lea              rdi, [rbp + 6288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n169_call_α
n168_call_β:            mov              r11, 169;                            jmp   d$2F3_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_call_bx, @function
n169_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6200], rax
                        lea              rdi, [rbp + 6192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n170_var_ref_α
n169_call_β:            mov              r11, 170;                            jmp   d$2F3_step
                        .size            n169_call_bx, .-n169_call_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n172_call_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6120], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6104], rax
                        lea              rdi, [rbp + 6096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n173_var_ref_α
n172_call_β:            mov              r11, 173;                            jmp   d$2F3_step
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n174_lit_string_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 6064], 2            # result
                        mov              dword ptr [rbp + 6068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_505_0]
                        mov              qword ptr [rbp + 6072], rax;         jmp   n175_lit_string_α
.Llit_string_α_505_0:   .quad            .Llit_string_α_505_0_s
.Llit_string_α_505_0_s: .string          "*"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_lit_string_bx, @function
n175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 5952], 2            # result
                        mov              dword ptr [rbp + 5956], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_506_0]
                        mov              qword ptr [rbp + 5960], rax;         jmp   n176_var_ref_α
.Llit_string_α_506_0:   .quad            .Llit_string_α_506_0_s
.Llit_string_α_506_0_s: .string          "exp"
                        .size            n175_lit_string_bx, .-n175_lit_string_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n177_call_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_bx, @function
n177_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5928], rax
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5904], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5912], rax
                        lea              rdi, [rbp + 5904]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   n178_var_ref_α
n177_call_β:            mov              r11, 178;                            jmp   d$2F3_ω
                        .size            n177_call_bx, .-n177_call_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n179_call_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_call_bx, @function
n179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6008], rax
                        lea              rdi, [rbp + 6000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n180_call_α
n179_call_β:            mov              r11, 180;                            jmp   d$2F3_step
                        .size            n179_call_bx, .-n179_call_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5816], rax
                        lea              rdi, [rbp + 5808]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n181_cut_α
n180_call_β:            mov              r11, 181;                            jmp   d$2F3_step
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_cut_bx, @function
n181_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_cut_α:             mov              r11, 182
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n182_var_ref_α
                        .size            n181_cut_bx, .-n181_cut_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx;         jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n184_var_ref_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n185_call_proc_staged_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_call_proc_staged_bx, @function
n185_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        mov              r11, 186
                        mov              qword ptr [rbp + 5712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_523_200
                        mov              rax, qword ptr [rbp + 5744]
                        mov              rdx, qword ptr [rbp + 5752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_523_201
.Lcall_proc_staged_α_523_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5744]
                        mov              rdx, qword ptr [rbp + 5752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_523_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_523_202
                        mov              rax, qword ptr [rbp + 5760]
                        mov              rdx, qword ptr [rbp + 5768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_523_203
.Lcall_proc_staged_α_523_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5760]
                        mov              rdx, qword ptr [rbp + 5768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_523_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_523_204
                        mov              rax, qword ptr [rbp + 5776]
                        mov              rdx, qword ptr [rbp + 5784]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_523_205
.Lcall_proc_staged_α_523_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5776]
                        mov              rdx, qword ptr [rbp + 5784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_523_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_523_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_523_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_523_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_523_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_523_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_523_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_523_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_523_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_523_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_523_3:
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_523_21
                        add              rsp, 32
.Lcall_proc_staged_α_523_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_523_2
.Lcall_proc_staged_α_523_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5712], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_523_2
.Lcall_proc_staged_α_523_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_523_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_523_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_523_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5648]
                        mov              rdx, qword ptr [rbp + 5656]
.Lcall_proc_staged_α_523_29:
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
n185_call_proc_staged_β:
                        mov              r11, 186
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_523_22
                        mov              rax, qword ptr [rbp + 5712]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_523_22
                        mov              rcx, qword ptr [rbp + 5720]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_523_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_523_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret6
.Lcall_proc_staged_α_523_0:
                        .quad            .Lcall_proc_staged_α_523_0_s
.Lcall_proc_staged_α_523_0_s:
                        .string          "d/3"
                        .size            n185_call_proc_staged_bx, .-n185_call_proc_staged_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx;         jmp   n187_lit_string_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_lit_string_bx, @function
n187_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rbp + 6960], 2            # result
                        mov              dword ptr [rbp + 6964], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_526_0]
                        mov              qword ptr [rbp + 6968], rax;         jmp   n188_var_ref_α
.Llit_string_α_526_0:   .quad            .Llit_string_α_526_0_s
.Llit_string_α_526_0_s: .string          "log"
                        .size            n187_lit_string_bx, .-n187_lit_string_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n189_call_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_call_bx, @function
n189_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6928], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6936], rax
                        mov              rax, qword ptr [rbp + 6960]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6968]
                        mov              qword ptr [rbp + 6920], rax
                        lea              rdi, [rbp + 6912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n190_call_α
n189_call_β:            mov              r11, 190;                            jmp   d$2F3_step
                        .size            n189_call_bx, .-n189_call_bx
                        .type            n190_call_bx, @function
n190_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_α:            mov              r11, 191
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6824], rax
                        lea              rdi, [rbp + 6816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n191_var_ref_α
n190_call_β:            mov              r11, 191;                            jmp   d$2F3_step
                        .size            n190_call_bx, .-n190_call_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6768], rax
                        mov              qword ptr [rbp + 6776], rdx;         jmp   n192_var_ref_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx;         jmp   n193_call_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_call_bx, @function
n193_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6744], rax
                        mov              rax, qword ptr [rbp + 6768]
                        mov              qword ptr [rbp + 6720], rax
                        mov              rax, qword ptr [rbp + 6776]
                        mov              qword ptr [rbp + 6728], rax
                        lea              rdi, [rbp + 6720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n194_var_ref_α
n193_call_β:            mov              r11, 194;                            jmp   d$2F3_step
                        .size            n193_call_bx, .-n193_call_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6560], rax
                        mov              qword ptr [rbp + 6568], rdx;         jmp   n195_lit_string_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_lit_string_bx, @function
n195_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 6688], 2            # result
                        mov              dword ptr [rbp + 6692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_538_0]
                        mov              qword ptr [rbp + 6696], rax;         jmp   n196_var_ref_α
.Llit_string_α_538_0:   .quad            .Llit_string_α_538_0_s
.Llit_string_α_538_0_s: .string          "/"
                        .size            n195_lit_string_bx, .-n195_lit_string_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 6576], rax
                        mov              qword ptr [rbp + 6584], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx;         jmp   n198_call_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6664], rax
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6632], rax
                        lea              rdi, [rbp + 6624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n199_call_α
n198_call_β:            mov              r11, 199;                            jmp   d$2F3_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_call_bx, @function
n199_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:            mov              r11, 200
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6528], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6536], rax
                        mov              rax, qword ptr [rbp + 6560]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6568]
                        mov              qword ptr [rbp + 6520], rax
                        lea              rdi, [rbp + 6512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n200_cut_α
n199_call_β:            mov              r11, 200;                            jmp   d$2F3_step
                        .size            n199_call_bx, .-n199_call_bx
                        .type            n200_cut_bx, @function
n200_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_cut_α:             mov              r11, 201
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n201_var_ref_α
                        .size            n200_cut_bx, .-n200_cut_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n202_var_ref_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7568]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx;         jmp   n203_var_ref_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_var_ref_bx, @function
n203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx;         jmp   n204_call_proc_staged_α
                        .size            n203_var_ref_bx, .-n203_var_ref_bx
                        .type            n204_call_proc_staged_bx, @function
n204_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_proc_staged_α:
                        mov              r11, 205
                        mov              qword ptr [rbp + 6416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_554_200
                        mov              rax, qword ptr [rbp + 6448]
                        mov              rdx, qword ptr [rbp + 6456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_554_201
.Lcall_proc_staged_α_554_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6448]
                        mov              rdx, qword ptr [rbp + 6456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_554_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_554_202
                        mov              rax, qword ptr [rbp + 6464]
                        mov              rdx, qword ptr [rbp + 6472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_554_203
.Lcall_proc_staged_α_554_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6464]
                        mov              rdx, qword ptr [rbp + 6472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_554_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_554_204
                        mov              rax, qword ptr [rbp + 6480]
                        mov              rdx, qword ptr [rbp + 6488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_554_205
.Lcall_proc_staged_α_554_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 6480]
                        mov              rdx, qword ptr [rbp + 6488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_554_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_554_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_554_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7728]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_554_99
                        mov              r10, qword ptr [rbp + 7688]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_554_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_554_99
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rdx, qword ptr [rbp + 7712]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rax
.Lcall_proc_staged_α_554_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_554_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_554_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_554_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_554_3:
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_554_21
                        add              rsp, 32
.Lcall_proc_staged_α_554_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_554_2
.Lcall_proc_staged_α_554_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_554_2
.Lcall_proc_staged_α_554_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_554_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   d$2F3_ω
.Lcall_proc_staged_α_554_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_554_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6352]
                        mov              rdx, qword ptr [rbp + 6360]
.Lcall_proc_staged_α_554_29:
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
n204_call_proc_staged_β:
                        mov              r11, 205
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_554_22
                        mov              rax, qword ptr [rbp + 6416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_554_22
                        mov              rcx, qword ptr [rbp + 6424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_554_22:
                                                                              jmp   d$2F3_ω
.Lcall_proc_staged_α_554_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        cmp              al, 104;                             je    d$2F3_ω
                                                                              jmp   d$2F3_ret7
.Lcall_proc_staged_α_554_0:
                        .quad            .Lcall_proc_staged_α_554_0_s
.Lcall_proc_staged_α_554_0_s:
                        .string          "d/3"
                        .size            n204_call_proc_staged_bx, .-n204_call_proc_staged_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx;         jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx;         jmp   n207_call_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7200], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7208], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7192], rax
                        lea              rdi, [rbp + 7184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n208_var_ref_α
n207_call_β:            mov              r11, 208;                            jmp   d$2F3_step
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx;         jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7632]
                        mov              qword ptr [rbp + 7152], rax
                        mov              qword ptr [rbp + 7160], rdx;         jmp   n210_call_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 211
                        mov              rax, qword ptr [rbp + 7152]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 7160]
                        mov              qword ptr [rbp + 7112], rax
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7088], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7096], rax
                        lea              rdi, [rbp + 7088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n211_var_ref_α
n210_call_β:            mov              r11, 211;                            jmp   d$2F3_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx;         jmp   n212_lit_integer_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 7056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_567_0]
                        mov              qword ptr [rbp + 7064], rax;         jmp   n213_call_α
.Llit_integer_α_567_0:  .quad            1
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 7040]
                        mov              qword ptr [rbp + 6992], rax
                        mov              rax, qword ptr [rbp + 7048]
                        mov              qword ptr [rbp + 7000], rax
                        lea              rdi, [rbp + 6992]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n214_cut_α
n213_call_β:            mov              r11, 214;                            jmp   d$2F3_step
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_cut_bx, @function
n214_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_cut_α:             mov              r11, 215
                        mov              qword ptr [rbp + 7672], 0
                        mov              qword ptr [rbp + 7680], 0
                        lea              rdi, [rbp + 7664]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   d$2F3_γ
                        .size            n214_cut_bx, .-n214_cut_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx;         jmp   n216_var_ref_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7600]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx;         jmp   n217_call_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7488], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7496], rax
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 7472], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 7480], rax
                        lea              rdi, [rbp + 7472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7456], rax
                        mov              qword ptr [rbp + 7464], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n218_var_ref_α
n217_call_β:            mov              r11, 218;                            jmp   d$2F3_step
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_var_ref_bx, @function
n218_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx;         jmp   n219_var_ref_α
                        .size            n218_var_ref_bx, .-n218_var_ref_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx;         jmp   n220_call_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_bx, @function
n220_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 7440]
                        mov              qword ptr [rbp + 7392], rax
                        mov              rax, qword ptr [rbp + 7448]
                        mov              qword ptr [rbp + 7400], rax
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 7384], rax
                        lea              rdi, [rbp + 7376]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   n221_var_ref_α
n220_call_β:            mov              r11, 221;                            jmp   d$2F3_step
                        .size            n220_call_bx, .-n220_call_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx;         jmp   n222_lit_integer_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_lit_integer_bx, @function
n222_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     mov              r11, 223
                        mov              qword ptr [rbp + 7344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_583_0]
                        mov              qword ptr [rbp + 7352], rax;         jmp   n223_call_α
.Llit_integer_α_583_0:  .quad            0
                        .size            n222_lit_integer_bx, .-n222_lit_integer_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 224
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7288], rax
                        lea              rdi, [rbp + 7280]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx
                        cmp              al, 104;                             je    d$2F3_step
                                                                              jmp   d$2F3_γ
n223_call_β:            mov              r11, 224;                            jmp   d$2F3_step
                        .size            n223_call_bx, .-n223_call_bx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret0:
                        lea              rax, [rip + n23_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret1:
                        lea              rax, [rip + n47_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret2:
                        lea              rax, [rip + n77_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret3:
                        lea              rax, [rip + n113_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret4:
                        lea              rax, [rip + n146_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret5:
                        lea              rax, [rip + n164_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret6:
                        lea              rax, [rip + n185_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ret7:
                        lea              rax, [rip + n204_call_proc_staged_β]
                        mov              qword ptr [rbp + 7680], rax
                                                                              jmp   d$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_step:
                        mov              rdi, qword ptr [rbp + 7664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7680], 0
                        mov              qword ptr [rbp + 7632], 0
                        mov              qword ptr [rbp + 7640], 0
                        mov              qword ptr [rbp + 7568], 0
                        mov              qword ptr [rbp + 7576], 0
                        mov              qword ptr [rbp + 7600], 0
                        mov              qword ptr [rbp + 7608], 0
                        mov              qword ptr [rbp + 7552], 0
                        mov              qword ptr [rbp + 7560], 0
                        mov              qword ptr [rbp + 7616], 0
                        mov              qword ptr [rbp + 7624], 0
                        mov              qword ptr [rbp + 7584], 0
                        mov              qword ptr [rbp + 7592], 0
                        mov              rax, qword ptr [rbp + 7672]
                        test             rax, rax
                                                                              je    d$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt1:
                        lea              rax, [rip + d$2F3_alt2]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt2:
                        lea              rax, [rip + d$2F3_alt3]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt3:
                        lea              rax, [rip + d$2F3_alt4]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt4:
                        lea              rax, [rip + d$2F3_alt5]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt5:
                        lea              rax, [rip + d$2F3_alt6]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt6:
                        lea              rax, [rip + d$2F3_alt7]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt7:
                        lea              rax, [rip + d$2F3_alt8]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt8:
                        lea              rax, [rip + d$2F3_alt9]
                        mov              qword ptr [rbp + 7672], rax
                                                                              jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 7672], rax
                        mov              r13, qword ptr [rbp + 7688]
                                                                              jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_β:
                        test             r15, r15
                                                                              jne   d$2F3_ω
                        mov              rax, qword ptr [rbp + 7680]
                        mov              qword ptr [rbp + 7680], 0
                        test             rax, rax
                                                                              jne   d$2F3_βres
                                                                              jmp   d$2F3_step
d$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 7704]
                        mov              rax, qword ptr [rbp + 7688]
                        cmp              r13, rax;                            je    d$2F3_altdet
                        lea              rdx, [rip + d$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rcx
d$2F3_altdet:           xor              eax, eax
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
d$2F3_ω:
                        mov              rcx, qword ptr [rbp + 7712]
                        mov              r13, qword ptr [rbp + 7688]
                        lea              rsp, [rbp + 7728]
                        mov              rbp, qword ptr [rbp + 7720];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F0:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], r12
                        mov              rdi, rsp
                        mov              esi, 48
                        mov              edx, 64
                        call             rt_jmp_frame_lexprep2@PLT
top$2F0_α_body:
                        .type            n585_call_proc_staged_bx, @function
n585_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_call_proc_staged_α:
                        mov              r11, 225
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_587_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_587_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 0
                        mov              rsi, rbp
                        lea              rdx, [rbp + 128]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_587_99
                        mov              r10, qword ptr [rbp + 88]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_587_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_587_99
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rax
.Lcall_proc_staged_α_587_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_587_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_587_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_587_21
                        add              rsp, 32
.Lcall_proc_staged_α_587_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_587_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F0_step
.Lcall_proc_staged_α_587_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_587_29
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
.Lcall_proc_staged_α_587_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
n585_call_proc_staged_β:
                        mov              r11, 225
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_587_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_587_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_587_22:
                                                                              jmp   top$2F0_step
.Lcall_proc_staged_α_587_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    top$2F0_step
                                                                              jmp   top$2F0_ret0
.Lcall_proc_staged_α_587_0:
                        .quad            .Lcall_proc_staged_α_587_0_s
.Lcall_proc_staged_α_587_0_s:
                        .string          "times10/0"
                        .size            n585_call_proc_staged_bx, .-n585_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ret0:
                        lea              rax, [rip + n585_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                              jmp   top$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_step:
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
                                                                              je    top$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_β:
                        test             r15, r15
                                                                              jne   top$2F0_ω
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 80], 0
                        test             rax, rax
                                                                              jne   top$2F0_βres
                                                                              jmp   top$2F0_step
top$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rax, qword ptr [rbp + 88]
                        cmp              r13, rax;                            je    top$2F0_altdet
                        lea              rdx, [rip + top$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
top$2F0_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F0_ω:
                        mov              rcx, qword ptr [rbp + 112]
                        mov              r13, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__times10$2F0:
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1208], r13
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1184], r12
                        mov              rdi, rsp
                        mov              esi, 1152
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
times10$2F0_α_body:
                        .type            n588_lit_string_bx, @function
n588_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_619_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n589_lit_string_α
.Llit_string_α_619_0:   .quad            .Llit_string_α_619_0_s
.Llit_string_α_619_0_s: .string          "*"
                        .size            n588_lit_string_bx, .-n588_lit_string_bx
                        .type            n589_lit_string_bx, @function
n589_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_620_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n590_lit_string_α
.Llit_string_α_620_0:   .quad            .Llit_string_α_620_0_s
.Llit_string_α_620_0_s: .string          "*"
                        .size            n589_lit_string_bx, .-n589_lit_string_bx
                        .type            n590_lit_string_bx, @function
n590_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_621_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n591_lit_string_α
.Llit_string_α_621_0:   .quad            .Llit_string_α_621_0_s
.Llit_string_α_621_0_s: .string          "*"
                        .size            n590_lit_string_bx, .-n590_lit_string_bx
                        .type            n591_lit_string_bx, @function
n591_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n592_lit_string_α
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          "*"
                        .size            n591_lit_string_bx, .-n591_lit_string_bx
                        .type            n592_lit_string_bx, @function
n592_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_623_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n593_lit_string_α
.Llit_string_α_623_0:   .quad            .Llit_string_α_623_0_s
.Llit_string_α_623_0_s: .string          "*"
                        .size            n592_lit_string_bx, .-n592_lit_string_bx
                        .type            n593_lit_string_bx, @function
n593_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_624_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n594_lit_string_α
.Llit_string_α_624_0:   .quad            .Llit_string_α_624_0_s
.Llit_string_α_624_0_s: .string          "*"
                        .size            n593_lit_string_bx, .-n593_lit_string_bx
                        .type            n594_lit_string_bx, @function
n594_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:      mov              r11, 232
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_625_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n595_lit_string_α
.Llit_string_α_625_0:   .quad            .Llit_string_α_625_0_s
.Llit_string_α_625_0_s: .string          "*"
                        .size            n594_lit_string_bx, .-n594_lit_string_bx
                        .type            n595_lit_string_bx, @function
n595_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_626_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n596_lit_string_α
.Llit_string_α_626_0:   .quad            .Llit_string_α_626_0_s
.Llit_string_α_626_0_s: .string          "*"
                        .size            n595_lit_string_bx, .-n595_lit_string_bx
                        .type            n596_lit_string_bx, @function
n596_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_627_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n597_lit_string_α
.Llit_string_α_627_0:   .quad            .Llit_string_α_627_0_s
.Llit_string_α_627_0_s: .string          "*"
                        .size            n596_lit_string_bx, .-n596_lit_string_bx
                        .type            n597_lit_string_bx, @function
n597_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rbp + 96], 2              # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_628_0]
                        mov              qword ptr [rbp + 104], rax;          jmp   n598_lit_string_α
.Llit_string_α_628_0:   .quad            .Llit_string_α_628_0_s
.Llit_string_α_628_0_s: .string          "x"
                        .size            n597_lit_string_bx, .-n597_lit_string_bx
                        .type            n598_lit_string_bx, @function
n598_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              r11, 236
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_629_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n599_call_α
.Llit_string_α_629_0:   .quad            .Llit_string_α_629_0_s
.Llit_string_α_629_0_s: .string          "x"
                        .size            n598_lit_string_bx, .-n598_lit_string_bx
                        .type            n599_call_bx, @function
n599_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_call_α:            mov              r11, 237
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n600_lit_string_α
n599_call_β:            mov              r11, 237;                            jmp   times10$2F0_ω
                        .size            n599_call_bx, .-n599_call_bx
                        .type            n600_lit_string_bx, @function
n600_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n601_call_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "x"
                        .size            n600_lit_string_bx, .-n600_lit_string_bx
                        .type            n601_call_bx, @function
n601_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n602_lit_string_α
n601_call_β:            mov              r11, 239;                            jmp   times10$2F0_ω
                        .size            n601_call_bx, .-n601_call_bx
                        .type            n602_lit_string_bx, @function
n602_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n603_call_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "x"
                        .size            n602_lit_string_bx, .-n602_lit_string_bx
                        .type            n603_call_bx, @function
n603_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_call_α:            mov              r11, 241
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n604_lit_string_α
n603_call_β:            mov              r11, 241;                            jmp   times10$2F0_ω
                        .size            n603_call_bx, .-n603_call_bx
                        .type            n604_lit_string_bx, @function
n604_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n605_call_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "x"
                        .size            n604_lit_string_bx, .-n604_lit_string_bx
                        .type            n605_call_bx, @function
n605_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_call_α:            mov              r11, 243
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n606_lit_string_α
n605_call_β:            mov              r11, 243;                            jmp   times10$2F0_ω
                        .size            n605_call_bx, .-n605_call_bx
                        .type            n606_lit_string_bx, @function
n606_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_637_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n607_call_α
.Llit_string_α_637_0:   .quad            .Llit_string_α_637_0_s
.Llit_string_α_637_0_s: .string          "x"
                        .size            n606_lit_string_bx, .-n606_lit_string_bx
                        .type            n607_call_bx, @function
n607_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_α:            mov              r11, 245
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n608_lit_string_α
n607_call_β:            mov              r11, 245;                            jmp   times10$2F0_ω
                        .size            n607_call_bx, .-n607_call_bx
                        .type            n608_lit_string_bx, @function
n608_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_639_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n609_call_α
.Llit_string_α_639_0:   .quad            .Llit_string_α_639_0_s
.Llit_string_α_639_0_s: .string          "x"
                        .size            n608_lit_string_bx, .-n608_lit_string_bx
                        .type            n609_call_bx, @function
n609_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n610_lit_string_α
n609_call_β:            mov              r11, 247;                            jmp   times10$2F0_ω
                        .size            n609_call_bx, .-n609_call_bx
                        .type            n610_lit_string_bx, @function
n610_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_641_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n611_call_α
.Llit_string_α_641_0:   .quad            .Llit_string_α_641_0_s
.Llit_string_α_641_0_s: .string          "x"
                        .size            n610_lit_string_bx, .-n610_lit_string_bx
                        .type            n611_call_bx, @function
n611_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_call_α:            mov              r11, 249
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n612_lit_string_α
n611_call_β:            mov              r11, 249;                            jmp   times10$2F0_ω
                        .size            n611_call_bx, .-n611_call_bx
                        .type            n612_lit_string_bx, @function
n612_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_643_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n613_call_α
.Llit_string_α_643_0:   .quad            .Llit_string_α_643_0_s
.Llit_string_α_643_0_s: .string          "x"
                        .size            n612_lit_string_bx, .-n612_lit_string_bx
                        .type            n613_call_bx, @function
n613_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_call_α:            mov              r11, 251
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    times10$2F0_ω
                                                                              jmp   n614_lit_string_α
n613_call_β:            mov              r11, 251;                            jmp   times10$2F0_ω
                        .size            n613_call_bx, .-n613_call_bx
                        .type            n614_lit_string_bx, @function
n614_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_645_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n615_call_α
.Llit_string_α_645_0:   .quad            .Llit_string_α_645_0_s
.Llit_string_α_645_0_s: .string          "x"
                        .size            n614_lit_string_bx, .-n614_lit_string_bx
                        .type            n615_call_bx, @function
n615_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:            mov              r11, 253
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    times10$2F0_step
                                                                              jmp   n616_lit_string_α
n615_call_β:            mov              r11, 253;                            jmp   times10$2F0_step
                        .size            n615_call_bx, .-n615_call_bx
                        .type            n616_lit_string_bx, @function
n616_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_647_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n617_var_ref_α
.Llit_string_α_647_0:   .quad            .Llit_string_α_647_0_s
.Llit_string_α_647_0_s: .string          "x"
                        .size            n616_lit_string_bx, .-n616_lit_string_bx
                        .type            n617_var_ref_bx, @function
n617_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n618_call_proc_staged_α
                        .size            n617_var_ref_bx, .-n617_var_ref_bx
                        .type            n618_call_proc_staged_bx, @function
n618_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_call_proc_staged_α:
                        mov              r11, 256
                        mov              qword ptr [rbp + 64], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_651_200
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_651_201
.Lcall_proc_staged_α_651_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_651_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_651_202
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_651_203
.Lcall_proc_staged_α_651_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_651_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_651_204
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_651_205
.Lcall_proc_staged_α_651_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_651_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_651_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_651_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1248]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_651_99
                        mov              r10, qword ptr [rbp + 1208]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_651_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_651_99
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rax
.Lcall_proc_staged_α_651_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_651_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_651_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_651_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_651_3:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_651_21
                        add              rsp, 32
.Lcall_proc_staged_α_651_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_651_2
.Lcall_proc_staged_α_651_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 64], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_651_2
.Lcall_proc_staged_α_651_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_651_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   times10$2F0_step
.Lcall_proc_staged_α_651_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_651_29
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
.Lcall_proc_staged_α_651_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    times10$2F0_step
                                                                              jmp   times10$2F0_ret0
n618_call_proc_staged_β:
                        mov              r11, 256
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_651_22
                        mov              rax, qword ptr [rbp + 64]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_651_22
                        mov              rcx, qword ptr [rbp + 72]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_651_22:
                                                                              jmp   times10$2F0_step
.Lcall_proc_staged_α_651_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    times10$2F0_step
                                                                              jmp   times10$2F0_ret0
.Lcall_proc_staged_α_651_0:
                        .quad            .Lcall_proc_staged_α_651_0_s
.Lcall_proc_staged_α_651_0_s:
                        .string          "d/3"
                        .size            n618_call_proc_staged_bx, .-n618_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_ret0:
                        lea              rax, [rip + n618_call_proc_staged_β]
                        mov              qword ptr [rbp + 1200], rax
                                                                              jmp   times10$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_step:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              rax, qword ptr [rbp + 1192]
                        test             rax, rax
                                                                              je    times10$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_β:
                        test             r15, r15
                                                                              jne   times10$2F0_ω
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1200], 0
                        test             rax, rax
                                                                              jne   times10$2F0_βres
                                                                              jmp   times10$2F0_step
times10$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              rax, qword ptr [rbp + 1208]
                        cmp              r13, rax;                            je    times10$2F0_altdet
                        lea              rdx, [rip + times10$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
times10$2F0_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
times10$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              r13, qword ptr [rbp + 1208]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 1584
                        mov              qword ptr [rsp + 1560], rcx
                        mov              qword ptr [rsp + 1568], rdx
                        mov              qword ptr [rsp + 1576], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1544], r13
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1520], r12
                        mov              rdi, rsp
                        mov              esi, 1392
                        mov              edx, 1520
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n652_lit_string_bx, @function
n652_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_654_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n653_call_α
.Llit_string_α_654_0:   .quad            .Llit_string_α_654_0_s
.Llit_string_α_654_0_s: .string          "wall_us/1"
                        .size            n652_lit_string_bx, .-n652_lit_string_bx
                        .type            n653_call_bx, @function
n653_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_α:            mov              r11, 258
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n653_call_β:            mov              r11, 258;                            jmp   main$2F0_step
                        .size            n653_call_bx, .-n653_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              qword ptr [rbp + 1456], 0
                        mov              qword ptr [rbp + 1464], 0
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              rax, qword ptr [rbp + 1528]
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
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1536], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              rax, qword ptr [rbp + 1544]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1576];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1584]
                        mov              rbp, qword ptr [rbp + 1576];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 1568]
                        mov              r13, qword ptr [rbp + 1544]
                        lea              rsp, [rbp + 1584]
                        mov              rbp, qword ptr [rbp + 1576];         jmp   rcx
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
                        .type            n656_call_proc_staged_bx, @function
n656_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_call_proc_staged_α:
                        mov              r11, 259
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_658_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_658_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_658_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_658_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_658_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_658_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_658_21
                        add              rsp, 32
.Lcall_proc_staged_α_658_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_658_2
.Lcall_proc_staged_α_658_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_658_2
.Lcall_proc_staged_α_658_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_658_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_658_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_658_29
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
.Lcall_proc_staged_α_658_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n656_call_proc_staged_β:
                        mov              r11, 259
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_658_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_658_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_658_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_658_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_658_0:
                        .quad            .Lcall_proc_staged_α_658_0_s
.Lcall_proc_staged_α_658_0_s:
                        .string          "main/0"
                        .size            n656_call_proc_staged_bx, .-n656_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "d/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__d$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            7648
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "top/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__top$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            48
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "times10/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__times10$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1168
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
                        .long            1504
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
