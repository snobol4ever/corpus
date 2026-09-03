                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__nreverse$2F2:
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
                        lea              rax, [rip + nreverse$2F2_alt1]
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
nreverse$2F2_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_27_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n2_var_ref_α
.Llit_string_α_27_0:    .quad            .Llit_string_α_27_0_s
.Llit_string_α_27_0_s:  .string          "."
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n3_var_ref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n4_call_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n5_call_α
n4_call_β:              mov              r11, 5;                              jmp   nreverse$2F2_step
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   nreverse$2F2_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   nreverse$2F2_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n11_call_proc_staged_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_proc_staged_bx, @function
n11_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α: mov              r11, 12
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_44_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_44_201
.Lcall_proc_staged_α_44_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_44_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_44_202
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_44_203
.Lcall_proc_staged_α_44_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_44_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_44_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_44_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_44_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_44_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_44_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_44_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_44_21
                        add              rsp, 32
.Lcall_proc_staged_α_44_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_44_2
.Lcall_proc_staged_α_44_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_44_2
.Lcall_proc_staged_α_44_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_44_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   nreverse$2F2_step
.Lcall_proc_staged_α_44_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_44_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
.Lcall_proc_staged_α_44_29:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n12_var_ref_α
n11_call_proc_staged_β: mov              r11, 12
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_44_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_44_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_44_22:
                                                                              jmp   nreverse$2F2_step
.Lcall_proc_staged_α_44_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n12_var_ref_α
.Lcall_proc_staged_α_44_0:
                        .quad            .Lcall_proc_staged_α_44_0_s
.Lcall_proc_staged_α_44_0_s:
                        .string          "nreverse/2"
                        .size            n11_call_proc_staged_bx, .-n11_call_proc_staged_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n13_lit_string_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_lit_string_bx, @function
n13_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_47_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n14_var_ref_α
.Llit_string_α_47_0:    .quad            .Llit_string_α_47_0_s
.Llit_string_α_47_0_s:  .string          "."
                        .size            n13_lit_string_bx, .-n13_lit_string_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_50_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n16_call_α
.Llit_string_α_50_0:    .quad            .Llit_string_α_50_0_s
.Llit_string_α_50_0_s:  .string          "[]"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             mov              r11, 17
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n17_var_ref_α
n16_call_β:             mov              r11, 17;                             jmp   nreverse$2F2_step
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n18_call_proc_staged_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_call_proc_staged_bx, @function
n18_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 19
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_55_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_55_201
.Lcall_proc_staged_α_55_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_55_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_55_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_55_203
.Lcall_proc_staged_α_55_202:
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
.Lcall_proc_staged_α_55_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_55_204
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_55_205
.Lcall_proc_staged_α_55_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_55_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_55_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_55_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_55_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_55_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_55_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_55_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_55_21
                        add              rsp, 32
.Lcall_proc_staged_α_55_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_55_2
.Lcall_proc_staged_α_55_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_55_2
.Lcall_proc_staged_α_55_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_55_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_call_proc_staged_β
.Lcall_proc_staged_α_55_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_55_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_55_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n11_call_proc_staged_β
                                                                              jmp   nreverse$2F2_ret0
n18_call_proc_staged_β: mov              r11, 19
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_55_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_55_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_55_22:
                                                                              jmp   n11_call_proc_staged_β
.Lcall_proc_staged_α_55_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n11_call_proc_staged_β
                                                                              jmp   nreverse$2F2_ret0
.Lcall_proc_staged_α_55_0:
                        .quad            .Lcall_proc_staged_α_55_0_s
.Lcall_proc_staged_α_55_0_s:
                        .string          "concatenate/3"
                        .size            n18_call_proc_staged_bx, .-n18_call_proc_staged_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n20_lit_string_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_lit_string_bx, @function
n20_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_58_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n21_call_α
.Llit_string_α_58_0:    .quad            .Llit_string_α_58_0_s
.Llit_string_α_58_0_s:  .string          "[]"
                        .size            n20_lit_string_bx, .-n20_lit_string_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              rsi, qword ptr [rip + .Lcall_α_59_2]
                                                                              jmp   .Lcall_α_59_3
.Lcall_α_59_2:          .quad            .Lcall_α_59_2_s
.Lcall_α_59_2_s:        .string          "[]"
.Lcall_α_59_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   n22_var_ref_α
n21_call_β:             mov              r11, 22;                             jmp   nreverse$2F2_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n23_lit_string_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_62_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n24_call_α
.Llit_string_α_62_0:    .quad            .Llit_string_α_62_0_s
.Llit_string_α_62_0_s:  .string          "[]"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_call_bx, @function
n24_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:             mov              r11, 25
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lcall_α_63_2]
                                                                              jmp   .Lcall_α_63_3
.Lcall_α_63_2:          .quad            .Lcall_α_63_2_s
.Lcall_α_63_2_s:        .string          "[]"
.Lcall_α_63_3:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    nreverse$2F2_step
                                                                              jmp   nreverse$2F2_γ
n24_call_β:             mov              r11, 25;                             jmp   nreverse$2F2_step
                        .size            n24_call_bx, .-n24_call_bx
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_ret0:
                        lea              rax, [rip + n18_call_proc_staged_β]
                        mov              qword ptr [rbp + 1008], rax
                                                                              jmp   nreverse$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_step:
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
                                                                              je    nreverse$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1000], rax
                                                                              jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_β:
                        test             r15, r15
                                                                              jne   nreverse$2F2_ω
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1008], 0
                        test             rax, rax
                                                                              jne   nreverse$2F2_βres
                                                                              jmp   nreverse$2F2_step
nreverse$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rax, qword ptr [rbp + 1016]
                        cmp              r13, rax;                            je    nreverse$2F2_altdet
                        lea              rdx, [rip + nreverse$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
nreverse$2F2_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1040]
                        mov              r13, qword ptr [rbp + 1016]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__reverse$2F2:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 456], r13
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 432], r12
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
reverse$2F2_α_body:
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n65_var_ref_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n66_call_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 28
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    reverse$2F2_step
                                                                              jmp   n67_var_ref_α
n66_call_β:             mov              r11, 28;                             jmp   reverse$2F2_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n68_var_ref_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n69_call_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    reverse$2F2_step
                                                                              jmp   n70_var_ref_α
n69_call_β:             mov              r11, 31;                             jmp   reverse$2F2_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n71_lit_string_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_86_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n72_var_ref_α
.Llit_string_α_86_0:    .quad            .Llit_string_α_86_0_s
.Llit_string_α_86_0_s:  .string          "[]"
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n73_call_proc_staged_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_proc_staged_bx, @function
n73_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α: mov              r11, 35
                        mov              qword ptr [rbp + 112], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_90_200
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_90_201
.Lcall_proc_staged_α_90_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_90_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_90_202
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_90_203
.Lcall_proc_staged_α_90_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_90_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_90_204
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_90_205
.Lcall_proc_staged_α_90_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_90_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_90_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_90_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_90_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_90_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_90_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_90_3:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_90_21
                        add              rsp, 32
.Lcall_proc_staged_α_90_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_90_2
.Lcall_proc_staged_α_90_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 112], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_90_2
.Lcall_proc_staged_α_90_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_90_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_90_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_90_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_step
                                                                              jmp   reverse$2F2_ret0
n73_call_proc_staged_β: mov              r11, 35
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_90_22
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_90_22
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_90_22:
                                                                              jmp   reverse$2F2_step
.Lcall_proc_staged_α_90_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_step
                                                                              jmp   reverse$2F2_ret0
.Lcall_proc_staged_β_90_0:
                        .quad            .Lcall_proc_staged_β_90_0_s
.Lcall_proc_staged_β_90_0_s:
                        .string          "$reverse_/3"
                        .size            n73_call_proc_staged_bx, .-n73_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_ret0:
                        lea              rax, [rip + n73_call_proc_staged_β]
                        mov              qword ptr [rbp + 448], rax
                                                                              jmp   reverse$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_step:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              qword ptr [rbp + 400], 0
                        mov              qword ptr [rbp + 408], 0
                        mov              rax, qword ptr [rbp + 440]
                        test             rax, rax
                                                                              je    reverse$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_β:
                        test             r15, r15
                                                                              jne   reverse$2F2_ω
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 448], 0
                        test             rax, rax
                                                                              jne   reverse$2F2_βres
                                                                              jmp   reverse$2F2_step
reverse$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rax, qword ptr [rbp + 456]
                        cmp              r13, rax;                            je    reverse$2F2_altdet
                        lea              rdx, [rip + reverse$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
reverse$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_ω:
                        mov              rcx, qword ptr [rbp + 480]
                        mov              r13, qword ptr [rbp + 456]
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$reverse_$2F3:
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
                        lea              rax, [rip + $reverse_$2F3_alt1]
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
$reverse_$2F3_α_body:
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n92_lit_string_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_121_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n93_call_α
.Llit_string_α_121_0:   .quad            .Llit_string_α_121_0_s
.Llit_string_α_121_0_s: .string          "[]"
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_122_2]
                                                                              jmp   .Lcall_α_122_3
.Lcall_α_122_2:         .quad            .Lcall_α_122_2_s
.Lcall_α_122_2_s:       .string          "[]"
.Lcall_α_122_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n94_var_ref_α
n93_call_β:             mov              r11, 38;                             jmp   $reverse_$2F3_step
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n95_var_ref_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n96_call_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_call_bx, @function
n96_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             mov              r11, 41
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n97_var_ref_α
n96_call_β:             mov              r11, 41;                             jmp   $reverse_$2F3_step
                        .size            n96_call_bx, .-n96_call_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n98_var_ref_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n99_call_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_call_bx, @function
n99_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             mov              r11, 44
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   $reverse_$2F3_γ
n99_call_β:             mov              r11, 44;                             jmp   $reverse_$2F3_step
                        .size            n99_call_bx, .-n99_call_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n101_lit_string_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 46
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_135_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n102_var_ref_α
.Llit_string_α_135_0:   .quad            .Llit_string_α_135_0_s
.Llit_string_α_135_0_s: .string          "."
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_var_ref_bx, @function
n102_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n103_var_ref_α
                        .size            n102_var_ref_bx, .-n102_var_ref_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n104_call_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_call_bx, @function
n104_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_call_α:            mov              r11, 49
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n105_call_α
n104_call_β:            mov              r11, 49;                             jmp   $reverse_$2F3_step
                        .size            n104_call_bx, .-n104_call_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 50
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n106_var_ref_α
n105_call_β:            mov              r11, 50;                             jmp   $reverse_$2F3_step
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_var_ref_bx, @function
n106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n107_var_ref_α
                        .size            n106_var_ref_bx, .-n106_var_ref_bx
                        .type            n107_var_ref_bx, @function
n107_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n108_call_α
                        .size            n107_var_ref_bx, .-n107_var_ref_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            mov              r11, 53
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n109_var_ref_α
n108_call_β:            mov              r11, 53;                             jmp   $reverse_$2F3_step
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_var_ref_bx, @function
n109_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n110_var_ref_α
                        .size            n109_var_ref_bx, .-n109_var_ref_bx
                        .type            n110_var_ref_bx, @function
n110_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n111_call_α
                        .size            n110_var_ref_bx, .-n110_var_ref_bx
                        .type            n111_call_bx, @function
n111_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            mov              r11, 56
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
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n112_var_ref_α
n111_call_β:            mov              r11, 56;                             jmp   $reverse_$2F3_step
                        .size            n111_call_bx, .-n111_call_bx
                        .type            n112_var_ref_bx, @function
n112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n113_lit_string_α
                        .size            n112_var_ref_bx, .-n112_var_ref_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 58
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_154_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n114_var_ref_α
.Llit_string_α_154_0:   .quad            .Llit_string_α_154_0_s
.Llit_string_α_154_0_s: .string          "."
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_var_ref_bx, @function
n114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n115_var_ref_α
                        .size            n114_var_ref_bx, .-n114_var_ref_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n116_call_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 61
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   n117_var_ref_α
n116_call_β:            mov              r11, 61;                             jmp   $reverse_$2F3_step
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n118_call_proc_staged_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_proc_staged_bx, @function
n118_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        mov              r11, 63
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_163_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_163_201
.Lcall_proc_staged_α_163_200:
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
.Lcall_proc_staged_α_163_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_163_202
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_163_203
.Lcall_proc_staged_α_163_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_163_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_163_204
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_163_205
.Lcall_proc_staged_α_163_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_163_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_163_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_163_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_163_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_163_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_163_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_163_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_163_21
                        add              rsp, 32
.Lcall_proc_staged_α_163_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_163_2
.Lcall_proc_staged_α_163_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_163_2
.Lcall_proc_staged_α_163_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_163_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_163_29
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
.Lcall_proc_staged_α_163_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   $reverse_$2F3_ret1
n118_call_proc_staged_β:
                        mov              r11, 63
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_163_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_163_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_163_22:
                                                                              jmp   $reverse_$2F3_step
.Lcall_proc_staged_α_163_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_step
                                                                              jmp   $reverse_$2F3_ret1
.Lcall_proc_staged_β_163_0:
                        .quad            .Lcall_proc_staged_β_163_0_s
.Lcall_proc_staged_β_163_0_s:
                        .string          "$reverse_/3"
                        .size            n118_call_proc_staged_bx, .-n118_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_ret1:
                        lea              rax, [rip + n118_call_proc_staged_β]
                        mov              qword ptr [rbp + 1104], rax
                                                                              jmp   $reverse_$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_step:
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
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              rax, qword ptr [rbp + 1096]
                        test             rax, rax
                                                                              je    $reverse_$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1096], rax
                                                                              jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_β:
                        test             r15, r15
                                                                              jne   $reverse_$2F3_ω
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1104], 0
                        test             rax, rax
                                                                              jne   $reverse_$2F3_βres
                                                                              jmp   $reverse_$2F3_step
$reverse_$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rax, qword ptr [rbp + 1112]
                        cmp              r13, rax;                            je    $reverse_$2F3_altdet
                        lea              rdx, [rip + $reverse_$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
$reverse_$2F3_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1112]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__concatenate$2F3:
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
                        lea              rax, [rip + concatenate$2F3_alt1]
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
concatenate$2F3_α_body:
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n165_lit_string_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_string_bx, @function
n165_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 65
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_194_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n166_var_ref_α
.Llit_string_α_194_0:   .quad            .Llit_string_α_194_0_s
.Llit_string_α_194_0_s: .string          "."
                        .size            n165_lit_string_bx, .-n165_lit_string_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n167_var_ref_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_var_ref_bx, @function
n167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n168_call_α
                        .size            n167_var_ref_bx, .-n167_var_ref_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 68
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n169_call_α
n168_call_β:            mov              r11, 68;                             jmp   concatenate$2F3_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_call_bx, @function
n169_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            mov              r11, 69
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n170_var_ref_α
n169_call_β:            mov              r11, 69;                             jmp   concatenate$2F3_step
                        .size            n169_call_bx, .-n169_call_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n171_var_ref_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_var_ref_bx, @function
n171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n172_call_α
                        .size            n171_var_ref_bx, .-n171_var_ref_bx
                        .type            n172_call_bx, @function
n172_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            mov              r11, 72
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n173_var_ref_α
n172_call_β:            mov              r11, 72;                             jmp   concatenate$2F3_step
                        .size            n172_call_bx, .-n172_call_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n174_lit_string_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n175_var_ref_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "."
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n177_call_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_bx, @function
n177_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 77
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n178_call_α
n177_call_β:            mov              r11, 77;                             jmp   concatenate$2F3_step
                        .size            n177_call_bx, .-n177_call_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n179_var_ref_α
n178_call_β:            mov              r11, 78;                             jmp   concatenate$2F3_step
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n180_var_ref_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n182_call_proc_staged_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_proc_staged_bx, @function
n182_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              r11, 82
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_222_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_222_201
.Lcall_proc_staged_α_222_200:
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
.Lcall_proc_staged_α_222_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_222_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_222_203
.Lcall_proc_staged_α_222_202:
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
.Lcall_proc_staged_α_222_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_222_204
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_222_205
.Lcall_proc_staged_α_222_204:
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
.Lcall_proc_staged_α_222_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_222_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_222_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_222_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_222_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_222_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_222_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_222_21
                        add              rsp, 32
.Lcall_proc_staged_α_222_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_222_2
.Lcall_proc_staged_α_222_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_222_2
.Lcall_proc_staged_α_222_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_222_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   concatenate$2F3_step
.Lcall_proc_staged_α_222_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_222_29
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
.Lcall_proc_staged_α_222_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   concatenate$2F3_ret0
n182_call_proc_staged_β:
                        mov              r11, 82
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_222_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_222_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_222_22:
                                                                              jmp   concatenate$2F3_step
.Lcall_proc_staged_α_222_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   concatenate$2F3_ret0
.Lcall_proc_staged_α_222_0:
                        .quad            .Lcall_proc_staged_α_222_0_s
.Lcall_proc_staged_α_222_0_s:
                        .string          "concatenate/3"
                        .size            n182_call_proc_staged_bx, .-n182_call_proc_staged_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n184_lit_string_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_lit_string_bx, @function
n184_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_225_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n185_call_α
.Llit_string_α_225_0:   .quad            .Llit_string_α_225_0_s
.Llit_string_α_225_0_s: .string          "[]"
                        .size            n184_lit_string_bx, .-n184_lit_string_bx
                        .type            n185_call_bx, @function
n185_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              rsi, qword ptr [rip + .Lcall_α_226_2]
                                                                              jmp   .Lcall_α_226_3
.Lcall_α_226_2:         .quad            .Lcall_α_226_2_s
.Lcall_α_226_2_s:       .string          "[]"
.Lcall_α_226_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n186_var_ref_α
n185_call_β:            mov              r11, 85;                             jmp   concatenate$2F3_step
                        .size            n185_call_bx, .-n185_call_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n187_var_ref_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n188_call_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_call_bx, @function
n188_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            mov              r11, 88
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   n189_var_ref_α
n188_call_β:            mov              r11, 88;                             jmp   concatenate$2F3_step
                        .size            n188_call_bx, .-n188_call_bx
                        .type            n189_var_ref_bx, @function
n189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n190_var_ref_α
                        .size            n189_var_ref_bx, .-n189_var_ref_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n191_call_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_call_bx, @function
n191_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    concatenate$2F3_step
                                                                              jmp   concatenate$2F3_γ
n191_call_β:            mov              r11, 91;                             jmp   concatenate$2F3_step
                        .size            n191_call_bx, .-n191_call_bx
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_ret0:
                        lea              rax, [rip + n182_call_proc_staged_β]
                        mov              qword ptr [rbp + 1104], rax
                                                                              jmp   concatenate$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_step:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              rax, qword ptr [rbp + 1096]
                        test             rax, rax
                                                                              je    concatenate$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1096], rax
                                                                              jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_β:
                        test             r15, r15
                                                                              jne   concatenate$2F3_ω
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1104], 0
                        test             rax, rax
                                                                              jne   concatenate$2F3_βres
                                                                              jmp   concatenate$2F3_step
concatenate$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rax, qword ptr [rbp + 1112]
                        cmp              r13, rax;                            je    concatenate$2F3_altdet
                        lea              rdx, [rip + concatenate$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
concatenate$2F3_altdet: xor              eax, eax
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1136]
                        mov              r13, qword ptr [rbp + 1112]
                        lea              rsp, [rbp + 1152]
                        mov              rbp, qword ptr [rbp + 1144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 3664
                        mov              qword ptr [rsp + 3640], rcx
                        mov              qword ptr [rsp + 3648], rdx
                        mov              qword ptr [rsp + 3656], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3664]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3624], r13
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3600], r12
                        mov              rdi, rsp
                        mov              esi, 3568
                        mov              edx, 3600
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n237_lit_string_bx, @function
n237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rbp + 3536], 2            # result
                        mov              dword ptr [rbp + 3540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_333_0]
                        mov              qword ptr [rbp + 3544], rax;         jmp   n238_lit_integer_α
.Llit_string_α_333_0:   .quad            .Llit_string_α_333_0_s
.Llit_string_α_333_0_s: .string          "."
                        .size            n237_lit_string_bx, .-n237_lit_string_bx
                        .type            n238_lit_integer_bx, @function
n238_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     mov              r11, 93
                        mov              qword ptr [rbp + 3440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_334_0]
                        mov              qword ptr [rbp + 3448], rax;         jmp   n239_lit_string_α
.Llit_integer_α_334_0:  .quad            1
                        .size            n238_lit_integer_bx, .-n238_lit_integer_bx
                        .type            n239_lit_string_bx, @function
n239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rbp + 3424], 2            # result
                        mov              dword ptr [rbp + 3428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_335_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n240_lit_integer_α
.Llit_string_α_335_0:   .quad            .Llit_string_α_335_0_s
.Llit_string_α_335_0_s: .string          "."
                        .size            n239_lit_string_bx, .-n239_lit_string_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              r11, 95
                        mov              qword ptr [rbp + 3328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rbp + 3336], rax;         jmp   n241_lit_string_α
.Llit_integer_α_336_0:  .quad            2
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_lit_string_bx, @function
n241_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rbp + 3312], 2            # result
                        mov              dword ptr [rbp + 3316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_337_0]
                        mov              qword ptr [rbp + 3320], rax;         jmp   n242_lit_integer_α
.Llit_string_α_337_0:   .quad            .Llit_string_α_337_0_s
.Llit_string_α_337_0_s: .string          "."
                        .size            n241_lit_string_bx, .-n241_lit_string_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rbp + 3216], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rbp + 3224], rax;         jmp   n243_lit_string_α
.Llit_integer_α_338_0:  .quad            3
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_lit_string_bx, @function
n243_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              r11, 98
                        mov              qword ptr [rbp + 3200], 2            # result
                        mov              dword ptr [rbp + 3204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_339_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n244_lit_integer_α
.Llit_string_α_339_0:   .quad            .Llit_string_α_339_0_s
.Llit_string_α_339_0_s: .string          "."
                        .size            n243_lit_string_bx, .-n243_lit_string_bx
                        .type            n244_lit_integer_bx, @function
n244_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rbp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_340_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n245_lit_string_α
.Llit_integer_α_340_0:  .quad            4
                        .size            n244_lit_integer_bx, .-n244_lit_integer_bx
                        .type            n245_lit_string_bx, @function
n245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rbp + 3088], 2            # result
                        mov              dword ptr [rbp + 3092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n246_lit_integer_α
.Llit_string_α_341_0:   .quad            .Llit_string_α_341_0_s
.Llit_string_α_341_0_s: .string          "."
                        .size            n245_lit_string_bx, .-n245_lit_string_bx
                        .type            n246_lit_integer_bx, @function
n246_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n247_lit_string_α
.Llit_integer_α_342_0:  .quad            5
                        .size            n246_lit_integer_bx, .-n246_lit_integer_bx
                        .type            n247_lit_string_bx, @function
n247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 2976], 2            # result
                        mov              dword ptr [rbp + 2980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_343_0]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n248_lit_integer_α
.Llit_string_α_343_0:   .quad            .Llit_string_α_343_0_s
.Llit_string_α_343_0_s: .string          "."
                        .size            n247_lit_string_bx, .-n247_lit_string_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rbp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_344_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n249_lit_string_α
.Llit_integer_α_344_0:  .quad            6
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 2864], 2            # result
                        mov              dword ptr [rbp + 2868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rbp + 2872], rax;         jmp   n250_lit_integer_α
.Llit_string_α_345_0:   .quad            .Llit_string_α_345_0_s
.Llit_string_α_345_0_s: .string          "."
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_lit_integer_bx, @function
n250_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rbp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_346_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n251_lit_string_α
.Llit_integer_α_346_0:  .quad            7
                        .size            n250_lit_integer_bx, .-n250_lit_integer_bx
                        .type            n251_lit_string_bx, @function
n251_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 2752], 2            # result
                        mov              dword ptr [rbp + 2756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_347_0]
                        mov              qword ptr [rbp + 2760], rax;         jmp   n252_lit_integer_α
.Llit_string_α_347_0:   .quad            .Llit_string_α_347_0_s
.Llit_string_α_347_0_s: .string          "."
                        .size            n251_lit_string_bx, .-n251_lit_string_bx
                        .type            n252_lit_integer_bx, @function
n252_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n253_lit_string_α
.Llit_integer_α_348_0:  .quad            8
                        .size            n252_lit_integer_bx, .-n252_lit_integer_bx
                        .type            n253_lit_string_bx, @function
n253_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rbp + 2640], 2            # result
                        mov              dword ptr [rbp + 2644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n254_lit_integer_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          "."
                        .size            n253_lit_string_bx, .-n253_lit_string_bx
                        .type            n254_lit_integer_bx, @function
n254_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_350_0]
                        mov              qword ptr [rbp + 2552], rax;         jmp   n255_lit_string_α
.Llit_integer_α_350_0:  .quad            9
                        .size            n254_lit_integer_bx, .-n254_lit_integer_bx
                        .type            n255_lit_string_bx, @function
n255_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n256_lit_integer_α
.Llit_string_α_351_0:   .quad            .Llit_string_α_351_0_s
.Llit_string_α_351_0_s: .string          "."
                        .size            n255_lit_string_bx, .-n255_lit_string_bx
                        .type            n256_lit_integer_bx, @function
n256_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_352_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n257_lit_string_α
.Llit_integer_α_352_0:  .quad            10
                        .size            n256_lit_integer_bx, .-n256_lit_integer_bx
                        .type            n257_lit_string_bx, @function
n257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 2416], 2            # result
                        mov              dword ptr [rbp + 2420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_353_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n258_lit_integer_α
.Llit_string_α_353_0:   .quad            .Llit_string_α_353_0_s
.Llit_string_α_353_0_s: .string          "."
                        .size            n257_lit_string_bx, .-n257_lit_string_bx
                        .type            n258_lit_integer_bx, @function
n258_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n259_lit_string_α
.Llit_integer_α_354_0:  .quad            11
                        .size            n258_lit_integer_bx, .-n258_lit_integer_bx
                        .type            n259_lit_string_bx, @function
n259_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 2304], 2            # result
                        mov              dword ptr [rbp + 2308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_355_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n260_lit_integer_α
.Llit_string_α_355_0:   .quad            .Llit_string_α_355_0_s
.Llit_string_α_355_0_s: .string          "."
                        .size            n259_lit_string_bx, .-n259_lit_string_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n261_lit_string_α
.Llit_integer_α_356_0:  .quad            12
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 2192], 2            # result
                        mov              dword ptr [rbp + 2196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_357_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n262_lit_integer_α
.Llit_string_α_357_0:   .quad            .Llit_string_α_357_0_s
.Llit_string_α_357_0_s: .string          "."
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_lit_integer_bx, @function
n262_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n263_lit_string_α
.Llit_integer_α_358_0:  .quad            13
                        .size            n262_lit_integer_bx, .-n262_lit_integer_bx
                        .type            n263_lit_string_bx, @function
n263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rbp + 2080], 2            # result
                        mov              dword ptr [rbp + 2084], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_359_0]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n264_lit_integer_α
.Llit_string_α_359_0:   .quad            .Llit_string_α_359_0_s
.Llit_string_α_359_0_s: .string          "."
                        .size            n263_lit_string_bx, .-n263_lit_string_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n265_lit_string_α
.Llit_integer_α_360_0:  .quad            14
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rbp + 1968], 2            # result
                        mov              dword ptr [rbp + 1972], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n266_lit_integer_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "."
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_lit_integer_bx, @function
n266_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n267_lit_string_α
.Llit_integer_α_362_0:  .quad            15
                        .size            n266_lit_integer_bx, .-n266_lit_integer_bx
                        .type            n267_lit_string_bx, @function
n267_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_363_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n268_lit_integer_α
.Llit_string_α_363_0:   .quad            .Llit_string_α_363_0_s
.Llit_string_α_363_0_s: .string          "."
                        .size            n267_lit_string_bx, .-n267_lit_string_bx
                        .type            n268_lit_integer_bx, @function
n268_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_364_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n269_lit_string_α
.Llit_integer_α_364_0:  .quad            16
                        .size            n268_lit_integer_bx, .-n268_lit_integer_bx
                        .type            n269_lit_string_bx, @function
n269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n270_lit_integer_α
.Llit_string_α_365_0:   .quad            .Llit_string_α_365_0_s
.Llit_string_α_365_0_s: .string          "."
                        .size            n269_lit_string_bx, .-n269_lit_string_bx
                        .type            n270_lit_integer_bx, @function
n270_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rbp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_366_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n271_lit_string_α
.Llit_integer_α_366_0:  .quad            17
                        .size            n270_lit_integer_bx, .-n270_lit_integer_bx
                        .type            n271_lit_string_bx, @function
n271_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_367_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n272_lit_integer_α
.Llit_string_α_367_0:   .quad            .Llit_string_α_367_0_s
.Llit_string_α_367_0_s: .string          "."
                        .size            n271_lit_string_bx, .-n271_lit_string_bx
                        .type            n272_lit_integer_bx, @function
n272_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_368_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n273_lit_string_α
.Llit_integer_α_368_0:  .quad            18
                        .size            n272_lit_integer_bx, .-n272_lit_integer_bx
                        .type            n273_lit_string_bx, @function
n273_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_369_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n274_lit_integer_α
.Llit_string_α_369_0:   .quad            .Llit_string_α_369_0_s
.Llit_string_α_369_0_s: .string          "."
                        .size            n273_lit_string_bx, .-n273_lit_string_bx
                        .type            n274_lit_integer_bx, @function
n274_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_370_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n275_lit_string_α
.Llit_integer_α_370_0:  .quad            19
                        .size            n274_lit_integer_bx, .-n274_lit_integer_bx
                        .type            n275_lit_string_bx, @function
n275_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_371_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n276_lit_integer_α
.Llit_string_α_371_0:   .quad            .Llit_string_α_371_0_s
.Llit_string_α_371_0_s: .string          "."
                        .size            n275_lit_string_bx, .-n275_lit_string_bx
                        .type            n276_lit_integer_bx, @function
n276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_372_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n277_lit_string_α
.Llit_integer_α_372_0:  .quad            20
                        .size            n276_lit_integer_bx, .-n276_lit_integer_bx
                        .type            n277_lit_string_bx, @function
n277_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_373_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n278_lit_integer_α
.Llit_string_α_373_0:   .quad            .Llit_string_α_373_0_s
.Llit_string_α_373_0_s: .string          "."
                        .size            n277_lit_string_bx, .-n277_lit_string_bx
                        .type            n278_lit_integer_bx, @function
n278_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n279_lit_string_α
.Llit_integer_α_374_0:  .quad            21
                        .size            n278_lit_integer_bx, .-n278_lit_integer_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_375_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n280_lit_integer_α
.Llit_string_α_375_0:   .quad            .Llit_string_α_375_0_s
.Llit_string_α_375_0_s: .string          "."
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_lit_integer_bx, @function
n280_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_376_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n281_lit_string_α
.Llit_integer_α_376_0:  .quad            22
                        .size            n280_lit_integer_bx, .-n280_lit_integer_bx
                        .type            n281_lit_string_bx, @function
n281_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_377_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n282_lit_integer_α
.Llit_string_α_377_0:   .quad            .Llit_string_α_377_0_s
.Llit_string_α_377_0_s: .string          "."
                        .size            n281_lit_string_bx, .-n281_lit_string_bx
                        .type            n282_lit_integer_bx, @function
n282_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n283_lit_string_α
.Llit_integer_α_378_0:  .quad            23
                        .size            n282_lit_integer_bx, .-n282_lit_integer_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_379_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n284_lit_integer_α
.Llit_string_α_379_0:   .quad            .Llit_string_α_379_0_s
.Llit_string_α_379_0_s: .string          "."
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_lit_integer_bx, @function
n284_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_380_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n285_lit_string_α
.Llit_integer_α_380_0:  .quad            24
                        .size            n284_lit_integer_bx, .-n284_lit_integer_bx
                        .type            n285_lit_string_bx, @function
n285_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_381_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n286_lit_integer_α
.Llit_string_α_381_0:   .quad            .Llit_string_α_381_0_s
.Llit_string_α_381_0_s: .string          "."
                        .size            n285_lit_string_bx, .-n285_lit_string_bx
                        .type            n286_lit_integer_bx, @function
n286_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_382_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n287_lit_string_α
.Llit_integer_α_382_0:  .quad            25
                        .size            n286_lit_integer_bx, .-n286_lit_integer_bx
                        .type            n287_lit_string_bx, @function
n287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n288_lit_integer_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "."
                        .size            n287_lit_string_bx, .-n287_lit_string_bx
                        .type            n288_lit_integer_bx, @function
n288_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n289_lit_string_α
.Llit_integer_α_384_0:  .quad            26
                        .size            n288_lit_integer_bx, .-n288_lit_integer_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_385_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n290_lit_integer_α
.Llit_string_α_385_0:   .quad            .Llit_string_α_385_0_s
.Llit_string_α_385_0_s: .string          "."
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_lit_integer_bx, @function
n290_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n291_lit_string_α
.Llit_integer_α_386_0:  .quad            27
                        .size            n290_lit_integer_bx, .-n290_lit_integer_bx
                        .type            n291_lit_string_bx, @function
n291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 512], 2             # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_387_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n292_lit_integer_α
.Llit_string_α_387_0:   .quad            .Llit_string_α_387_0_s
.Llit_string_α_387_0_s: .string          "."
                        .size            n291_lit_string_bx, .-n291_lit_string_bx
                        .type            n292_lit_integer_bx, @function
n292_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n293_lit_string_α
.Llit_integer_α_388_0:  .quad            28
                        .size            n292_lit_integer_bx, .-n292_lit_integer_bx
                        .type            n293_lit_string_bx, @function
n293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n294_lit_integer_α
.Llit_string_α_389_0:   .quad            .Llit_string_α_389_0_s
.Llit_string_α_389_0_s: .string          "."
                        .size            n293_lit_string_bx, .-n293_lit_string_bx
                        .type            n294_lit_integer_bx, @function
n294_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_integer_α:     mov              r11, 149
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_390_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n295_lit_string_α
.Llit_integer_α_390_0:  .quad            29
                        .size            n294_lit_integer_bx, .-n294_lit_integer_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n296_lit_integer_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "."
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_lit_integer_bx, @function
n296_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_392_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n297_lit_string_α
.Llit_integer_α_392_0:  .quad            30
                        .size            n296_lit_integer_bx, .-n296_lit_integer_bx
                        .type            n297_lit_string_bx, @function
n297_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_393_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n298_call_α
.Llit_string_α_393_0:   .quad            .Llit_string_α_393_0_s
.Llit_string_α_393_0_s: .string          "[]"
                        .size            n297_lit_string_bx, .-n297_lit_string_bx
                        .type            n298_call_bx, @function
n298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n299_call_α
n298_call_β:            mov              r11, 153;                            jmp   main$2F0_ω
                        .size            n298_call_bx, .-n298_call_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n300_call_α
n299_call_β:            mov              r11, 154;                            jmp   main$2F0_ω
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 155
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n301_call_α
n300_call_β:            mov              r11, 155;                            jmp   main$2F0_ω
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_call_bx, @function
n301_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n302_call_α
n301_call_β:            mov              r11, 156;                            jmp   main$2F0_ω
                        .size            n301_call_bx, .-n301_call_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n303_call_α
n302_call_β:            mov              r11, 157;                            jmp   main$2F0_ω
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 158
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
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
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n304_call_α
n303_call_β:            mov              r11, 158;                            jmp   main$2F0_ω
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_call_bx, @function
n304_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n305_call_α
n304_call_β:            mov              r11, 159;                            jmp   main$2F0_ω
                        .size            n304_call_bx, .-n304_call_bx
                        .type            n305_call_bx, @function
n305_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n306_call_α
n305_call_β:            mov              r11, 160;                            jmp   main$2F0_ω
                        .size            n305_call_bx, .-n305_call_bx
                        .type            n306_call_bx, @function
n306_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n307_call_α
n306_call_β:            mov              r11, 161;                            jmp   main$2F0_ω
                        .size            n306_call_bx, .-n306_call_bx
                        .type            n307_call_bx, @function
n307_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n308_call_α
n307_call_β:            mov              r11, 162;                            jmp   main$2F0_ω
                        .size            n307_call_bx, .-n307_call_bx
                        .type            n308_call_bx, @function
n308_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n309_call_α
n308_call_β:            mov              r11, 163;                            jmp   main$2F0_ω
                        .size            n308_call_bx, .-n308_call_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n310_call_α
n309_call_β:            mov              r11, 164;                            jmp   main$2F0_ω
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_call_bx, @function
n310_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_call_α:            mov              r11, 165
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n311_call_α
n310_call_β:            mov              r11, 165;                            jmp   main$2F0_ω
                        .size            n310_call_bx, .-n310_call_bx
                        .type            n311_call_bx, @function
n311_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            mov              r11, 166
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n312_call_α
n311_call_β:            mov              r11, 166;                            jmp   main$2F0_ω
                        .size            n311_call_bx, .-n311_call_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n313_call_α
n312_call_β:            mov              r11, 167;                            jmp   main$2F0_ω
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            mov              r11, 168
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n314_call_α
n313_call_β:            mov              r11, 168;                            jmp   main$2F0_ω
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n315_call_α
n314_call_β:            mov              r11, 169;                            jmp   main$2F0_ω
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n316_call_α
n315_call_β:            mov              r11, 170;                            jmp   main$2F0_ω
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_call_bx, @function
n316_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            mov              r11, 171
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n317_call_α
n316_call_β:            mov              r11, 171;                            jmp   main$2F0_ω
                        .size            n316_call_bx, .-n316_call_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 172
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n318_call_α
n317_call_β:            mov              r11, 172;                            jmp   main$2F0_ω
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n319_call_α
n318_call_β:            mov              r11, 173;                            jmp   main$2F0_ω
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            mov              r11, 174
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n320_call_α
n319_call_β:            mov              r11, 174;                            jmp   main$2F0_ω
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_call_bx, @function
n320_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n321_call_α
n320_call_β:            mov              r11, 175;                            jmp   main$2F0_ω
                        .size            n320_call_bx, .-n320_call_bx
                        .type            n321_call_bx, @function
n321_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_α:            mov              r11, 176
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n322_call_α
n321_call_β:            mov              r11, 176;                            jmp   main$2F0_ω
                        .size            n321_call_bx, .-n321_call_bx
                        .type            n322_call_bx, @function
n322_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:            mov              r11, 177
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n323_call_α
n322_call_β:            mov              r11, 177;                            jmp   main$2F0_ω
                        .size            n322_call_bx, .-n322_call_bx
                        .type            n323_call_bx, @function
n323_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n324_call_α
n323_call_β:            mov              r11, 178;                            jmp   main$2F0_ω
                        .size            n323_call_bx, .-n323_call_bx
                        .type            n324_call_bx, @function
n324_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n325_call_α
n324_call_β:            mov              r11, 179;                            jmp   main$2F0_ω
                        .size            n324_call_bx, .-n324_call_bx
                        .type            n325_call_bx, @function
n325_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n326_call_α
n325_call_β:            mov              r11, 180;                            jmp   main$2F0_ω
                        .size            n325_call_bx, .-n325_call_bx
                        .type            n326_call_bx, @function
n326_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3368], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n327_call_α
n326_call_β:            mov              r11, 181;                            jmp   main$2F0_ω
                        .size            n326_call_bx, .-n326_call_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n328_var_ref_α
n327_call_β:            mov              r11, 182;                            jmp   main$2F0_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n329_call_proc_staged_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_call_proc_staged_bx, @function
n329_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_proc_staged_α:
                        mov              r11, 184
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_427_200
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_427_201
.Lcall_proc_staged_α_427_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_427_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_427_202
                        mov              rax, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_427_203
.Lcall_proc_staged_α_427_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_427_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_427_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_427_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_427_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_427_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_427_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_427_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_427_21
                        add              rsp, 32
.Lcall_proc_staged_α_427_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_427_2
.Lcall_proc_staged_α_427_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_427_2
.Lcall_proc_staged_α_427_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_427_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_427_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_427_29
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
.Lcall_proc_staged_α_427_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n330_var_α
n329_call_proc_staged_β:
                        mov              r11, 184
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_427_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_427_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_427_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_427_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n330_var_α
.Lcall_proc_staged_α_427_0:
                        .quad            .Lcall_proc_staged_α_427_0_s
.Lcall_proc_staged_α_427_0_s:
                        .string          "nreverse/2"
                        .size            n329_call_proc_staged_bx, .-n329_call_proc_staged_bx
                        .type            n330_var_bx, @function
n330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 88], rax;           jmp   n331_call_α
                        .size            n330_var_bx, .-n330_var_bx
                        .type            n331_call_bx, @function
n331_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            mov              r11, 186
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
                        cmp              al, 104;                             je    n329_call_proc_staged_β
                                                                              jmp   n332_call_α
n331_call_β:            mov              r11, 186;                            jmp   n329_call_proc_staged_β
                        .size            n331_call_bx, .-n331_call_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            mov              r11, 187
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
                        cmp              al, 104;                             je    n329_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n332_call_β:            mov              r11, 187;                            jmp   n329_call_proc_staged_β
                        .size            n332_call_bx, .-n332_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n329_call_proc_staged_β]
                        mov              qword ptr [rbp + 3616], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 3600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3616], 0
                        mov              qword ptr [rbp + 3568], 0
                        mov              qword ptr [rbp + 3576], 0
                        mov              rax, qword ptr [rbp + 3608]
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
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3616], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3640]
                        mov              rax, qword ptr [rbp + 3624]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3656];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 3664]
                        mov              rbp, qword ptr [rbp + 3656];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 3648]
                        mov              r13, qword ptr [rbp + 3624]
                        lea              rsp, [rbp + 3664]
                        mov              rbp, qword ptr [rbp + 3656];         jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
                        .type            n432_call_proc_staged_bx, @function
n432_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_proc_staged_α:
                        mov              r11, 188
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_434_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_434_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_434_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_434_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_434_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_434_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_434_21
                        add              rsp, 32
.Lcall_proc_staged_α_434_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_434_2
.Lcall_proc_staged_α_434_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_434_2
.Lcall_proc_staged_α_434_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_434_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_434_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_434_29
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
.Lcall_proc_staged_α_434_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n432_call_proc_staged_β:
                        mov              r11, 188
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_434_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_434_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_434_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_434_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_434_0:
                        .quad            .Lcall_proc_staged_α_434_0_s
.Lcall_proc_staged_α_434_0_s:
                        .string          "main/0"
                        .size            n432_call_proc_staged_bx, .-n432_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "nreverse/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__nreverse$2F2
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
.Lstartup_pname1:       .string          "reverse/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__reverse$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$reverse_/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__$reverse_$2F3
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
.Lstartup_pname3:       .string          "concatenate/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__concatenate$2F3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "main/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            3584
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
