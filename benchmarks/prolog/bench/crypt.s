                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__mult$2F3:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 616], r13
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 592], r12
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
mult$2F3_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    mult$2F3_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   mult$2F3_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    mult$2F3_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   mult$2F3_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    mult$2F3_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   mult$2F3_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n11_lit_integer_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n12_var_ref_α
.Llit_integer_α_33_0:   .quad            0
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n13_call_proc_staged_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_call_proc_staged_bx, @function
n13_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α: mov              r11, 14
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_37_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_37_201
.Lcall_proc_staged_α_37_200:
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
.Lcall_proc_staged_α_37_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_37_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_37_203
.Lcall_proc_staged_α_37_202:
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
.Lcall_proc_staged_α_37_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_37_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_37_205
.Lcall_proc_staged_α_37_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_37_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_37_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_37_207
.Lcall_proc_staged_α_37_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_37_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_37_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_37_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 656]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_37_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_37_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_37_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_37_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_37_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_37_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_37_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_37_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_37_21
                        add              rsp, 32
.Lcall_proc_staged_α_37_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_37_2
.Lcall_proc_staged_α_37_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_37_2
.Lcall_proc_staged_α_37_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_37_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F3_step
.Lcall_proc_staged_α_37_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_37_29
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
.Lcall_proc_staged_α_37_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    mult$2F3_step
                                                                              jmp   mult$2F3_ret0
n13_call_proc_staged_β: mov              r11, 14
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_37_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_37_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_37_22:
                                                                              jmp   mult$2F3_step
.Lcall_proc_staged_α_37_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    mult$2F3_step
                                                                              jmp   mult$2F3_ret0
.Lcall_proc_staged_α_37_0:
                        .quad            .Lcall_proc_staged_α_37_0_s
.Lcall_proc_staged_α_37_0_s:
                        .string          "mult/4"
                        .size            n13_call_proc_staged_bx, .-n13_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_ret0:
                        lea              rax, [rip + n13_call_proc_staged_β]
                        mov              qword ptr [rbp + 608], rax
                                                                              jmp   mult$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_step:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              rax, qword ptr [rbp + 600]
                        test             rax, rax
                                                                              je    mult$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_β:
                        test             r15, r15
                                                                              jne   mult$2F3_ω
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 608], 0
                        test             rax, rax
                                                                              jne   mult$2F3_βres
                                                                              jmp   mult$2F3_step
mult$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rax, qword ptr [rbp + 616]
                        cmp              r13, rax;                            je    mult$2F3_altdet
                        lea              rdx, [rip + mult$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
mult$2F3_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F3_ω:
                        mov              rcx, qword ptr [rbp + 640]
                        mov              r13, qword ptr [rbp + 616]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__mult$2F4:
                        sub              rsp, 3536
                        mov              qword ptr [rsp + 3512], rcx
                        mov              qword ptr [rsp + 3520], rdx
                        mov              qword ptr [rsp + 3528], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3536]
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3496], r13
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3472], r12
                        lea              rax, [rip + mult$2F4_alt1]
                        mov              qword ptr [rsp + 3480], rax
                        lea              rdi, [rsp + 3472]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 3328
                        mov              edx, 3472
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
mult$2F4_α_body:
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 2000], 2            # result
                        mov              dword ptr [rbp + 2004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n40_var_ref_α
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "."
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n42_call_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n43_call_α
n42_call_β:             mov              r11, 19;                             jmp   mult$2F4_step
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n44_var_ref_α
n43_call_β:             mov              r11, 20;                             jmp   mult$2F4_step
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n46_call_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n47_var_ref_α
n46_call_β:             mov              r11, 23;                             jmp   mult$2F4_step
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n50_var_ref_α
n49_call_β:             mov              r11, 26;                             jmp   mult$2F4_step
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1600], 2            # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_147_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n52_var_ref_α
.Llit_string_α_147_0:   .quad            .Llit_string_α_147_0_s
.Llit_string_α_147_0_s: .string          "."
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 31;                             jmp   mult$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 32;                             jmp   mult$2F4_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n58_call_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n59_var_α
n58_call_β:             mov              r11, 35;                             jmp   mult$2F4_step
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n60_call_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             mov              r11, 37
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n61_call_α
n60_call_β:             mov              r11, 37;                             jmp   mult$2F4_step
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 38;                             jmp   mult$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n63_var_α
n62_call_β:             mov              r11, 39;                             jmp   mult$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n64_call_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_call_bx, @function
n64_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n65_call_α
n64_call_β:             mov              r11, 41;                             jmp   mult$2F4_step
                        .size            n64_call_bx, .-n64_call_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n66_call_α
n65_call_β:             mov              r11, 42;                             jmp   mult$2F4_step
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_call_bx, @function
n66_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_call_α:             mov              r11, 43
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n67_var_ref_α
n66_call_β:             mov              r11, 43;                             jmp   mult$2F4_step
                        .size            n66_call_bx, .-n66_call_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n68_var_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 760], rax;          jmp   n69_call_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n70_lit_integer_α
n69_call_β:             mov              r11, 46;                             jmp   mult$2F4_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_174_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n71_call_α
.Llit_integer_α_174_0:  .quad            10
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n72_lit_string_α
n71_call_β:             mov              r11, 48;                             jmp   mult$2F4_step
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_lit_string_bx, @function
n72_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_176_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n73_call_α
.Llit_string_α_176_0:   .quad            .Llit_string_α_176_0_s
.Llit_string_α_176_0_s: .string          "mod"
                        .size            n72_lit_string_bx, .-n72_lit_string_bx
                        .type            n73_call_bx, @function
n73_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             mov              r11, 50
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n74_call_α
n73_call_β:             mov              r11, 50;                             jmp   mult$2F4_step
                        .size            n73_call_bx, .-n73_call_bx
                        .type            n74_call_bx, @function
n74_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:             mov              r11, 51
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n75_call_α
n74_call_β:             mov              r11, 51;                             jmp   mult$2F4_step
                        .size            n74_call_bx, .-n74_call_bx
                        .type            n75_call_bx, @function
n75_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_call_α:             mov              r11, 52
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n76_var_ref_α
n75_call_β:             mov              r11, 52;                             jmp   mult$2F4_step
                        .size            n75_call_bx, .-n75_call_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n77_var_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 408], rax;          jmp   n78_call_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 55
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n79_lit_integer_α
n78_call_β:             mov              r11, 55;                             jmp   mult$2F4_step
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              r11, 56
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n80_call_α
.Llit_integer_α_185_0:  .quad            10
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_call_bx, @function
n80_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_α:             mov              r11, 57
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n81_lit_string_α
n80_call_β:             mov              r11, 57;                             jmp   mult$2F4_step
                        .size            n80_call_bx, .-n80_call_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_187_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n82_call_α
.Llit_string_α_187_0:   .quad            .Llit_string_α_187_0_s
.Llit_string_α_187_0_s: .string          "//"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_call_bx, @function
n82_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_call_α:             mov              r11, 59
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n83_call_α
n82_call_β:             mov              r11, 59;                             jmp   mult$2F4_step
                        .size            n82_call_bx, .-n82_call_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 60
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n84_call_α
n83_call_β:             mov              r11, 60;                             jmp   mult$2F4_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_call_bx, @function
n84_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_α:             mov              r11, 61
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n85_var_ref_α
n84_call_β:             mov              r11, 61;                             jmp   mult$2F4_step
                        .size            n84_call_bx, .-n84_call_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n87_var_ref_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n88_var_ref_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n89_call_proc_staged_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_call_proc_staged_bx, @function
n89_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: mov              r11, 66
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_200_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_200_201
.Lcall_proc_staged_α_200_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_200_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_200_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_200_203
.Lcall_proc_staged_α_200_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_200_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_200_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_200_205
.Lcall_proc_staged_α_200_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_200_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_200_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_200_207
.Lcall_proc_staged_α_200_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_200_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_200_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_200_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3536]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_200_99
                        mov              r10, qword ptr [rbp + 3496]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_200_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_200_99
                        mov              rcx, qword ptr [rbp + 3512]
                        mov              rdx, qword ptr [rbp + 3520]
                        lea              rsp, [rbp + 3536]
                        mov              rbp, qword ptr [rbp + 3528];         jmp   rax
.Lcall_proc_staged_α_200_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_200_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_200_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_200_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_200_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_200_21
                        add              rsp, 32
.Lcall_proc_staged_α_200_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_200_2
.Lcall_proc_staged_α_200_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_200_2
.Lcall_proc_staged_α_200_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_200_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F4_step
.Lcall_proc_staged_α_200_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_200_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_200_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
n89_call_proc_staged_β: mov              r11, 66
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_200_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_200_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_200_22:
                                                                              jmp   mult$2F4_step
.Lcall_proc_staged_α_200_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
.Lcall_proc_staged_α_200_0:
                        .quad            .Lcall_proc_staged_α_200_0_s
.Lcall_proc_staged_α_200_0_s:
                        .string          "mult/4"
                        .size            n89_call_proc_staged_bx, .-n89_call_proc_staged_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx;         jmp   n91_lit_string_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 68
                        mov              qword ptr [rbp + 3312], 2            # result
                        mov              dword ptr [rbp + 3316], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_203_0]
                        mov              qword ptr [rbp + 3320], rax;         jmp   n92_call_α
.Llit_string_α_203_0:   .quad            .Llit_string_α_203_0_s
.Llit_string_α_203_0_s: .string          "[]"
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             mov              r11, 69
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3248]
                        mov              rsi, qword ptr [rip + .Lcall_α_204_2]
                                                                              jmp   .Lcall_α_204_3
.Lcall_α_204_2:         .quad            .Lcall_α_204_2_s
.Lcall_α_204_2_s:       .string          "[]"
.Lcall_α_204_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n93_var_ref_α
n92_call_β:             mov              r11, 69;                             jmp   mult$2F4_step
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n94_var_ref_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx;         jmp   n95_call_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_call_bx, @function
n95_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n96_var_ref_α
n95_call_β:             mov              r11, 72;                             jmp   mult$2F4_step
                        .size            n95_call_bx, .-n95_call_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n97_var_ref_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_var_ref_bx, @function
n97_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx;         jmp   n98_call_α
                        .size            n97_var_ref_bx, .-n97_var_ref_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 75
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 75;                             jmp   mult$2F4_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n100_lit_string_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_lit_string_bx, @function
n100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rbp + 3024], 2            # result
                        mov              dword ptr [rbp + 3028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_217_0]
                        mov              qword ptr [rbp + 3032], rax;         jmp   n101_var_ref_α
.Llit_string_α_217_0:   .quad            .Llit_string_α_217_0_s
.Llit_string_α_217_0_s: .string          "."
                        .size            n100_lit_string_bx, .-n100_lit_string_bx
                        .type            n101_var_ref_bx, @function
n101_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n102_lit_string_α
                        .size            n101_var_ref_bx, .-n101_var_ref_bx
                        .type            n102_lit_string_bx, @function
n102_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_220_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n103_var_ref_α
.Llit_string_α_220_0:   .quad            .Llit_string_α_220_0_s
.Llit_string_α_220_0_s: .string          "."
                        .size            n102_lit_string_bx, .-n102_lit_string_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n104_lit_string_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_223_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n105_call_α
.Llit_string_α_223_0:   .quad            .Llit_string_α_223_0_s
.Llit_string_α_223_0_s: .string          "[]"
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 82
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    mult$2F4_ω
                                                                              jmp   n106_call_α
n105_call_β:            mov              r11, 82;                             jmp   mult$2F4_ω
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            mov              r11, 83
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n107_call_α
n106_call_β:            mov              r11, 83;                             jmp   mult$2F4_step
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            mov              r11, 84
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n108_var_ref_α
n107_call_β:            mov              r11, 84;                             jmp   mult$2F4_step
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_var_ref_bx, @function
n108_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n109_var_α
                        .size            n108_var_ref_bx, .-n108_var_ref_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             mov              r11, 86
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n110_call_α
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n111_lit_integer_α
n110_call_β:            mov              r11, 87;                             jmp   mult$2F4_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     mov              r11, 88
                        mov              qword ptr [rbp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n112_call_α
.Llit_integer_α_232_0:  .quad            10
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_call_bx, @function
n112_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            mov              r11, 89
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n113_lit_string_α
n112_call_β:            mov              r11, 89;                             jmp   mult$2F4_step
                        .size            n112_call_bx, .-n112_call_bx
                        .type            n113_lit_string_bx, @function
n113_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_234_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n114_call_α
.Llit_string_α_234_0:   .quad            .Llit_string_α_234_0_s
.Llit_string_α_234_0_s: .string          "mod"
                        .size            n113_lit_string_bx, .-n113_lit_string_bx
                        .type            n114_call_bx, @function
n114_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n115_call_α
n114_call_β:            mov              r11, 91;                             jmp   mult$2F4_step
                        .size            n114_call_bx, .-n114_call_bx
                        .type            n115_call_bx, @function
n115_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            mov              r11, 92
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n116_call_α
n115_call_β:            mov              r11, 92;                             jmp   mult$2F4_step
                        .size            n115_call_bx, .-n115_call_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n117_var_ref_α
n116_call_β:            mov              r11, 93;                             jmp   mult$2F4_step
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n118_var_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n119_call_α
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n120_lit_integer_α
n119_call_β:            mov              r11, 96;                             jmp   mult$2F4_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_lit_integer_bx, @function
n120_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rbp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_243_0]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n121_call_α
.Llit_integer_α_243_0:  .quad            10
                        .size            n120_lit_integer_bx, .-n120_lit_integer_bx
                        .type            n121_call_bx, @function
n121_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_α:            mov              r11, 98
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n122_lit_string_α
n121_call_β:            mov              r11, 98;                             jmp   mult$2F4_step
                        .size            n121_call_bx, .-n121_call_bx
                        .type            n122_lit_string_bx, @function
n122_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rbp + 2352], 2            # result
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_245_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n123_call_α
.Llit_string_α_245_0:   .quad            .Llit_string_α_245_0_s
.Llit_string_α_245_0_s: .string          "//"
                        .size            n122_lit_string_bx, .-n122_lit_string_bx
                        .type            n123_call_bx, @function
n123_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n124_call_α
n123_call_β:            mov              r11, 100;                            jmp   mult$2F4_step
                        .size            n123_call_bx, .-n123_call_bx
                        .type            n124_call_bx, @function
n124_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            mov              r11, 101
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n125_call_α
n124_call_β:            mov              r11, 101;                            jmp   mult$2F4_step
                        .size            n124_call_bx, .-n124_call_bx
                        .type            n125_call_bx, @function
n125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            mov              r11, 102
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2032]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_γ
n125_call_β:            mov              r11, 102;                            jmp   mult$2F4_step
                        .size            n125_call_bx, .-n125_call_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ret0:
                        lea              rax, [rip + n89_call_proc_staged_β]
                        mov              qword ptr [rbp + 3488], rax
                                                                              jmp   mult$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_step:
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3488], 0
                        mov              qword ptr [rbp + 3344], 0
                        mov              qword ptr [rbp + 3352], 0
                        mov              qword ptr [rbp + 3440], 0
                        mov              qword ptr [rbp + 3448], 0
                        mov              qword ptr [rbp + 3424], 0
                        mov              qword ptr [rbp + 3432], 0
                        mov              qword ptr [rbp + 3328], 0
                        mov              qword ptr [rbp + 3336], 0
                        mov              qword ptr [rbp + 3408], 0
                        mov              qword ptr [rbp + 3416], 0
                        mov              qword ptr [rbp + 3376], 0
                        mov              qword ptr [rbp + 3384], 0
                        mov              qword ptr [rbp + 3392], 0
                        mov              qword ptr [rbp + 3400], 0
                        mov              qword ptr [rbp + 3360], 0
                        mov              qword ptr [rbp + 3368], 0
                        mov              rax, qword ptr [rbp + 3480]
                        test             rax, rax
                                                                              je    mult$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 3480], rax
                        mov              r13, qword ptr [rbp + 3496]
                                                                              jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_β:
                        test             r15, r15
                                                                              jne   mult$2F4_ω
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3488], 0
                        test             rax, rax
                                                                              jne   mult$2F4_βres
                                                                              jmp   mult$2F4_step
mult$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3512]
                        mov              rax, qword ptr [rbp + 3496]
                        cmp              r13, rax;                            je    mult$2F4_altdet
                        lea              rdx, [rip + mult$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3528];         jmp   rcx
mult$2F4_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 3536]
                        mov              rbp, qword ptr [rbp + 3528];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ω:
                        mov              rcx, qword ptr [rbp + 3520]
                        mov              r13, qword ptr [rbp + 3496]
                        lea              rsp, [rbp + 3536]
                        mov              rbp, qword ptr [rbp + 3528];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__odd$2F1:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 552], r13
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 528], r12
                        lea              rax, [rip + odd$2F1_alt1]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
odd$2F1_α_body:
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n250_lit_integer_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_lit_integer_bx, @function
n250_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n251_call_α
.Llit_integer_α_266_0:  .quad            1
                        .size            n250_lit_integer_bx, .-n250_lit_integer_bx
                        .type            n251_call_bx, @function
n251_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    odd$2F1_step
                                                                              jmp   odd$2F1_γ
n251_call_β:            mov              r11, 105;                            jmp   odd$2F1_step
                        .size            n251_call_bx, .-n251_call_bx
                        .type            n252_var_ref_bx, @function
n252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n253_lit_integer_α
                        .size            n252_var_ref_bx, .-n252_var_ref_bx
                        .type            n253_lit_integer_bx, @function
n253_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_270_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n254_call_α
.Llit_integer_α_270_0:  .quad            3
                        .size            n253_lit_integer_bx, .-n253_lit_integer_bx
                        .type            n254_call_bx, @function
n254_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:            mov              r11, 108
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    odd$2F1_step
                                                                              jmp   odd$2F1_γ
n254_call_β:            mov              r11, 108;                            jmp   odd$2F1_step
                        .size            n254_call_bx, .-n254_call_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n256_lit_integer_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_lit_integer_bx, @function
n256_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_274_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n257_call_α
.Llit_integer_α_274_0:  .quad            5
                        .size            n256_lit_integer_bx, .-n256_lit_integer_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    odd$2F1_step
                                                                              jmp   odd$2F1_γ
n257_call_β:            mov              r11, 111;                            jmp   odd$2F1_step
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_var_ref_bx, @function
n258_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n259_lit_integer_α
                        .size            n258_var_ref_bx, .-n258_var_ref_bx
                        .type            n259_lit_integer_bx, @function
n259_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n260_call_α
.Llit_integer_α_278_0:  .quad            7
                        .size            n259_lit_integer_bx, .-n259_lit_integer_bx
                        .type            n260_call_bx, @function
n260_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_call_α:            mov              r11, 114
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    odd$2F1_step
                                                                              jmp   odd$2F1_γ
n260_call_β:            mov              r11, 114;                            jmp   odd$2F1_step
                        .size            n260_call_bx, .-n260_call_bx
                        .type            n261_var_ref_bx, @function
n261_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n262_lit_integer_α
                        .size            n261_var_ref_bx, .-n261_var_ref_bx
                        .type            n262_lit_integer_bx, @function
n262_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     mov              r11, 116
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n263_call_α
.Llit_integer_α_282_0:  .quad            9
                        .size            n262_lit_integer_bx, .-n262_lit_integer_bx
                        .type            n263_call_bx, @function
n263_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    odd$2F1_step
                                                                              jmp   odd$2F1_γ
n263_call_β:            mov              r11, 117;                            jmp   odd$2F1_step
                        .size            n263_call_bx, .-n263_call_bx
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_step:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], 0
                        mov              rax, qword ptr [rbp + 536]
                        test             rax, rax
                                                                              je    odd$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt1:
                        lea              rax, [rip + odd$2F1_alt2]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt2:
                        lea              rax, [rip + odd$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n255_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt3:
                        lea              rax, [rip + odd$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n258_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n261_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_β:
                        test             r15, r15
                                                                              jne   odd$2F1_ω
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 544], 0
                        test             rax, rax
                                                                              jne   odd$2F1_βres
                                                                              jmp   odd$2F1_step
odd$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 568]
                        mov              rax, qword ptr [rbp + 552]
                        cmp              r13, rax;                            je    odd$2F1_altdet
                        lea              rdx, [rip + odd$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
odd$2F1_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_ω:
                        mov              rcx, qword ptr [rbp + 576]
                        mov              r13, qword ptr [rbp + 552]
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sum$2F3:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 616], r13
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 592], r12
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F3_α_body:
                        .type            n284_var_ref_bx, @function
n284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n285_var_ref_α
                        .size            n284_var_ref_bx, .-n284_var_ref_bx
                        .type            n285_var_ref_bx, @function
n285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n286_call_α
                        .size            n285_var_ref_bx, .-n285_var_ref_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            mov              r11, 120
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   n287_var_ref_α
n286_call_β:            mov              r11, 120;                            jmp   sum$2F3_step
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n288_var_ref_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n289_call_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_call_bx, @function
n289_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   n290_var_ref_α
n289_call_β:            mov              r11, 123;                            jmp   sum$2F3_step
                        .size            n289_call_bx, .-n289_call_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n291_var_ref_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_var_ref_bx, @function
n291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n292_call_α
                        .size            n291_var_ref_bx, .-n291_var_ref_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            mov              r11, 126
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   n293_var_ref_α
n292_call_β:            mov              r11, 126;                            jmp   sum$2F3_step
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_var_ref_bx, @function
n293_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n294_var_ref_α
                        .size            n293_var_ref_bx, .-n293_var_ref_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n295_lit_integer_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n296_var_ref_α
.Llit_integer_α_317_0:  .quad            0
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_var_ref_bx, @function
n296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_ref_α:         mov              r11, 130
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n297_call_proc_staged_α
                        .size            n296_var_ref_bx, .-n296_var_ref_bx
                        .type            n297_call_proc_staged_bx, @function
n297_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_proc_staged_α:
                        mov              r11, 131
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_321_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_321_201
.Lcall_proc_staged_α_321_200:
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
.Lcall_proc_staged_α_321_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_321_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_321_203
.Lcall_proc_staged_α_321_202:
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
.Lcall_proc_staged_α_321_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_321_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_321_205
.Lcall_proc_staged_α_321_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_321_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_321_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_321_207
.Lcall_proc_staged_α_321_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_321_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_321_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_321_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 656]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_321_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_321_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_321_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_321_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_321_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_321_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_321_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_321_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_321_21
                        add              rsp, 32
.Lcall_proc_staged_α_321_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_321_2
.Lcall_proc_staged_α_321_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_321_2
.Lcall_proc_staged_α_321_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_321_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F3_step
.Lcall_proc_staged_α_321_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_321_29
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
.Lcall_proc_staged_α_321_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
n297_call_proc_staged_β:
                        mov              r11, 131
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_321_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_321_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_321_22:
                                                                              jmp   sum$2F3_step
.Lcall_proc_staged_α_321_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
.Lcall_proc_staged_α_321_0:
                        .quad            .Lcall_proc_staged_α_321_0_s
.Lcall_proc_staged_α_321_0_s:
                        .string          "sum/4"
                        .size            n297_call_proc_staged_bx, .-n297_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ret0:
                        lea              rax, [rip + n297_call_proc_staged_β]
                        mov              qword ptr [rbp + 608], rax
                                                                              jmp   sum$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_step:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              rax, qword ptr [rbp + 600]
                        test             rax, rax
                                                                              je    sum$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_β:
                        test             r15, r15
                                                                              jne   sum$2F3_ω
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 608], 0
                        test             rax, rax
                                                                              jne   sum$2F3_βres
                                                                              jmp   sum$2F3_step
sum$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rax, qword ptr [rbp + 616]
                        cmp              r13, rax;                            je    sum$2F3_altdet
                        lea              rdx, [rip + sum$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
sum$2F3_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ω:
                        mov              rcx, qword ptr [rbp + 640]
                        mov              r13, qword ptr [rbp + 616]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__sum$2F4:
                        sub              rsp, 3248
                        mov              qword ptr [rsp + 3224], rcx
                        mov              qword ptr [rsp + 3232], rdx
                        mov              qword ptr [rsp + 3240], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3208], r13
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3184], r12
                        lea              rax, [rip + sum$2F4_alt1]
                        mov              qword ptr [rsp + 3192], rax
                        lea              rdi, [rsp + 3184]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 3008
                        mov              edx, 3184
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F4_α_body:
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n323_lit_string_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rbp + 2112], 2            # result
                        mov              dword ptr [rbp + 2116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_408_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n324_var_ref_α
.Llit_string_α_408_0:   .quad            .Llit_string_α_408_0_s
.Llit_string_α_408_0_s: .string          "."
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n325_var_ref_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n326_call_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_call_bx, @function
n326_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_α:            mov              r11, 136
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n327_call_α
n326_call_β:            mov              r11, 136;                            jmp   sum$2F4_step
                        .size            n326_call_bx, .-n326_call_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 137
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n328_var_ref_α
n327_call_β:            mov              r11, 137;                            jmp   sum$2F4_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_var_ref_bx, @function
n328_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n329_lit_string_α
                        .size            n328_var_ref_bx, .-n328_var_ref_bx
                        .type            n329_lit_string_bx, @function
n329_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_417_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n330_var_ref_α
.Llit_string_α_417_0:   .quad            .Llit_string_α_417_0_s
.Llit_string_α_417_0_s: .string          "."
                        .size            n329_lit_string_bx, .-n329_lit_string_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n331_var_ref_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n332_call_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n333_call_α
n332_call_β:            mov              r11, 142;                            jmp   sum$2F4_step
                        .size            n332_call_bx, .-n332_call_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n334_var_ref_α
n333_call_β:            mov              r11, 143;                            jmp   sum$2F4_step
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n335_var_ref_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n336_call_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_call_bx, @function
n336_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            mov              r11, 146
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n337_var_ref_α
n336_call_β:            mov              r11, 146;                            jmp   sum$2F4_step
                        .size            n336_call_bx, .-n336_call_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n338_lit_string_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_lit_string_bx, @function
n338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 1600], 2            # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_431_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n339_var_ref_α
.Llit_string_α_431_0:   .quad            .Llit_string_α_431_0_s
.Llit_string_α_431_0_s: .string          "."
                        .size            n338_lit_string_bx, .-n338_lit_string_bx
                        .type            n339_var_ref_bx, @function
n339_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n340_var_ref_α
                        .size            n339_var_ref_bx, .-n339_var_ref_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n341_call_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_call_bx, @function
n341_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n342_call_α
n341_call_β:            mov              r11, 151;                            jmp   sum$2F4_step
                        .size            n341_call_bx, .-n341_call_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 152
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n343_cut_α
n342_call_β:            mov              r11, 152;                            jmp   sum$2F4_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_cut_bx, @function
n343_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_cut_α:             mov              r11, 153
                        mov              qword ptr [rbp + 3192], 0
                        mov              qword ptr [rbp + 3200], 0
                        lea              rdi, [rbp + 3184]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n344_var_ref_α
                        .size            n343_cut_bx, .-n343_cut_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n345_var_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_var_bx, @function
n345_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n346_call_α
                        .size            n345_var_bx, .-n345_var_bx
                        .type            n346_call_bx, @function
n346_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n347_var_α
n346_call_β:            mov              r11, 156;                            jmp   sum$2F4_step
                        .size            n346_call_bx, .-n346_call_bx
                        .type            n347_var_bx, @function
n347_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             mov              r11, 157
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n348_call_α
                        .size            n347_var_bx, .-n347_var_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 158
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n349_call_α
n348_call_β:            mov              r11, 158;                            jmp   sum$2F4_step
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n350_call_α
n349_call_β:            mov              r11, 159;                            jmp   sum$2F4_step
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_call_bx, @function
n350_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n351_var_α
n350_call_β:            mov              r11, 160;                            jmp   sum$2F4_step
                        .size            n350_call_bx, .-n350_call_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n352_call_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 162
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n353_call_α
n352_call_β:            mov              r11, 162;                            jmp   sum$2F4_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_call_bx, @function
n353_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            mov              r11, 163
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n354_call_α
n353_call_β:            mov              r11, 163;                            jmp   sum$2F4_step
                        .size            n353_call_bx, .-n353_call_bx
                        .type            n354_call_bx, @function
n354_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            mov              r11, 164
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n355_var_ref_α
n354_call_β:            mov              r11, 164;                            jmp   sum$2F4_ω
                        .size            n354_call_bx, .-n354_call_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n356_var_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_var_bx, @function
n356_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 760], rax;          jmp   n357_call_α
                        .size            n356_var_bx, .-n356_var_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n358_lit_integer_α
n357_call_β:            mov              r11, 167;                            jmp   sum$2F4_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_lit_integer_bx, @function
n358_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_460_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n359_call_α
.Llit_integer_α_460_0:  .quad            10
                        .size            n358_lit_integer_bx, .-n358_lit_integer_bx
                        .type            n359_call_bx, @function
n359_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n360_lit_string_α
n359_call_β:            mov              r11, 169;                            jmp   sum$2F4_step
                        .size            n359_call_bx, .-n359_call_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n361_call_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "mod"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 171
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n362_call_α
n361_call_β:            mov              r11, 171;                            jmp   sum$2F4_step
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 172
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n363_call_α
n362_call_β:            mov              r11, 172;                            jmp   sum$2F4_step
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 173
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n364_var_ref_α
n363_call_β:            mov              r11, 173;                            jmp   sum$2F4_ω
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n365_var_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 408], rax;          jmp   n366_call_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_call_bx, @function
n366_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              r11, 176
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n367_lit_integer_α
n366_call_β:            mov              r11, 176;                            jmp   sum$2F4_step
                        .size            n366_call_bx, .-n366_call_bx
                        .type            n367_lit_integer_bx, @function
n367_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_471_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n368_call_α
.Llit_integer_α_471_0:  .quad            10
                        .size            n367_lit_integer_bx, .-n367_lit_integer_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n369_lit_string_α
n368_call_β:            mov              r11, 178;                            jmp   sum$2F4_step
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_lit_string_bx, @function
n369_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n370_call_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "//"
                        .size            n369_lit_string_bx, .-n369_lit_string_bx
                        .type            n370_call_bx, @function
n370_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n371_call_α
n370_call_β:            mov              r11, 180;                            jmp   sum$2F4_step
                        .size            n370_call_bx, .-n370_call_bx
                        .type            n371_call_bx, @function
n371_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n372_call_α
n371_call_β:            mov              r11, 181;                            jmp   sum$2F4_step
                        .size            n371_call_bx, .-n371_call_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n373_var_ref_α
n372_call_β:            mov              r11, 182;                            jmp   sum$2F4_ω
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n374_var_ref_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_var_ref_bx, @function
n374_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n375_var_ref_α
                        .size            n374_var_ref_bx, .-n374_var_ref_bx
                        .type            n375_var_ref_bx, @function
n375_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n376_var_ref_α
                        .size            n375_var_ref_bx, .-n375_var_ref_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n377_call_proc_staged_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_call_proc_staged_bx, @function
n377_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_proc_staged_α:
                        mov              r11, 187
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_486_201
.Lcall_proc_staged_α_486_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_486_203
.Lcall_proc_staged_α_486_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_486_205
.Lcall_proc_staged_α_486_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_486_207
.Lcall_proc_staged_α_486_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_486_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_486_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3248]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_486_99
                        mov              r10, qword ptr [rbp + 3208]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_486_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_486_99
                        mov              rcx, qword ptr [rbp + 3224]
                        mov              rdx, qword ptr [rbp + 3232]
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   rax
.Lcall_proc_staged_α_486_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_486_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_486_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_486_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_486_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_486_21
                        add              rsp, 32
.Lcall_proc_staged_α_486_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_486_2
.Lcall_proc_staged_α_486_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_486_2
.Lcall_proc_staged_α_486_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_486_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F4_ω
.Lcall_proc_staged_α_486_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_486_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_486_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
n377_call_proc_staged_β:
                        mov              r11, 187
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_486_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_486_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_486_22:
                                                                              jmp   sum$2F4_ω
.Lcall_proc_staged_α_486_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
.Lcall_proc_staged_α_486_0:
                        .quad            .Lcall_proc_staged_α_486_0_s
.Lcall_proc_staged_α_486_0_s:
                        .string          "sum/4"
                        .size            n377_call_proc_staged_bx, .-n377_call_proc_staged_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n379_lit_string_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_lit_string_bx, @function
n379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 2496], 2            # result
                        mov              dword ptr [rbp + 2500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n380_call_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "[]"
                        .size            n379_lit_string_bx, .-n379_lit_string_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2432]
                        mov              rsi, qword ptr [rip + .Lcall_α_490_2]
                                                                              jmp   .Lcall_α_490_3
.Lcall_α_490_2:         .quad            .Lcall_α_490_2_s
.Lcall_α_490_2_s:       .string          "[]"
.Lcall_α_490_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n381_var_ref_α
n380_call_β:            mov              r11, 190;                            jmp   sum$2F4_step
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n382_var_ref_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n383_call_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 193
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n384_var_ref_α
n383_call_β:            mov              r11, 193;                            jmp   sum$2F4_step
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n385_lit_integer_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_lit_integer_bx, @function
n385_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_498_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n386_call_α
.Llit_integer_α_498_0:  .quad            0
                        .size            n385_lit_integer_bx, .-n385_lit_integer_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2240]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n387_var_ref_α
n386_call_β:            mov              r11, 196;                            jmp   sum$2F4_step
                        .size            n386_call_bx, .-n386_call_bx
                        .type            n387_var_ref_bx, @function
n387_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n388_var_ref_α
                        .size            n387_var_ref_bx, .-n387_var_ref_bx
                        .type            n388_var_ref_bx, @function
n388_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n389_call_α
                        .size            n388_var_ref_bx, .-n388_var_ref_bx
                        .type            n389_call_bx, @function
n389_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n390_cut_α
n389_call_β:            mov              r11, 199;                            jmp   sum$2F4_step
                        .size            n389_call_bx, .-n389_call_bx
                        .type            n390_cut_bx, @function
n390_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_cut_α:             mov              r11, 200
                        mov              qword ptr [rbp + 3192], 0
                        mov              qword ptr [rbp + 3200], 0
                        lea              rdi, [rbp + 3184]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   sum$2F4_γ
                        .size            n390_cut_bx, .-n390_cut_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n392_lit_string_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_lit_string_bx, @function
n392_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 2992], 2            # result
                        mov              dword ptr [rbp + 2996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n393_call_α
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "[]"
                        .size            n392_lit_string_bx, .-n392_lit_string_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              rsi, qword ptr [rip + .Lcall_α_510_2]
                                                                              jmp   .Lcall_α_510_3
.Lcall_α_510_2:         .quad            .Lcall_α_510_2_s
.Lcall_α_510_2_s:       .string          "[]"
.Lcall_α_510_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n394_var_ref_α
n393_call_β:            mov              r11, 203;                            jmp   sum$2F4_step
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n395_lit_string_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_lit_string_bx, @function
n395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rbp + 2896], 2            # result
                        mov              dword ptr [rbp + 2900], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n396_call_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "[]"
                        .size            n395_lit_string_bx, .-n395_lit_string_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 206
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2832]
                        mov              rsi, qword ptr [rip + .Lcall_α_514_2]
                                                                              jmp   .Lcall_α_514_3
.Lcall_α_514_2:         .quad            .Lcall_α_514_2_s
.Lcall_α_514_2_s:       .string          "[]"
.Lcall_α_514_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n397_var_ref_α
n396_call_β:            mov              r11, 206;                            jmp   sum$2F4_step
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n398_var_ref_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_var_ref_bx, @function
n398_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n399_call_α
                        .size            n398_var_ref_bx, .-n398_var_ref_bx
                        .type            n399_call_bx, @function
n399_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n400_var_ref_α
n399_call_β:            mov              r11, 209;                            jmp   sum$2F4_step
                        .size            n399_call_bx, .-n399_call_bx
                        .type            n400_var_ref_bx, @function
n400_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n401_lit_string_α
                        .size            n400_var_ref_bx, .-n400_var_ref_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rbp + 2704], 2            # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_522_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n402_var_ref_α
.Llit_string_α_522_0:   .quad            .Llit_string_α_522_0_s
.Llit_string_α_522_0_s: .string          "."
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_var_ref_bx, @function
n402_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx;         jmp   n403_lit_string_α
                        .size            n402_var_ref_bx, .-n402_var_ref_bx
                        .type            n403_lit_string_bx, @function
n403_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 2592], 2            # result
                        mov              dword ptr [rbp + 2596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_525_0]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n404_call_α
.Llit_string_α_525_0:   .quad            .Llit_string_α_525_0_s
.Llit_string_α_525_0_s: .string          "[]"
                        .size            n403_lit_string_bx, .-n403_lit_string_bx
                        .type            n404_call_bx, @function
n404_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n405_call_α
n404_call_β:            mov              r11, 214;                            jmp   sum$2F4_step
                        .size            n404_call_bx, .-n404_call_bx
                        .type            n405_call_bx, @function
n405_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2536], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   sum$2F4_γ
n405_call_β:            mov              r11, 215;                            jmp   sum$2F4_step
                        .size            n405_call_bx, .-n405_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ret0:
                        lea              rax, [rip + n377_call_proc_staged_β]
                        mov              qword ptr [rbp + 3200], rax
                                                                              jmp   sum$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_step:
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                        mov              qword ptr [rbp + 3136], 0
                        mov              qword ptr [rbp + 3144], 0
                        mov              qword ptr [rbp + 3104], 0
                        mov              qword ptr [rbp + 3112], 0
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              qword ptr [rbp + 3088], 0
                        mov              qword ptr [rbp + 3096], 0
                        mov              qword ptr [rbp + 3056], 0
                        mov              qword ptr [rbp + 3064], 0
                        mov              qword ptr [rbp + 3072], 0
                        mov              qword ptr [rbp + 3080], 0
                        mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0
                        mov              rax, qword ptr [rbp + 3192]
                        test             rax, rax
                                                                              je    sum$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt1:
                        lea              rax, [rip + sum$2F4_alt2]
                        mov              qword ptr [rbp + 3192], rax
                                                                              jmp   n378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 3192], rax
                        mov              r13, qword ptr [rbp + 3208]
                                                                              jmp   n391_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_β:
                        test             r15, r15
                                                                              jne   sum$2F4_ω
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3200], 0
                        test             rax, rax
                                                                              jne   sum$2F4_βres
                                                                              jmp   sum$2F4_step
sum$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3224]
                        mov              rax, qword ptr [rbp + 3208]
                        cmp              r13, rax;                            je    sum$2F4_altdet
                        lea              rdx, [rip + sum$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3240];         jmp   rcx
sum$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ω:
                        mov              rcx, qword ptr [rbp + 3232]
                        mov              r13, qword ptr [rbp + 3208]
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__even$2F1:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 552], r13
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 528], r12
                        lea              rax, [rip + even$2F1_alt1]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
even$2F1_α_body:
                        .type            n528_var_ref_bx, @function
n528_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n529_lit_integer_α
                        .size            n528_var_ref_bx, .-n528_var_ref_bx
                        .type            n529_lit_integer_bx, @function
n529_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_545_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n530_call_α
.Llit_integer_α_545_0:  .quad            0
                        .size            n529_lit_integer_bx, .-n529_lit_integer_bx
                        .type            n530_call_bx, @function
n530_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    even$2F1_step
                                                                              jmp   even$2F1_γ
n530_call_β:            mov              r11, 218;                            jmp   even$2F1_step
                        .size            n530_call_bx, .-n530_call_bx
                        .type            n531_var_ref_bx, @function
n531_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n532_lit_integer_α
                        .size            n531_var_ref_bx, .-n531_var_ref_bx
                        .type            n532_lit_integer_bx, @function
n532_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n533_call_α
.Llit_integer_α_549_0:  .quad            2
                        .size            n532_lit_integer_bx, .-n532_lit_integer_bx
                        .type            n533_call_bx, @function
n533_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    even$2F1_step
                                                                              jmp   even$2F1_γ
n533_call_β:            mov              r11, 221;                            jmp   even$2F1_step
                        .size            n533_call_bx, .-n533_call_bx
                        .type            n534_var_ref_bx, @function
n534_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n535_lit_integer_α
                        .size            n534_var_ref_bx, .-n534_var_ref_bx
                        .type            n535_lit_integer_bx, @function
n535_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_integer_α:     mov              r11, 223
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n536_call_α
.Llit_integer_α_553_0:  .quad            4
                        .size            n535_lit_integer_bx, .-n535_lit_integer_bx
                        .type            n536_call_bx, @function
n536_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_call_α:            mov              r11, 224
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    even$2F1_step
                                                                              jmp   even$2F1_γ
n536_call_β:            mov              r11, 224;                            jmp   even$2F1_step
                        .size            n536_call_bx, .-n536_call_bx
                        .type            n537_var_ref_bx, @function
n537_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n538_lit_integer_α
                        .size            n537_var_ref_bx, .-n537_var_ref_bx
                        .type            n538_lit_integer_bx, @function
n538_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_integer_α:     mov              r11, 226
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_557_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n539_call_α
.Llit_integer_α_557_0:  .quad            6
                        .size            n538_lit_integer_bx, .-n538_lit_integer_bx
                        .type            n539_call_bx, @function
n539_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_call_α:            mov              r11, 227
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    even$2F1_step
                                                                              jmp   even$2F1_γ
n539_call_β:            mov              r11, 227;                            jmp   even$2F1_step
                        .size            n539_call_bx, .-n539_call_bx
                        .type            n540_var_ref_bx, @function
n540_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n541_lit_integer_α
                        .size            n540_var_ref_bx, .-n540_var_ref_bx
                        .type            n541_lit_integer_bx, @function
n541_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_561_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n542_call_α
.Llit_integer_α_561_0:  .quad            8
                        .size            n541_lit_integer_bx, .-n541_lit_integer_bx
                        .type            n542_call_bx, @function
n542_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_call_α:            mov              r11, 230
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    even$2F1_step
                                                                              jmp   even$2F1_γ
n542_call_β:            mov              r11, 230;                            jmp   even$2F1_step
                        .size            n542_call_bx, .-n542_call_bx
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_step:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], 0
                        mov              rax, qword ptr [rbp + 536]
                        test             rax, rax
                                                                              je    even$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt1:
                        lea              rax, [rip + even$2F1_alt2]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n531_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt2:
                        lea              rax, [rip + even$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n534_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt3:
                        lea              rax, [rip + even$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n540_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_β:
                        test             r15, r15
                                                                              jne   even$2F1_ω
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 544], 0
                        test             rax, rax
                                                                              jne   even$2F1_βres
                                                                              jmp   even$2F1_step
even$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 568]
                        mov              rax, qword ptr [rbp + 552]
                        cmp              r13, rax;                            je    even$2F1_altdet
                        lea              rdx, [rip + even$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
even$2F1_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_ω:
                        mov              rcx, qword ptr [rbp + 576]
                        mov              r13, qword ptr [rbp + 552]
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__top$2F16:
                        sub              rsp, 6944
                        mov              qword ptr [rsp + 6920], rcx
                        mov              qword ptr [rsp + 6928], rdx
                        mov              qword ptr [rsp + 6936], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 6944]
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6904], r13
                        mov              qword ptr [rsp + 6896], 0
                        mov              qword ptr [rsp + 6888], 0
                        mov              qword ptr [rsp + 6880], r12
                        mov              rdi, rsp
                        mov              esi, 6560
                        mov              edx, 6880
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 16
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
top$2F16_α_body:
                        .type            n563_var_ref_bx, @function
n563_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n564_var_ref_α
                        .size            n563_var_ref_bx, .-n563_var_ref_bx
                        .type            n564_var_ref_bx, @function
n564_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n565_call_α
                        .size            n564_var_ref_bx, .-n564_var_ref_bx
                        .type            n565_call_bx, @function
n565_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_call_α:            mov              r11, 233
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6504], rax
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6488], rax
                        lea              rdi, [rbp + 6480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n566_var_ref_α
n565_call_β:            mov              r11, 233;                            jmp   top$2F16_step
                        .size            n565_call_bx, .-n565_call_bx
                        .type            n566_var_ref_bx, @function
n566_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n567_var_ref_α
                        .size            n566_var_ref_bx, .-n566_var_ref_bx
                        .type            n567_var_ref_bx, @function
n567_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n568_call_α
                        .size            n567_var_ref_bx, .-n567_var_ref_bx
                        .type            n568_call_bx, @function
n568_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_call_α:            mov              r11, 236
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6400], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6408], rax
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 6392], rax
                        lea              rdi, [rbp + 6384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n569_var_ref_α
n568_call_β:            mov              r11, 236;                            jmp   top$2F16_step
                        .size            n568_call_bx, .-n568_call_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n570_var_ref_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_var_ref_bx, @function
n570_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n571_call_α
                        .size            n570_var_ref_bx, .-n570_var_ref_bx
                        .type            n571_call_bx, @function
n571_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6360]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n572_var_ref_α
n571_call_β:            mov              r11, 239;                            jmp   top$2F16_step
                        .size            n571_call_bx, .-n571_call_bx
                        .type            n572_var_ref_bx, @function
n572_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n573_var_ref_α
                        .size            n572_var_ref_bx, .-n572_var_ref_bx
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n574_call_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_call_bx, @function
n574_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            mov              r11, 242
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6264]
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
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n575_var_ref_α
n574_call_β:            mov              r11, 242;                            jmp   top$2F16_step
                        .size            n574_call_bx, .-n574_call_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n576_var_ref_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_var_ref_bx, @function
n576_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n577_call_α
                        .size            n576_var_ref_bx, .-n576_var_ref_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 245
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
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n578_var_ref_α
n577_call_β:            mov              r11, 245;                            jmp   top$2F16_step
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n579_var_ref_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_var_ref_bx, @function
n579_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n580_call_α
                        .size            n579_var_ref_bx, .-n579_var_ref_bx
                        .type            n580_call_bx, @function
n580_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            mov              r11, 248
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 6008], rax
                        lea              rdi, [rbp + 6000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n581_var_ref_α
n580_call_β:            mov              r11, 248;                            jmp   top$2F16_step
                        .size            n580_call_bx, .-n580_call_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n582_var_ref_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n583_call_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_call_bx, @function
n583_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            mov              r11, 251
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 5976]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n584_var_ref_α
n583_call_β:            mov              r11, 251;                            jmp   top$2F16_step
                        .size            n583_call_bx, .-n583_call_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n585_var_ref_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n586_call_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 254
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5880]
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
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n587_var_ref_α
n586_call_β:            mov              r11, 254;                            jmp   top$2F16_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_var_ref_bx, @function
n587_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 144]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n588_var_ref_α
                        .size            n587_var_ref_bx, .-n587_var_ref_bx
                        .type            n588_var_ref_bx, @function
n588_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n589_call_α
                        .size            n588_var_ref_bx, .-n588_var_ref_bx
                        .type            n589_call_bx, @function
n589_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            mov              r11, 257
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n590_var_ref_α
n589_call_β:            mov              r11, 257;                            jmp   top$2F16_step
                        .size            n589_call_bx, .-n589_call_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 160]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n591_var_ref_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_var_ref_bx, @function
n591_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n592_call_α
                        .size            n591_var_ref_bx, .-n591_var_ref_bx
                        .type            n592_call_bx, @function
n592_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_call_α:            mov              r11, 260
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5616]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n593_var_ref_α
n592_call_β:            mov              r11, 260;                            jmp   top$2F16_step
                        .size            n592_call_bx, .-n592_call_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n594_var_ref_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_var_ref_bx, @function
n594_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n595_call_α
                        .size            n594_var_ref_bx, .-n594_var_ref_bx
                        .type            n595_call_bx, @function
n595_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            mov              r11, 263
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5528], rax
                        lea              rdi, [rbp + 5520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n596_var_ref_α
n595_call_β:            mov              r11, 263;                            jmp   top$2F16_step
                        .size            n595_call_bx, .-n595_call_bx
                        .type            n596_var_ref_bx, @function
n596_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx;         jmp   n597_var_ref_α
                        .size            n596_var_ref_bx, .-n596_var_ref_bx
                        .type            n597_var_ref_bx, @function
n597_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n598_call_α
                        .size            n597_var_ref_bx, .-n597_var_ref_bx
                        .type            n598_call_bx, @function
n598_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_call_α:            mov              r11, 266
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5432], rax
                        lea              rdi, [rbp + 5424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n599_var_ref_α
n598_call_β:            mov              r11, 266;                            jmp   top$2F16_step
                        .size            n598_call_bx, .-n598_call_bx
                        .type            n599_var_ref_bx, @function
n599_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n600_var_ref_α
                        .size            n599_var_ref_bx, .-n599_var_ref_bx
                        .type            n600_var_ref_bx, @function
n600_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n601_call_α
                        .size            n600_var_ref_bx, .-n600_var_ref_bx
                        .type            n601_call_bx, @function
n601_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_call_α:            mov              r11, 269
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n602_var_ref_α
n601_call_β:            mov              r11, 269;                            jmp   top$2F16_step
                        .size            n601_call_bx, .-n601_call_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 224]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n603_var_ref_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_var_ref_bx, @function
n603_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n604_call_α
                        .size            n603_var_ref_bx, .-n603_var_ref_bx
                        .type            n604_call_bx, @function
n604_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            mov              r11, 272
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5240], rax
                        lea              rdi, [rbp + 5232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n605_var_ref_α
n604_call_β:            mov              r11, 272;                            jmp   top$2F16_step
                        .size            n604_call_bx, .-n604_call_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n606_var_ref_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_var_ref_bx, @function
n606_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n607_call_α
                        .size            n606_var_ref_bx, .-n606_var_ref_bx
                        .type            n607_call_bx, @function
n607_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_α:            mov              r11, 275
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5144], rax
                        lea              rdi, [rbp + 5136]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n608_var_ref_α
n607_call_β:            mov              r11, 275;                            jmp   top$2F16_step
                        .size            n607_call_bx, .-n607_call_bx
                        .type            n608_var_ref_bx, @function
n608_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n609_var_ref_α
                        .size            n608_var_ref_bx, .-n608_var_ref_bx
                        .type            n609_var_ref_bx, @function
n609_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx;         jmp   n610_call_α
                        .size            n609_var_ref_bx, .-n609_var_ref_bx
                        .type            n610_call_bx, @function
n610_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_call_α:            mov              r11, 278
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5048], rax
                        lea              rdi, [rbp + 5040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n611_var_ref_α
n610_call_β:            mov              r11, 278;                            jmp   top$2F16_step
                        .size            n610_call_bx, .-n610_call_bx
                        .type            n611_var_ref_bx, @function
n611_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n612_call_proc_staged_α
                        .size            n611_var_ref_bx, .-n611_var_ref_bx
                        .type            n612_call_proc_staged_bx, @function
n612_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_call_proc_staged_α:
                        mov              r11, 280
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_819_200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_819_201
.Lcall_proc_staged_α_819_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_819_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_819_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_819_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_819_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_819_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_819_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_819_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_819_21
                        add              rsp, 32
.Lcall_proc_staged_α_819_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_819_2
.Lcall_proc_staged_α_819_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_819_2
.Lcall_proc_staged_α_819_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_819_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F16_step
.Lcall_proc_staged_α_819_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_819_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4944]
                        mov              rdx, qword ptr [rbp + 4952]
.Lcall_proc_staged_α_819_29:
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n613_var_ref_α
n612_call_proc_staged_β:
                        mov              r11, 280
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_819_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_819_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_819_22:
                                                                              jmp   top$2F16_step
.Lcall_proc_staged_α_819_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n613_var_ref_α
.Lcall_proc_staged_α_819_0:
                        .quad            .Lcall_proc_staged_α_819_0_s
.Lcall_proc_staged_α_819_0_s:
                        .string          "odd/1"
                        .size            n612_call_proc_staged_bx, .-n612_call_proc_staged_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n614_call_proc_staged_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_call_proc_staged_bx, @function
n614_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_call_proc_staged_α:
                        mov              r11, 282
                        mov              qword ptr [rbp + 4896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_823_200
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_823_201
.Lcall_proc_staged_α_823_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_823_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_823_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_823_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_823_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_823_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_823_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_823_3:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_823_21
                        add              rsp, 32
.Lcall_proc_staged_α_823_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_823_2
.Lcall_proc_staged_α_823_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_823_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n612_call_proc_staged_β
.Lcall_proc_staged_α_823_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_823_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rdx, qword ptr [rbp + 4872]
.Lcall_proc_staged_α_823_29:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n612_call_proc_staged_β
                                                                              jmp   n615_var_ref_α
n614_call_proc_staged_β:
                        mov              r11, 282
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_823_22
                        mov              rax, qword ptr [rbp + 4896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_823_22
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_823_22:
                                                                              jmp   n612_call_proc_staged_β
.Lcall_proc_staged_α_823_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n612_call_proc_staged_β
                                                                              jmp   n615_var_ref_α
.Lcall_proc_staged_α_823_0:
                        .quad            .Lcall_proc_staged_α_823_0_s
.Lcall_proc_staged_α_823_0_s:
                        .string          "even/1"
                        .size            n614_call_proc_staged_bx, .-n614_call_proc_staged_bx
                        .type            n615_var_ref_bx, @function
n615_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:         mov              r11, 283
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx;         jmp   n616_call_proc_staged_α
                        .size            n615_var_ref_bx, .-n615_var_ref_bx
                        .type            n616_call_proc_staged_bx, @function
n616_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_call_proc_staged_α:
                        mov              r11, 284
                        mov              qword ptr [rbp + 4816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_827_200
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_827_201
.Lcall_proc_staged_α_827_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_827_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_827_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_827_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_827_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_827_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_827_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_827_3:
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_827_21
                        add              rsp, 32
.Lcall_proc_staged_α_827_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_827_2
.Lcall_proc_staged_α_827_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4816], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_827_2
.Lcall_proc_staged_α_827_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_827_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n614_call_proc_staged_β
.Lcall_proc_staged_α_827_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_827_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4784]
                        mov              rdx, qword ptr [rbp + 4792]
.Lcall_proc_staged_α_827_29:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n614_call_proc_staged_β
                                                                              jmp   n617_var_ref_α
n616_call_proc_staged_β:
                        mov              r11, 284
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_827_22
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_827_22
                        mov              rcx, qword ptr [rbp + 4824]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_827_22:
                                                                              jmp   n614_call_proc_staged_β
.Lcall_proc_staged_α_827_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n614_call_proc_staged_β
                                                                              jmp   n617_var_ref_α
.Lcall_proc_staged_α_827_0:
                        .quad            .Lcall_proc_staged_α_827_0_s
.Lcall_proc_staged_α_827_0_s:
                        .string          "even/1"
                        .size            n616_call_proc_staged_bx, .-n616_call_proc_staged_bx
                        .type            n617_var_ref_bx, @function
n617_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n618_call_proc_staged_α
                        .size            n617_var_ref_bx, .-n617_var_ref_bx
                        .type            n618_call_proc_staged_bx, @function
n618_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_call_proc_staged_α:
                        mov              r11, 286
                        mov              qword ptr [rbp + 4736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_831_200
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_831_201
.Lcall_proc_staged_α_831_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_831_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_831_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_831_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_831_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_831_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_831_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_831_3:
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_831_21
                        add              rsp, 32
.Lcall_proc_staged_α_831_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_831_2
.Lcall_proc_staged_α_831_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_831_2
.Lcall_proc_staged_α_831_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_831_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_call_proc_staged_β
.Lcall_proc_staged_α_831_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_831_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4704]
                        mov              rdx, qword ptr [rbp + 4712]
.Lcall_proc_staged_α_831_29:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n616_call_proc_staged_β
                                                                              jmp   n619_lit_string_α
n618_call_proc_staged_β:
                        mov              r11, 286
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_831_22
                        mov              rax, qword ptr [rbp + 4736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_831_22
                        mov              rcx, qword ptr [rbp + 4744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_831_22:
                                                                              jmp   n616_call_proc_staged_β
.Lcall_proc_staged_α_831_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n616_call_proc_staged_β
                                                                              jmp   n619_lit_string_α
.Lcall_proc_staged_α_831_0:
                        .quad            .Lcall_proc_staged_α_831_0_s
.Lcall_proc_staged_α_831_0_s:
                        .string          "even/1"
                        .size            n618_call_proc_staged_bx, .-n618_call_proc_staged_bx
                        .type            n619_lit_string_bx, @function
n619_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rbp + 4208], 2            # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n620_var_ref_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "."
                        .size            n619_lit_string_bx, .-n619_lit_string_bx
                        .type            n620_var_ref_bx, @function
n620_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n621_lit_string_α
                        .size            n620_var_ref_bx, .-n620_var_ref_bx
                        .type            n621_lit_string_bx, @function
n621_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_string_α:      mov              r11, 289
                        mov              qword ptr [rbp + 4096], 2            # result
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_835_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n622_var_ref_α
.Llit_string_α_835_0:   .quad            .Llit_string_α_835_0_s
.Llit_string_α_835_0_s: .string          "."
                        .size            n621_lit_string_bx, .-n621_lit_string_bx
                        .type            n622_var_ref_bx, @function
n622_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx;         jmp   n623_lit_string_α
                        .size            n622_var_ref_bx, .-n622_var_ref_bx
                        .type            n623_lit_string_bx, @function
n623_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_838_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n624_var_ref_α
.Llit_string_α_838_0:   .quad            .Llit_string_α_838_0_s
.Llit_string_α_838_0_s: .string          "."
                        .size            n623_lit_string_bx, .-n623_lit_string_bx
                        .type            n624_var_ref_bx, @function
n624_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 292
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n625_lit_string_α
                        .size            n624_var_ref_bx, .-n624_var_ref_bx
                        .type            n625_lit_string_bx, @function
n625_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 293
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_841_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n626_call_α
.Llit_string_α_841_0:   .quad            .Llit_string_α_841_0_s
.Llit_string_α_841_0_s: .string          "[]"
                        .size            n625_lit_string_bx, .-n625_lit_string_bx
                        .type            n626_call_bx, @function
n626_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_call_α:            mov              r11, 294
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3920]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n627_call_α
n626_call_β:            mov              r11, 294;                            jmp   top$2F16_ω
                        .size            n626_call_bx, .-n626_call_bx
                        .type            n627_call_bx, @function
n627_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4040], rax
                        lea              rdi, [rbp + 4032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n628_call_α
n627_call_β:            mov              r11, 295;                            jmp   top$2F16_ω
                        .size            n627_call_bx, .-n627_call_bx
                        .type            n628_call_bx, @function
n628_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_call_α:            mov              r11, 296
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4152], rax
                        lea              rdi, [rbp + 4144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n629_var_ref_α
n628_call_β:            mov              r11, 296;                            jmp   top$2F16_step
                        .size            n628_call_bx, .-n628_call_bx
                        .type            n629_var_ref_bx, @function
n629_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:         mov              r11, 297
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n630_lit_string_α
                        .size            n629_var_ref_bx, .-n629_var_ref_bx
                        .type            n630_lit_string_bx, @function
n630_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_847_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n631_var_ref_α
.Llit_string_α_847_0:   .quad            .Llit_string_α_847_0_s
.Llit_string_α_847_0_s: .string          "."
                        .size            n630_lit_string_bx, .-n630_lit_string_bx
                        .type            n631_var_ref_bx, @function
n631_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n632_lit_string_α
                        .size            n631_var_ref_bx, .-n631_var_ref_bx
                        .type            n632_lit_string_bx, @function
n632_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_850_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n633_var_ref_α
.Llit_string_α_850_0:   .quad            .Llit_string_α_850_0_s
.Llit_string_α_850_0_s: .string          "."
                        .size            n632_lit_string_bx, .-n632_lit_string_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n634_lit_string_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_lit_string_bx, @function
n634_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_853_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n635_var_ref_α
.Llit_string_α_853_0:   .quad            .Llit_string_α_853_0_s
.Llit_string_α_853_0_s: .string          "."
                        .size            n634_lit_string_bx, .-n634_lit_string_bx
                        .type            n635_var_ref_bx, @function
n635_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n636_lit_string_α
                        .size            n635_var_ref_bx, .-n635_var_ref_bx
                        .type            n636_lit_string_bx, @function
n636_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      mov              r11, 304
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_856_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n637_var_ref_α
.Llit_string_α_856_0:   .quad            .Llit_string_α_856_0_s
.Llit_string_α_856_0_s: .string          "."
                        .size            n636_lit_string_bx, .-n636_lit_string_bx
                        .type            n637_var_ref_bx, @function
n637_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n638_var_ref_α
                        .size            n637_var_ref_bx, .-n637_var_ref_bx
                        .type            n638_var_ref_bx, @function
n638_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n639_call_α
                        .size            n638_var_ref_bx, .-n638_var_ref_bx
                        .type            n639_call_bx, @function
n639_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_α:            mov              r11, 307
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rdi, [rbp + 4288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n640_call_α
n639_call_β:            mov              r11, 307;                            jmp   top$2F16_ω
                        .size            n639_call_bx, .-n639_call_bx
                        .type            n640_call_bx, @function
n640_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:            mov              r11, 308
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n641_call_α
n640_call_β:            mov              r11, 308;                            jmp   top$2F16_ω
                        .size            n640_call_bx, .-n640_call_bx
                        .type            n641_call_bx, @function
n641_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:            mov              r11, 309
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n642_call_α
n641_call_β:            mov              r11, 309;                            jmp   top$2F16_ω
                        .size            n641_call_bx, .-n641_call_bx
                        .type            n642_call_bx, @function
n642_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n643_call_proc_staged_α
n642_call_β:            mov              r11, 310;                            jmp   top$2F16_step
                        .size            n642_call_bx, .-n642_call_bx
                        .type            n643_call_proc_staged_bx, @function
n643_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_proc_staged_α:
                        mov              r11, 311
                        mov              qword ptr [rbp + 3840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_866_200
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_866_201
.Lcall_proc_staged_α_866_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_866_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_866_202
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_866_203
.Lcall_proc_staged_α_866_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_866_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_866_204
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_866_205
.Lcall_proc_staged_α_866_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_866_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_866_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_866_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_866_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_866_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_866_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_866_3:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_866_21
                        add              rsp, 32
.Lcall_proc_staged_α_866_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_866_2
.Lcall_proc_staged_α_866_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_866_2
.Lcall_proc_staged_α_866_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_866_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n618_call_proc_staged_β
.Lcall_proc_staged_α_866_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_866_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3776]
                        mov              rdx, qword ptr [rbp + 3784]
.Lcall_proc_staged_α_866_29:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n618_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
n643_call_proc_staged_β:
                        mov              r11, 311
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_866_22
                        mov              rax, qword ptr [rbp + 3840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_866_22
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_866_22:
                                                                              jmp   n618_call_proc_staged_β
.Lcall_proc_staged_α_866_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n618_call_proc_staged_β
                                                                              jmp   n644_var_ref_α
.Lcall_proc_staged_α_866_0:
                        .quad            .Lcall_proc_staged_α_866_0_s
.Lcall_proc_staged_α_866_0_s:
                        .string          "mult/3"
                        .size            n643_call_proc_staged_bx, .-n643_call_proc_staged_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n645_call_proc_staged_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_call_proc_staged_bx, @function
n645_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_call_proc_staged_α:
                        mov              r11, 313
                        mov              qword ptr [rbp + 3728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_870_200
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_870_201
.Lcall_proc_staged_α_870_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_870_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_870_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_870_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_870_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_870_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_870_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_870_3:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_870_21
                        add              rsp, 32
.Lcall_proc_staged_α_870_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_870_2
.Lcall_proc_staged_α_870_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_870_2
.Lcall_proc_staged_α_870_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_870_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n643_call_proc_staged_β
.Lcall_proc_staged_α_870_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_870_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
.Lcall_proc_staged_α_870_29:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   n646_var_ref_α
n645_call_proc_staged_β:
                        mov              r11, 313
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_870_22
                        mov              rax, qword ptr [rbp + 3728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_870_22
                        mov              rcx, qword ptr [rbp + 3736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_870_22:
                                                                              jmp   n643_call_proc_staged_β
.Lcall_proc_staged_α_870_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n643_call_proc_staged_β
                                                                              jmp   n646_var_ref_α
.Lcall_proc_staged_α_870_0:
                        .quad            .Lcall_proc_staged_α_870_0_s
.Lcall_proc_staged_α_870_0_s:
                        .string          "lefteven/1"
                        .size            n645_call_proc_staged_bx, .-n645_call_proc_staged_bx
                        .type            n646_var_ref_bx, @function
n646_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_var_ref_α:         mov              r11, 314
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n647_call_proc_staged_α
                        .size            n646_var_ref_bx, .-n646_var_ref_bx
                        .type            n647_call_proc_staged_bx, @function
n647_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_call_proc_staged_α:
                        mov              r11, 315
                        mov              qword ptr [rbp + 3648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_874_200
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_874_201
.Lcall_proc_staged_α_874_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_874_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_874_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_874_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_874_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_874_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_874_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_874_3:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_874_21
                        add              rsp, 32
.Lcall_proc_staged_α_874_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_874_2
.Lcall_proc_staged_α_874_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3648], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_874_2
.Lcall_proc_staged_α_874_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_874_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n645_call_proc_staged_β
.Lcall_proc_staged_α_874_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_874_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3616]
                        mov              rdx, qword ptr [rbp + 3624]
.Lcall_proc_staged_α_874_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n645_call_proc_staged_β
                                                                              jmp   n648_var_ref_α
n647_call_proc_staged_β:
                        mov              r11, 315
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_874_22
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_874_22
                        mov              rcx, qword ptr [rbp + 3656]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_874_22:
                                                                              jmp   n645_call_proc_staged_β
.Lcall_proc_staged_α_874_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n645_call_proc_staged_β
                                                                              jmp   n648_var_ref_α
.Lcall_proc_staged_α_874_0:
                        .quad            .Lcall_proc_staged_α_874_0_s
.Lcall_proc_staged_α_874_0_s:
                        .string          "odd/1"
                        .size            n647_call_proc_staged_bx, .-n647_call_proc_staged_bx
                        .type            n648_var_ref_bx, @function
n648_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         mov              r11, 316
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n649_call_proc_staged_α
                        .size            n648_var_ref_bx, .-n648_var_ref_bx
                        .type            n649_call_proc_staged_bx, @function
n649_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_call_proc_staged_α:
                        mov              r11, 317
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_878_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_878_201
.Lcall_proc_staged_α_878_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_878_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_878_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_878_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_878_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_878_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_878_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_878_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_878_21
                        add              rsp, 32
.Lcall_proc_staged_α_878_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_878_2
.Lcall_proc_staged_α_878_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_878_2
.Lcall_proc_staged_α_878_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_878_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n647_call_proc_staged_β
.Lcall_proc_staged_α_878_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_878_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3536]
                        mov              rdx, qword ptr [rbp + 3544]
.Lcall_proc_staged_α_878_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n647_call_proc_staged_β
                                                                              jmp   n650_var_ref_α
n649_call_proc_staged_β:
                        mov              r11, 317
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_878_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_878_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_878_22:
                                                                              jmp   n647_call_proc_staged_β
.Lcall_proc_staged_α_878_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n647_call_proc_staged_β
                                                                              jmp   n650_var_ref_α
.Lcall_proc_staged_α_878_0:
                        .quad            .Lcall_proc_staged_α_878_0_s
.Lcall_proc_staged_α_878_0_s:
                        .string          "even/1"
                        .size            n649_call_proc_staged_bx, .-n649_call_proc_staged_bx
                        .type            n650_var_ref_bx, @function
n650_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_var_ref_α:         mov              r11, 318
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n651_call_proc_staged_α
                        .size            n650_var_ref_bx, .-n650_var_ref_bx
                        .type            n651_call_proc_staged_bx, @function
n651_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_proc_staged_α:
                        mov              r11, 319
                        mov              qword ptr [rbp + 3488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_882_200
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_882_201
.Lcall_proc_staged_α_882_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_882_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_882_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_882_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_882_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_882_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_882_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_882_3:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_882_21
                        add              rsp, 32
.Lcall_proc_staged_α_882_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3488], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_882_2
.Lcall_proc_staged_α_882_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_882_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n649_call_proc_staged_β
.Lcall_proc_staged_α_882_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_882_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
.Lcall_proc_staged_α_882_29:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n649_call_proc_staged_β
                                                                              jmp   n652_var_ref_α
n651_call_proc_staged_β:
                        mov              r11, 319
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_882_22
                        mov              rax, qword ptr [rbp + 3488]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_882_22
                        mov              rcx, qword ptr [rbp + 3496]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_882_22:
                                                                              jmp   n649_call_proc_staged_β
.Lcall_proc_staged_α_882_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n649_call_proc_staged_β
                                                                              jmp   n652_var_ref_α
.Lcall_proc_staged_α_882_0:
                        .quad            .Lcall_proc_staged_α_882_0_s
.Lcall_proc_staged_α_882_0_s:
                        .string          "even/1"
                        .size            n651_call_proc_staged_bx, .-n651_call_proc_staged_bx
                        .type            n652_var_ref_bx, @function
n652_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_var_ref_α:         mov              r11, 320
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n653_call_proc_staged_α
                        .size            n652_var_ref_bx, .-n652_var_ref_bx
                        .type            n653_call_proc_staged_bx, @function
n653_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_proc_staged_α:
                        mov              r11, 321
                        mov              qword ptr [rbp + 3408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_886_200
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_886_201
.Lcall_proc_staged_α_886_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_886_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_886_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 9
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_886_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_886_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_886_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_886_3:
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_886_21
                        add              rsp, 32
.Lcall_proc_staged_α_886_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3408], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_886_2
.Lcall_proc_staged_α_886_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_886_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n651_call_proc_staged_β
.Lcall_proc_staged_α_886_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_886_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
.Lcall_proc_staged_α_886_29:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n651_call_proc_staged_β
                                                                              jmp   n654_var_ref_α
n653_call_proc_staged_β:
                        mov              r11, 321
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_886_22
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_886_22
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_886_22:
                                                                              jmp   n651_call_proc_staged_β
.Lcall_proc_staged_α_886_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n651_call_proc_staged_β
                                                                              jmp   n654_var_ref_α
.Lcall_proc_staged_α_886_0:
                        .quad            .Lcall_proc_staged_α_886_0_s
.Lcall_proc_staged_α_886_0_s:
                        .string          "zero/1"
                        .size            n653_call_proc_staged_bx, .-n653_call_proc_staged_bx
                        .type            n654_var_ref_bx, @function
n654_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n655_call_proc_staged_α
                        .size            n654_var_ref_bx, .-n654_var_ref_bx
                        .type            n655_call_proc_staged_bx, @function
n655_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_call_proc_staged_α:
                        mov              r11, 323
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_890_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_890_201
.Lcall_proc_staged_α_890_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_890_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_890_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_890_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_890_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_890_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_890_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_890_3:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_890_21
                        add              rsp, 32
.Lcall_proc_staged_α_890_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_890_2
.Lcall_proc_staged_α_890_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3328], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_890_2
.Lcall_proc_staged_α_890_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_890_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n653_call_proc_staged_β
.Lcall_proc_staged_α_890_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_890_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
.Lcall_proc_staged_α_890_29:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n653_call_proc_staged_β
                                                                              jmp   n656_lit_string_α
n655_call_proc_staged_β:
                        mov              r11, 323
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_890_22
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_890_22
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_890_22:
                                                                              jmp   n653_call_proc_staged_β
.Lcall_proc_staged_α_890_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n653_call_proc_staged_β
                                                                              jmp   n656_lit_string_α
.Lcall_proc_staged_α_890_0:
                        .quad            .Lcall_proc_staged_α_890_0_s
.Lcall_proc_staged_α_890_0_s:
                        .string          "lefteven/1"
                        .size            n655_call_proc_staged_bx, .-n655_call_proc_staged_bx
                        .type            n656_lit_string_bx, @function
n656_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_891_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n657_var_ref_α
.Llit_string_α_891_0:   .quad            .Llit_string_α_891_0_s
.Llit_string_α_891_0_s: .string          "."
                        .size            n656_lit_string_bx, .-n656_lit_string_bx
                        .type            n657_var_ref_bx, @function
n657_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_var_ref_α:         mov              r11, 325
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n658_lit_string_α
                        .size            n657_var_ref_bx, .-n657_var_ref_bx
                        .type            n658_lit_string_bx, @function
n658_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_894_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n659_var_ref_α
.Llit_string_α_894_0:   .quad            .Llit_string_α_894_0_s
.Llit_string_α_894_0_s: .string          "."
                        .size            n658_lit_string_bx, .-n658_lit_string_bx
                        .type            n659_var_ref_bx, @function
n659_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_var_ref_α:         mov              r11, 327
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n660_lit_string_α
                        .size            n659_var_ref_bx, .-n659_var_ref_bx
                        .type            n660_lit_string_bx, @function
n660_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n661_var_ref_α
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          "."
                        .size            n660_lit_string_bx, .-n660_lit_string_bx
                        .type            n661_var_ref_bx, @function
n661_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n662_lit_string_α
                        .size            n661_var_ref_bx, .-n661_var_ref_bx
                        .type            n662_lit_string_bx, @function
n662_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_900_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n663_call_α
.Llit_string_α_900_0:   .quad            .Llit_string_α_900_0_s
.Llit_string_α_900_0_s: .string          "[]"
                        .size            n662_lit_string_bx, .-n662_lit_string_bx
                        .type            n663_call_bx, @function
n663_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_call_α:            mov              r11, 331
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n664_call_α
n663_call_β:            mov              r11, 331;                            jmp   top$2F16_ω
                        .size            n663_call_bx, .-n663_call_bx
                        .type            n664_call_bx, @function
n664_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:            mov              r11, 332
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n665_call_α
n664_call_β:            mov              r11, 332;                            jmp   top$2F16_ω
                        .size            n664_call_bx, .-n664_call_bx
                        .type            n665_call_bx, @function
n665_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_call_α:            mov              r11, 333
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n666_var_ref_α
n665_call_β:            mov              r11, 333;                            jmp   top$2F16_step
                        .size            n665_call_bx, .-n665_call_bx
                        .type            n666_var_ref_bx, @function
n666_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n667_lit_string_α
                        .size            n666_var_ref_bx, .-n666_var_ref_bx
                        .type            n667_lit_string_bx, @function
n667_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:      mov              r11, 335
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_906_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n668_var_ref_α
.Llit_string_α_906_0:   .quad            .Llit_string_α_906_0_s
.Llit_string_α_906_0_s: .string          "."
                        .size            n667_lit_string_bx, .-n667_lit_string_bx
                        .type            n668_var_ref_bx, @function
n668_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n669_lit_string_α
                        .size            n668_var_ref_bx, .-n668_var_ref_bx
                        .type            n669_lit_string_bx, @function
n669_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:      mov              r11, 337
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_909_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n670_var_ref_α
.Llit_string_α_909_0:   .quad            .Llit_string_α_909_0_s
.Llit_string_α_909_0_s: .string          "."
                        .size            n669_lit_string_bx, .-n669_lit_string_bx
                        .type            n670_var_ref_bx, @function
n670_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n671_lit_string_α
                        .size            n670_var_ref_bx, .-n670_var_ref_bx
                        .type            n671_lit_string_bx, @function
n671_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_912_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n672_var_ref_α
.Llit_string_α_912_0:   .quad            .Llit_string_α_912_0_s
.Llit_string_α_912_0_s: .string          "."
                        .size            n671_lit_string_bx, .-n671_lit_string_bx
                        .type            n672_var_ref_bx, @function
n672_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_var_ref_α:         mov              r11, 340
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n673_var_ref_α
                        .size            n672_var_ref_bx, .-n672_var_ref_bx
                        .type            n673_var_ref_bx, @function
n673_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n674_call_α
                        .size            n673_var_ref_bx, .-n673_var_ref_bx
                        .type            n674_call_bx, @function
n674_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_call_α:            mov              r11, 342
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3000], rax
                        lea              rdi, [rbp + 2992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n675_call_α
n674_call_β:            mov              r11, 342;                            jmp   top$2F16_ω
                        .size            n674_call_bx, .-n674_call_bx
                        .type            n675_call_bx, @function
n675_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_call_α:            mov              r11, 343
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3080]
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
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n676_call_α
n675_call_β:            mov              r11, 343;                            jmp   top$2F16_ω
                        .size            n675_call_bx, .-n675_call_bx
                        .type            n676_call_bx, @function
n676_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_call_α:            mov              r11, 344
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n677_call_proc_staged_α
n676_call_β:            mov              r11, 344;                            jmp   top$2F16_step
                        .size            n676_call_bx, .-n676_call_bx
                        .type            n677_call_proc_staged_bx, @function
n677_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_call_proc_staged_α:
                        mov              r11, 345
                        mov              qword ptr [rbp + 2544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_921_200
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_921_201
.Lcall_proc_staged_α_921_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_921_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_921_202
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_921_203
.Lcall_proc_staged_α_921_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_921_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_921_204
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_921_205
.Lcall_proc_staged_α_921_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_921_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_921_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_921_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_921_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_921_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_921_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_921_3:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_921_21
                        add              rsp, 32
.Lcall_proc_staged_α_921_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_921_2
.Lcall_proc_staged_α_921_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_921_2
.Lcall_proc_staged_α_921_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_921_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n655_call_proc_staged_β
.Lcall_proc_staged_α_921_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_921_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
.Lcall_proc_staged_α_921_29:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n655_call_proc_staged_β
                                                                              jmp   n678_var_ref_α
n677_call_proc_staged_β:
                        mov              r11, 345
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_921_22
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_921_22
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_921_22:
                                                                              jmp   n655_call_proc_staged_β
.Lcall_proc_staged_α_921_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n655_call_proc_staged_β
                                                                              jmp   n678_var_ref_α
.Lcall_proc_staged_α_921_0:
                        .quad            .Lcall_proc_staged_α_921_0_s
.Lcall_proc_staged_α_921_0_s:
                        .string          "mult/3"
                        .size            n677_call_proc_staged_bx, .-n677_call_proc_staged_bx
                        .type            n678_var_ref_bx, @function
n678_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_var_ref_α:         mov              r11, 346
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n679_call_proc_staged_α
                        .size            n678_var_ref_bx, .-n678_var_ref_bx
                        .type            n679_call_proc_staged_bx, @function
n679_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_call_proc_staged_α:
                        mov              r11, 347
                        mov              qword ptr [rbp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_925_200
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_925_201
.Lcall_proc_staged_α_925_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_925_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_925_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_925_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_925_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_925_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_925_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_925_3:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_925_21
                        add              rsp, 32
.Lcall_proc_staged_α_925_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_925_2
.Lcall_proc_staged_α_925_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_925_2
.Lcall_proc_staged_α_925_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_925_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n677_call_proc_staged_β
.Lcall_proc_staged_α_925_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_925_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
.Lcall_proc_staged_α_925_29:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n677_call_proc_staged_β
                                                                              jmp   n680_var_ref_α
n679_call_proc_staged_β:
                        mov              r11, 347
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_925_22
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_925_22
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_925_22:
                                                                              jmp   n677_call_proc_staged_β
.Lcall_proc_staged_α_925_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n677_call_proc_staged_β
                                                                              jmp   n680_var_ref_α
.Lcall_proc_staged_α_925_0:
                        .quad            .Lcall_proc_staged_α_925_0_s
.Lcall_proc_staged_α_925_0_s:
                        .string          "lefteven/1"
                        .size            n679_call_proc_staged_bx, .-n679_call_proc_staged_bx
                        .type            n680_var_ref_bx, @function
n680_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n681_call_proc_staged_α
                        .size            n680_var_ref_bx, .-n680_var_ref_bx
                        .type            n681_call_proc_staged_bx, @function
n681_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_call_proc_staged_α:
                        mov              r11, 349
                        mov              qword ptr [rbp + 2352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_929_200
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_929_201
.Lcall_proc_staged_α_929_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_929_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_929_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_929_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_929_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_929_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_929_3:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_929_21
                        add              rsp, 32
.Lcall_proc_staged_α_929_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_929_2
.Lcall_proc_staged_α_929_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_929_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n679_call_proc_staged_β
.Lcall_proc_staged_α_929_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_929_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
.Lcall_proc_staged_α_929_29:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n679_call_proc_staged_β
                                                                              jmp   n682_var_ref_α
n681_call_proc_staged_β:
                        mov              r11, 349
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_929_22
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_929_22
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_929_22:
                                                                              jmp   n679_call_proc_staged_β
.Lcall_proc_staged_α_929_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n679_call_proc_staged_β
                                                                              jmp   n682_var_ref_α
.Lcall_proc_staged_α_929_0:
                        .quad            .Lcall_proc_staged_α_929_0_s
.Lcall_proc_staged_α_929_0_s:
                        .string          "odd/1"
                        .size            n681_call_proc_staged_bx, .-n681_call_proc_staged_bx
                        .type            n682_var_ref_bx, @function
n682_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              r11, 350
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n683_call_proc_staged_α
                        .size            n682_var_ref_bx, .-n682_var_ref_bx
                        .type            n683_call_proc_staged_bx, @function
n683_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_call_proc_staged_α:
                        mov              r11, 351
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_933_200
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_933_201
.Lcall_proc_staged_α_933_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_933_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_933_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_933_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_933_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_933_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_933_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_933_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_933_21
                        add              rsp, 32
.Lcall_proc_staged_α_933_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_933_2
.Lcall_proc_staged_α_933_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_933_2
.Lcall_proc_staged_α_933_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_933_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n681_call_proc_staged_β
.Lcall_proc_staged_α_933_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_933_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
.Lcall_proc_staged_α_933_29:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n681_call_proc_staged_β
                                                                              jmp   n684_var_ref_α
n683_call_proc_staged_β:
                        mov              r11, 351
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_933_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_933_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_933_22:
                                                                              jmp   n681_call_proc_staged_β
.Lcall_proc_staged_α_933_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n681_call_proc_staged_β
                                                                              jmp   n684_var_ref_α
.Lcall_proc_staged_α_933_0:
                        .quad            .Lcall_proc_staged_α_933_0_s
.Lcall_proc_staged_α_933_0_s:
                        .string          "even/1"
                        .size            n683_call_proc_staged_bx, .-n683_call_proc_staged_bx
                        .type            n684_var_ref_bx, @function
n684_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_var_ref_α:         mov              r11, 352
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n685_call_proc_staged_α
                        .size            n684_var_ref_bx, .-n684_var_ref_bx
                        .type            n685_call_proc_staged_bx, @function
n685_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_call_proc_staged_α:
                        mov              r11, 353
                        mov              qword ptr [rbp + 2192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_937_200
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_937_201
.Lcall_proc_staged_α_937_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_937_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_937_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 9
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_937_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_937_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_937_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_937_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_937_3:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_937_21
                        add              rsp, 32
.Lcall_proc_staged_α_937_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_937_2
.Lcall_proc_staged_α_937_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_937_2
.Lcall_proc_staged_α_937_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_937_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n683_call_proc_staged_β
.Lcall_proc_staged_α_937_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_937_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
.Lcall_proc_staged_α_937_29:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n683_call_proc_staged_β
                                                                              jmp   n686_lit_string_α
n685_call_proc_staged_β:
                        mov              r11, 353
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_937_22
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_937_22
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_937_22:
                                                                              jmp   n683_call_proc_staged_β
.Lcall_proc_staged_α_937_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n683_call_proc_staged_β
                                                                              jmp   n686_lit_string_α
.Lcall_proc_staged_α_937_0:
                        .quad            .Lcall_proc_staged_α_937_0_s
.Lcall_proc_staged_α_937_0_s:
                        .string          "zero/1"
                        .size            n685_call_proc_staged_bx, .-n685_call_proc_staged_bx
                        .type            n686_lit_string_bx, @function
n686_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_938_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n687_var_ref_α
.Llit_string_α_938_0:   .quad            .Llit_string_α_938_0_s
.Llit_string_α_938_0_s: .string          "."
                        .size            n686_lit_string_bx, .-n686_lit_string_bx
                        .type            n687_var_ref_bx, @function
n687_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n688_lit_string_α
                        .size            n687_var_ref_bx, .-n687_var_ref_bx
                        .type            n688_lit_string_bx, @function
n688_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:      mov              r11, 356
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_941_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n689_var_ref_α
.Llit_string_α_941_0:   .quad            .Llit_string_α_941_0_s
.Llit_string_α_941_0_s: .string          "."
                        .size            n688_lit_string_bx, .-n688_lit_string_bx
                        .type            n689_var_ref_bx, @function
n689_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:         mov              r11, 357
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n690_lit_string_α
                        .size            n689_var_ref_bx, .-n689_var_ref_bx
                        .type            n690_lit_string_bx, @function
n690_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:      mov              r11, 358
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_944_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n691_var_ref_α
.Llit_string_α_944_0:   .quad            .Llit_string_α_944_0_s
.Llit_string_α_944_0_s: .string          "."
                        .size            n690_lit_string_bx, .-n690_lit_string_bx
                        .type            n691_var_ref_bx, @function
n691_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n692_lit_string_α
                        .size            n691_var_ref_bx, .-n691_var_ref_bx
                        .type            n692_lit_string_bx, @function
n692_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n693_var_ref_α
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "."
                        .size            n692_lit_string_bx, .-n692_lit_string_bx
                        .type            n693_var_ref_bx, @function
n693_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n694_lit_string_α
                        .size            n693_var_ref_bx, .-n693_var_ref_bx
                        .type            n694_lit_string_bx, @function
n694_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_950_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n695_call_α
.Llit_string_α_950_0:   .quad            .Llit_string_α_950_0_s
.Llit_string_α_950_0_s: .string          "[]"
                        .size            n694_lit_string_bx, .-n694_lit_string_bx
                        .type            n695_call_bx, @function
n695_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_call_α:            mov              r11, 363
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
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
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n696_call_α
n695_call_β:            mov              r11, 363;                            jmp   top$2F16_ω
                        .size            n695_call_bx, .-n695_call_bx
                        .type            n696_call_bx, @function
n696_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_call_α:            mov              r11, 364
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
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
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n697_call_α
n696_call_β:            mov              r11, 364;                            jmp   top$2F16_ω
                        .size            n696_call_bx, .-n696_call_bx
                        .type            n697_call_bx, @function
n697_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:            mov              r11, 365
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
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
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n698_call_α
n697_call_β:            mov              r11, 365;                            jmp   top$2F16_ω
                        .size            n697_call_bx, .-n697_call_bx
                        .type            n698_call_bx, @function
n698_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            mov              r11, 366
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n699_lit_string_α
n698_call_β:            mov              r11, 366;                            jmp   top$2F16_step
                        .size            n698_call_bx, .-n698_call_bx
                        .type            n699_lit_string_bx, @function
n699_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:      mov              r11, 367
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n700_lit_integer_α
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "."
                        .size            n699_lit_string_bx, .-n699_lit_string_bx
                        .type            n700_lit_integer_bx, @function
n700_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:     mov              r11, 368
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_956_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n701_lit_string_α
.Llit_integer_α_956_0:  .quad            0
                        .size            n700_lit_integer_bx, .-n700_lit_integer_bx
                        .type            n701_lit_string_bx, @function
n701_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_string_α:      mov              r11, 369
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_957_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n702_var_ref_α
.Llit_string_α_957_0:   .quad            .Llit_string_α_957_0_s
.Llit_string_α_957_0_s: .string          "."
                        .size            n701_lit_string_bx, .-n701_lit_string_bx
                        .type            n702_var_ref_bx, @function
n702_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n703_lit_string_α
                        .size            n702_var_ref_bx, .-n702_var_ref_bx
                        .type            n703_lit_string_bx, @function
n703_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:      mov              r11, 371
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_960_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n704_var_ref_α
.Llit_string_α_960_0:   .quad            .Llit_string_α_960_0_s
.Llit_string_α_960_0_s: .string          "."
                        .size            n703_lit_string_bx, .-n703_lit_string_bx
                        .type            n704_var_ref_bx, @function
n704_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:         mov              r11, 372
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n705_lit_string_α
                        .size            n704_var_ref_bx, .-n704_var_ref_bx
                        .type            n705_lit_string_bx, @function
n705_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_963_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n706_var_ref_α
.Llit_string_α_963_0:   .quad            .Llit_string_α_963_0_s
.Llit_string_α_963_0_s: .string          "."
                        .size            n705_lit_string_bx, .-n705_lit_string_bx
                        .type            n706_var_ref_bx, @function
n706_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n707_lit_string_α
                        .size            n706_var_ref_bx, .-n706_var_ref_bx
                        .type            n707_lit_string_bx, @function
n707_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      mov              r11, 375
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_966_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n708_call_α
.Llit_string_α_966_0:   .quad            .Llit_string_α_966_0_s
.Llit_string_α_966_0_s: .string          "[]"
                        .size            n707_lit_string_bx, .-n707_lit_string_bx
                        .type            n708_call_bx, @function
n708_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_call_α:            mov              r11, 376
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
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
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n709_call_α
n708_call_β:            mov              r11, 376;                            jmp   top$2F16_ω
                        .size            n708_call_bx, .-n708_call_bx
                        .type            n709_call_bx, @function
n709_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_call_α:            mov              r11, 377
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n710_call_α
n709_call_β:            mov              r11, 377;                            jmp   top$2F16_ω
                        .size            n709_call_bx, .-n709_call_bx
                        .type            n710_call_bx, @function
n710_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_call_α:            mov              r11, 378
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n711_call_α
n710_call_β:            mov              r11, 378;                            jmp   top$2F16_ω
                        .size            n710_call_bx, .-n710_call_bx
                        .type            n711_call_bx, @function
n711_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_call_α:            mov              r11, 379
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n712_lit_string_α
n711_call_β:            mov              r11, 379;                            jmp   top$2F16_step
                        .size            n711_call_bx, .-n711_call_bx
                        .type            n712_lit_string_bx, @function
n712_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:      mov              r11, 380
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_971_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n713_var_ref_α
.Llit_string_α_971_0:   .quad            .Llit_string_α_971_0_s
.Llit_string_α_971_0_s: .string          "."
                        .size            n712_lit_string_bx, .-n712_lit_string_bx
                        .type            n713_var_ref_bx, @function
n713_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_var_ref_α:         mov              r11, 381
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n714_lit_string_α
                        .size            n713_var_ref_bx, .-n713_var_ref_bx
                        .type            n714_lit_string_bx, @function
n714_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_974_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n715_var_ref_α
.Llit_string_α_974_0:   .quad            .Llit_string_α_974_0_s
.Llit_string_α_974_0_s: .string          "."
                        .size            n714_lit_string_bx, .-n714_lit_string_bx
                        .type            n715_var_ref_bx, @function
n715_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_var_ref_α:         mov              r11, 383
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n716_lit_string_α
                        .size            n715_var_ref_bx, .-n715_var_ref_bx
                        .type            n716_lit_string_bx, @function
n716_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_977_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n717_var_ref_α
.Llit_string_α_977_0:   .quad            .Llit_string_α_977_0_s
.Llit_string_α_977_0_s: .string          "."
                        .size            n716_lit_string_bx, .-n716_lit_string_bx
                        .type            n717_var_ref_bx, @function
n717_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_var_ref_α:         mov              r11, 385
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n718_lit_string_α
                        .size            n717_var_ref_bx, .-n717_var_ref_bx
                        .type            n718_lit_string_bx, @function
n718_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_980_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n719_var_ref_α
.Llit_string_α_980_0:   .quad            .Llit_string_α_980_0_s
.Llit_string_α_980_0_s: .string          "."
                        .size            n718_lit_string_bx, .-n718_lit_string_bx
                        .type            n719_var_ref_bx, @function
n719_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_var_ref_α:         mov              r11, 387
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n720_var_ref_α
                        .size            n719_var_ref_bx, .-n719_var_ref_bx
                        .type            n720_var_ref_bx, @function
n720_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n721_call_α
                        .size            n720_var_ref_bx, .-n720_var_ref_bx
                        .type            n721_call_bx, @function
n721_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_call_α:            mov              r11, 389
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n722_call_α
n721_call_β:            mov              r11, 389;                            jmp   top$2F16_ω
                        .size            n721_call_bx, .-n721_call_bx
                        .type            n722_call_bx, @function
n722_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_call_α:            mov              r11, 390
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n723_call_α
n722_call_β:            mov              r11, 390;                            jmp   top$2F16_ω
                        .size            n722_call_bx, .-n722_call_bx
                        .type            n723_call_bx, @function
n723_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n723_call_α:            mov              r11, 391
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              al, 104;                             je    top$2F16_ω
                                                                              jmp   n724_call_α
n723_call_β:            mov              r11, 391;                            jmp   top$2F16_ω
                        .size            n723_call_bx, .-n723_call_bx
                        .type            n724_call_bx, @function
n724_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n724_call_α:            mov              r11, 392
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2056]
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
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n725_call_proc_staged_α
n724_call_β:            mov              r11, 392;                            jmp   top$2F16_step
                        .size            n724_call_bx, .-n724_call_bx
                        .type            n725_call_proc_staged_bx, @function
n725_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        mov              r11, 393
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_990_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_990_201
.Lcall_proc_staged_α_990_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_990_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_990_202
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_990_203
.Lcall_proc_staged_α_990_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_990_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_990_204
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_990_205
.Lcall_proc_staged_α_990_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_990_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_990_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_990_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_990_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_990_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_990_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_990_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_990_21
                        add              rsp, 32
.Lcall_proc_staged_α_990_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_990_2
.Lcall_proc_staged_α_990_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_990_2
.Lcall_proc_staged_α_990_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_990_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n685_call_proc_staged_β
.Lcall_proc_staged_α_990_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_990_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
.Lcall_proc_staged_α_990_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_β
                                                                              jmp   n726_var_ref_α
n725_call_proc_staged_β:
                        mov              r11, 393
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_990_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_990_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_990_22:
                                                                              jmp   n685_call_proc_staged_β
.Lcall_proc_staged_α_990_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n685_call_proc_staged_β
                                                                              jmp   n726_var_ref_α
.Lcall_proc_staged_α_990_0:
                        .quad            .Lcall_proc_staged_α_990_0_s
.Lcall_proc_staged_α_990_0_s:
                        .string          "sum/3"
                        .size            n725_call_proc_staged_bx, .-n725_call_proc_staged_bx
                        .type            n726_var_ref_bx, @function
n726_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:         mov              r11, 394
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n727_call_proc_staged_α
                        .size            n726_var_ref_bx, .-n726_var_ref_bx
                        .type            n727_call_proc_staged_bx, @function
n727_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n727_call_proc_staged_α:
                        mov              r11, 395
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_994_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_994_201
.Lcall_proc_staged_α_994_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_994_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_994_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_994_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_994_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_994_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_994_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_994_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_994_21
                        add              rsp, 32
.Lcall_proc_staged_α_994_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_994_2
.Lcall_proc_staged_α_994_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_994_2
.Lcall_proc_staged_α_994_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_994_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n725_call_proc_staged_β
.Lcall_proc_staged_α_994_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_994_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
.Lcall_proc_staged_α_994_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n725_call_proc_staged_β
                                                                              jmp   n728_var_ref_α
n727_call_proc_staged_β:
                        mov              r11, 395
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_994_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_994_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_994_22:
                                                                              jmp   n725_call_proc_staged_β
.Lcall_proc_staged_α_994_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n725_call_proc_staged_β
                                                                              jmp   n728_var_ref_α
.Lcall_proc_staged_α_994_0:
                        .quad            .Lcall_proc_staged_α_994_0_s
.Lcall_proc_staged_α_994_0_s:
                        .string          "odd/1"
                        .size            n727_call_proc_staged_bx, .-n727_call_proc_staged_bx
                        .type            n728_var_ref_bx, @function
n728_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n728_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n729_call_proc_staged_α
                        .size            n728_var_ref_bx, .-n728_var_ref_bx
                        .type            n729_call_proc_staged_bx, @function
n729_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n729_call_proc_staged_α:
                        mov              r11, 397
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_998_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_998_201
.Lcall_proc_staged_α_998_200:
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
.Lcall_proc_staged_α_998_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_998_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_998_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_998_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_998_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_998_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_998_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_998_21
                        add              rsp, 32
.Lcall_proc_staged_α_998_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_998_2
.Lcall_proc_staged_α_998_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_998_2
.Lcall_proc_staged_α_998_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_998_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n727_call_proc_staged_β
.Lcall_proc_staged_α_998_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_998_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
.Lcall_proc_staged_α_998_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n727_call_proc_staged_β
                                                                              jmp   n730_var_ref_α
n729_call_proc_staged_β:
                        mov              r11, 397
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_998_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_998_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_998_22:
                                                                              jmp   n727_call_proc_staged_β
.Lcall_proc_staged_α_998_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n727_call_proc_staged_β
                                                                              jmp   n730_var_ref_α
.Lcall_proc_staged_α_998_0:
                        .quad            .Lcall_proc_staged_α_998_0_s
.Lcall_proc_staged_α_998_0_s:
                        .string          "odd/1"
                        .size            n729_call_proc_staged_bx, .-n729_call_proc_staged_bx
                        .type            n730_var_ref_bx, @function
n730_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n730_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n731_call_proc_staged_α
                        .size            n730_var_ref_bx, .-n730_var_ref_bx
                        .type            n731_call_proc_staged_bx, @function
n731_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n731_call_proc_staged_α:
                        mov              r11, 399
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1002_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1002_201
.Lcall_proc_staged_α_1002_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1002_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1002_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1002_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1002_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1002_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1002_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1002_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1002_21
                        add              rsp, 32
.Lcall_proc_staged_α_1002_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1002_2
.Lcall_proc_staged_α_1002_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1002_2
.Lcall_proc_staged_α_1002_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1002_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n729_call_proc_staged_β
.Lcall_proc_staged_α_1002_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1002_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
.Lcall_proc_staged_α_1002_29:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n729_call_proc_staged_β
                                                                              jmp   n732_var_ref_α
n731_call_proc_staged_β:
                        mov              r11, 399
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1002_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1002_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1002_22:
                                                                              jmp   n729_call_proc_staged_β
.Lcall_proc_staged_α_1002_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n729_call_proc_staged_β
                                                                              jmp   n732_var_ref_α
.Lcall_proc_staged_α_1002_0:
                        .quad            .Lcall_proc_staged_α_1002_0_s
.Lcall_proc_staged_α_1002_0_s:
                        .string          "even/1"
                        .size            n731_call_proc_staged_bx, .-n731_call_proc_staged_bx
                        .type            n732_var_ref_bx, @function
n732_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n732_var_ref_α:         mov              r11, 400
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n733_call_proc_staged_α
                        .size            n732_var_ref_bx, .-n732_var_ref_bx
                        .type            n733_call_proc_staged_bx, @function
n733_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n733_call_proc_staged_α:
                        mov              r11, 401
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1006_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1006_201
.Lcall_proc_staged_α_1006_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1006_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1006_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1006_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1006_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1006_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1006_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1006_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1006_21
                        add              rsp, 32
.Lcall_proc_staged_α_1006_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1006_2
.Lcall_proc_staged_α_1006_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1006_2
.Lcall_proc_staged_α_1006_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1006_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n731_call_proc_staged_β
.Lcall_proc_staged_α_1006_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1006_29
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
.Lcall_proc_staged_α_1006_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n731_call_proc_staged_β
                                                                              jmp   n734_var_ref_α
n733_call_proc_staged_β:
                        mov              r11, 401
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1006_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1006_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1006_22:
                                                                              jmp   n731_call_proc_staged_β
.Lcall_proc_staged_α_1006_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n731_call_proc_staged_β
                                                                              jmp   n734_var_ref_α
.Lcall_proc_staged_α_1006_0:
                        .quad            .Lcall_proc_staged_α_1006_0_s
.Lcall_proc_staged_α_1006_0_s:
                        .string          "even/1"
                        .size            n733_call_proc_staged_bx, .-n733_call_proc_staged_bx
                        .type            n734_var_ref_bx, @function
n734_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n734_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n735_call_proc_staged_α
                        .size            n734_var_ref_bx, .-n734_var_ref_bx
                        .type            n735_call_proc_staged_bx, @function
n735_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n735_call_proc_staged_α:
                        mov              r11, 403
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1010_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1010_201
.Lcall_proc_staged_α_1010_200:
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
.Lcall_proc_staged_α_1010_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1010_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 9
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1010_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 1
                        mov              rsi, rbp
                        lea              rdx, [rbp + 6944]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1010_99
                        mov              r10, qword ptr [rbp + 6904]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1010_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1010_99
                        mov              rcx, qword ptr [rbp + 6920]
                        mov              rdx, qword ptr [rbp + 6928]
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rax
.Lcall_proc_staged_α_1010_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1010_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1010_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1010_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1010_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1010_21
                        add              rsp, 32
.Lcall_proc_staged_α_1010_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1010_2
.Lcall_proc_staged_α_1010_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1010_2
.Lcall_proc_staged_α_1010_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1010_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n733_call_proc_staged_β
.Lcall_proc_staged_α_1010_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1010_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
.Lcall_proc_staged_α_1010_29:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n733_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
n735_call_proc_staged_β:
                        mov              r11, 403
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1010_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1010_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1010_22:
                                                                              jmp   n733_call_proc_staged_β
.Lcall_proc_staged_α_1010_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n733_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
.Lcall_proc_staged_α_1010_0:
                        .quad            .Lcall_proc_staged_α_1010_0_s
.Lcall_proc_staged_α_1010_0_s:
                        .string          "zero/1"
                        .size            n735_call_proc_staged_bx, .-n735_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ret0:
                        lea              rax, [rip + n735_call_proc_staged_β]
                        mov              qword ptr [rbp + 6896], rax
                                                                              jmp   top$2F16_γ
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_step:
                        mov              rdi, qword ptr [rbp + 6880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6896], 0
                        mov              qword ptr [rbp + 6768], 0
                        mov              qword ptr [rbp + 6776], 0
                        mov              qword ptr [rbp + 6784], 0
                        mov              qword ptr [rbp + 6792], 0
                        mov              qword ptr [rbp + 6800], 0
                        mov              qword ptr [rbp + 6808], 0
                        mov              qword ptr [rbp + 6816], 0
                        mov              qword ptr [rbp + 6824], 0
                        mov              qword ptr [rbp + 6848], 0
                        mov              qword ptr [rbp + 6856], 0
                        mov              qword ptr [rbp + 6640], 0
                        mov              qword ptr [rbp + 6648], 0
                        mov              qword ptr [rbp + 6656], 0
                        mov              qword ptr [rbp + 6664], 0
                        mov              qword ptr [rbp + 6672], 0
                        mov              qword ptr [rbp + 6680], 0
                        mov              qword ptr [rbp + 6688], 0
                        mov              qword ptr [rbp + 6696], 0
                        mov              qword ptr [rbp + 6704], 0
                        mov              qword ptr [rbp + 6712], 0
                        mov              qword ptr [rbp + 6720], 0
                        mov              qword ptr [rbp + 6728], 0
                        mov              qword ptr [rbp + 6736], 0
                        mov              qword ptr [rbp + 6744], 0
                        mov              qword ptr [rbp + 6624], 0
                        mov              qword ptr [rbp + 6632], 0
                        mov              qword ptr [rbp + 6608], 0
                        mov              qword ptr [rbp + 6616], 0
                        mov              qword ptr [rbp + 6592], 0
                        mov              qword ptr [rbp + 6600], 0
                        mov              qword ptr [rbp + 6576], 0
                        mov              qword ptr [rbp + 6584], 0
                        mov              qword ptr [rbp + 6832], 0
                        mov              qword ptr [rbp + 6840], 0
                        mov              qword ptr [rbp + 6752], 0
                        mov              qword ptr [rbp + 6760], 0
                        mov              qword ptr [rbp + 6560], 0
                        mov              qword ptr [rbp + 6568], 0
                        mov              rax, qword ptr [rbp + 6888]
                        test             rax, rax
                                                                              je    top$2F16_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_β:
                        test             r15, r15
                                                                              jne   top$2F16_ω
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6896], 0
                        test             rax, rax
                                                                              jne   top$2F16_βres
                                                                              jmp   top$2F16_step
top$2F16_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 6920]
                        mov              rax, qword ptr [rbp + 6904]
                        cmp              r13, rax;                            je    top$2F16_altdet
                        lea              rdx, [rip + top$2F16_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rcx
top$2F16_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ω:
                        mov              rcx, qword ptr [rbp + 6928]
                        mov              r13, qword ptr [rbp + 6904]
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rcx
                        mov              qword ptr [rsp + 2768], rdx
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2744], r13
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2720], r12
                        mov              rdi, rsp
                        mov              esi, 2448
                        mov              edx, 2720
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n1011_var_ref_bx, @function
n1011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_ref_α:        mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n1012_var_ref_α
                        .size            n1011_var_ref_bx, .-n1011_var_ref_bx
                        .type            n1012_var_ref_bx, @function
n1012_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_var_ref_α:        mov              r11, 405
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n1013_var_ref_α
                        .size            n1012_var_ref_bx, .-n1012_var_ref_bx
                        .type            n1013_var_ref_bx, @function
n1013_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_var_ref_α:        mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n1014_var_ref_α
                        .size            n1013_var_ref_bx, .-n1013_var_ref_bx
                        .type            n1014_var_ref_bx, @function
n1014_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_ref_α:        mov              r11, 407
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n1015_var_ref_α
                        .size            n1014_var_ref_bx, .-n1014_var_ref_bx
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 408
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n1016_var_ref_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_var_ref_bx, @function
n1016_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_var_ref_α:        mov              r11, 409
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n1017_var_ref_α
                        .size            n1016_var_ref_bx, .-n1016_var_ref_bx
                        .type            n1017_var_ref_bx, @function
n1017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:        mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n1018_var_ref_α
                        .size            n1017_var_ref_bx, .-n1017_var_ref_bx
                        .type            n1018_var_ref_bx, @function
n1018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_var_ref_α:        mov              r11, 411
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n1019_var_ref_α
                        .size            n1018_var_ref_bx, .-n1018_var_ref_bx
                        .type            n1019_var_ref_bx, @function
n1019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_ref_α:        mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n1020_var_ref_α
                        .size            n1019_var_ref_bx, .-n1019_var_ref_bx
                        .type            n1020_var_ref_bx, @function
n1020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_ref_α:        mov              r11, 413
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n1021_var_ref_α
                        .size            n1020_var_ref_bx, .-n1020_var_ref_bx
                        .type            n1021_var_ref_bx, @function
n1021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_ref_α:        mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n1022_var_ref_α
                        .size            n1021_var_ref_bx, .-n1021_var_ref_bx
                        .type            n1022_var_ref_bx, @function
n1022_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_ref_α:        mov              r11, 415
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n1023_var_ref_α
                        .size            n1022_var_ref_bx, .-n1022_var_ref_bx
                        .type            n1023_var_ref_bx, @function
n1023_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_ref_α:        mov              r11, 416
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n1024_var_ref_α
                        .size            n1023_var_ref_bx, .-n1023_var_ref_bx
                        .type            n1024_var_ref_bx, @function
n1024_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_var_ref_α:        mov              r11, 417
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n1025_var_ref_α
                        .size            n1024_var_ref_bx, .-n1024_var_ref_bx
                        .type            n1025_var_ref_bx, @function
n1025_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_ref_α:        mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n1026_var_ref_α
                        .size            n1025_var_ref_bx, .-n1025_var_ref_bx
                        .type            n1026_var_ref_bx, @function
n1026_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_ref_α:        mov              r11, 419
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n1027_call_proc_staged_α
                        .size            n1026_var_ref_bx, .-n1026_var_ref_bx
                        .type            n1027_call_proc_staged_bx, @function
n1027_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_call_proc_staged_α:
                        mov              r11, 420
                        mov              qword ptr [rbp + 2160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_200
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1112_201
.Lcall_proc_staged_α_1112_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_202
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1112_203
.Lcall_proc_staged_α_1112_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_204
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1112_205
.Lcall_proc_staged_α_1112_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_206
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1112_207
.Lcall_proc_staged_α_1112_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_208
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1112_209
.Lcall_proc_staged_α_1112_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_210
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1112_211
.Lcall_proc_staged_α_1112_210:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_212
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1112_213
.Lcall_proc_staged_α_1112_212:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1112_214
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1112_215
.Lcall_proc_staged_α_1112_214:
                        mov              edi, 7
                        mov              rsi, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1112_215:
                        mov              edi, 8
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 9
                        mov              rsi, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 10
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 11
                        mov              rsi, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 12
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 13
                        mov              rsi, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 14
                        mov              rsi, qword ptr [rbp + 2416]
                        mov              rdx, qword ptr [rbp + 2424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 15
                        mov              rsi, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1112_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1112_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1112_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1112_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1112_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1112_3:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1112_21
                        add              rsp, 32
.Lcall_proc_staged_α_1112_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1112_2
.Lcall_proc_staged_α_1112_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1112_2
.Lcall_proc_staged_α_1112_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1112_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1112_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
.Lcall_proc_staged_α_1112_29:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1028_lit_string_α
n1027_call_proc_staged_β:
                        mov              r11, 420
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1112_22
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1112_22
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1112_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1112_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1028_lit_string_α
.Lcall_proc_staged_α_1112_0:
                        .quad            .Lcall_proc_staged_α_1112_0_s
.Lcall_proc_staged_α_1112_0_s:
                        .string          "top/16"
                        .size            n1027_call_proc_staged_bx, .-n1027_call_proc_staged_bx
                        .type            n1028_lit_string_bx, @function
n1028_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_lit_string_α:     mov              r11, 421
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1113_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n1029_var_ref_α
.Llit_string_α_1113_0:  .quad            .Llit_string_α_1113_0_s
.Llit_string_α_1113_0_s:
                        .string          "."
                        .size            n1028_lit_string_bx, .-n1028_lit_string_bx
                        .type            n1029_var_ref_bx, @function
n1029_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n1030_lit_string_α
                        .size            n1029_var_ref_bx, .-n1029_var_ref_bx
                        .type            n1030_lit_string_bx, @function
n1030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_lit_string_α:     mov              r11, 423
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1116_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n1031_var_ref_α
.Llit_string_α_1116_0:  .quad            .Llit_string_α_1116_0_s
.Llit_string_α_1116_0_s:
                        .string          "."
                        .size            n1030_lit_string_bx, .-n1030_lit_string_bx
                        .type            n1031_var_ref_bx, @function
n1031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n1032_lit_string_α
                        .size            n1031_var_ref_bx, .-n1031_var_ref_bx
                        .type            n1032_lit_string_bx, @function
n1032_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1119_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n1033_var_ref_α
.Llit_string_α_1119_0:  .quad            .Llit_string_α_1119_0_s
.Llit_string_α_1119_0_s:
                        .string          "."
                        .size            n1032_lit_string_bx, .-n1032_lit_string_bx
                        .type            n1033_var_ref_bx, @function
n1033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n1034_lit_string_α
                        .size            n1033_var_ref_bx, .-n1033_var_ref_bx
                        .type            n1034_lit_string_bx, @function
n1034_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1122_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n1035_var_ref_α
.Llit_string_α_1122_0:  .quad            .Llit_string_α_1122_0_s
.Llit_string_α_1122_0_s:
                        .string          "."
                        .size            n1034_lit_string_bx, .-n1034_lit_string_bx
                        .type            n1035_var_ref_bx, @function
n1035_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n1036_lit_string_α
                        .size            n1035_var_ref_bx, .-n1035_var_ref_bx
                        .type            n1036_lit_string_bx, @function
n1036_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1125_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n1037_var_ref_α
.Llit_string_α_1125_0:  .quad            .Llit_string_α_1125_0_s
.Llit_string_α_1125_0_s:
                        .string          "."
                        .size            n1036_lit_string_bx, .-n1036_lit_string_bx
                        .type            n1037_var_ref_bx, @function
n1037_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n1038_lit_string_α
                        .size            n1037_var_ref_bx, .-n1037_var_ref_bx
                        .type            n1038_lit_string_bx, @function
n1038_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1128_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n1039_var_ref_α
.Llit_string_α_1128_0:  .quad            .Llit_string_α_1128_0_s
.Llit_string_α_1128_0_s:
                        .string          "."
                        .size            n1038_lit_string_bx, .-n1038_lit_string_bx
                        .type            n1039_var_ref_bx, @function
n1039_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1039_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n1040_lit_string_α
                        .size            n1039_var_ref_bx, .-n1039_var_ref_bx
                        .type            n1040_lit_string_bx, @function
n1040_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1040_lit_string_α:     mov              r11, 433
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1131_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n1041_var_ref_α
.Llit_string_α_1131_0:  .quad            .Llit_string_α_1131_0_s
.Llit_string_α_1131_0_s:
                        .string          "."
                        .size            n1040_lit_string_bx, .-n1040_lit_string_bx
                        .type            n1041_var_ref_bx, @function
n1041_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1041_var_ref_α:        mov              r11, 434
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n1042_lit_string_α
                        .size            n1041_var_ref_bx, .-n1041_var_ref_bx
                        .type            n1042_lit_string_bx, @function
n1042_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1042_lit_string_α:     mov              r11, 435
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1134_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n1043_var_ref_α
.Llit_string_α_1134_0:  .quad            .Llit_string_α_1134_0_s
.Llit_string_α_1134_0_s:
                        .string          "."
                        .size            n1042_lit_string_bx, .-n1042_lit_string_bx
                        .type            n1043_var_ref_bx, @function
n1043_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1043_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n1044_lit_string_α
                        .size            n1043_var_ref_bx, .-n1043_var_ref_bx
                        .type            n1044_lit_string_bx, @function
n1044_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1044_lit_string_α:     mov              r11, 437
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1137_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n1045_var_ref_α
.Llit_string_α_1137_0:  .quad            .Llit_string_α_1137_0_s
.Llit_string_α_1137_0_s:
                        .string          "."
                        .size            n1044_lit_string_bx, .-n1044_lit_string_bx
                        .type            n1045_var_ref_bx, @function
n1045_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_ref_α:        mov              r11, 438
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n1046_lit_string_α
                        .size            n1045_var_ref_bx, .-n1045_var_ref_bx
                        .type            n1046_lit_string_bx, @function
n1046_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:     mov              r11, 439
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1140_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n1047_var_ref_α
.Llit_string_α_1140_0:  .quad            .Llit_string_α_1140_0_s
.Llit_string_α_1140_0_s:
                        .string          "."
                        .size            n1046_lit_string_bx, .-n1046_lit_string_bx
                        .type            n1047_var_ref_bx, @function
n1047_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1047_var_ref_α:        mov              r11, 440
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n1048_lit_string_α
                        .size            n1047_var_ref_bx, .-n1047_var_ref_bx
                        .type            n1048_lit_string_bx, @function
n1048_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:     mov              r11, 441
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1143_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n1049_var_ref_α
.Llit_string_α_1143_0:  .quad            .Llit_string_α_1143_0_s
.Llit_string_α_1143_0_s:
                        .string          "."
                        .size            n1048_lit_string_bx, .-n1048_lit_string_bx
                        .type            n1049_var_ref_bx, @function
n1049_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1049_var_ref_α:        mov              r11, 442
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n1050_lit_string_α
                        .size            n1049_var_ref_bx, .-n1049_var_ref_bx
                        .type            n1050_lit_string_bx, @function
n1050_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_string_α:     mov              r11, 443
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1146_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n1051_var_ref_α
.Llit_string_α_1146_0:  .quad            .Llit_string_α_1146_0_s
.Llit_string_α_1146_0_s:
                        .string          "."
                        .size            n1050_lit_string_bx, .-n1050_lit_string_bx
                        .type            n1051_var_ref_bx, @function
n1051_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1051_var_ref_α:        mov              r11, 444
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n1052_lit_string_α
                        .size            n1051_var_ref_bx, .-n1051_var_ref_bx
                        .type            n1052_lit_string_bx, @function
n1052_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1149_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n1053_var_ref_α
.Llit_string_α_1149_0:  .quad            .Llit_string_α_1149_0_s
.Llit_string_α_1149_0_s:
                        .string          "."
                        .size            n1052_lit_string_bx, .-n1052_lit_string_bx
                        .type            n1053_var_ref_bx, @function
n1053_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1053_var_ref_α:        mov              r11, 446
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1054_lit_string_α
                        .size            n1053_var_ref_bx, .-n1053_var_ref_bx
                        .type            n1054_lit_string_bx, @function
n1054_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1054_lit_string_α:     mov              r11, 447
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1152_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n1055_var_ref_α
.Llit_string_α_1152_0:  .quad            .Llit_string_α_1152_0_s
.Llit_string_α_1152_0_s:
                        .string          "."
                        .size            n1054_lit_string_bx, .-n1054_lit_string_bx
                        .type            n1055_var_ref_bx, @function
n1055_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1055_var_ref_α:        mov              r11, 448
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1056_lit_string_α
                        .size            n1055_var_ref_bx, .-n1055_var_ref_bx
                        .type            n1056_lit_string_bx, @function
n1056_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1056_lit_string_α:     mov              r11, 449
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1155_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1057_var_ref_α
.Llit_string_α_1155_0:  .quad            .Llit_string_α_1155_0_s
.Llit_string_α_1155_0_s:
                        .string          "."
                        .size            n1056_lit_string_bx, .-n1056_lit_string_bx
                        .type            n1057_var_ref_bx, @function
n1057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1057_var_ref_α:        mov              r11, 450
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1058_lit_string_α
                        .size            n1057_var_ref_bx, .-n1057_var_ref_bx
                        .type            n1058_lit_string_bx, @function
n1058_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1058_lit_string_α:     mov              r11, 451
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1158_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n1059_var_ref_α
.Llit_string_α_1158_0:  .quad            .Llit_string_α_1158_0_s
.Llit_string_α_1158_0_s:
                        .string          "."
                        .size            n1058_lit_string_bx, .-n1058_lit_string_bx
                        .type            n1059_var_ref_bx, @function
n1059_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1059_var_ref_α:        mov              r11, 452
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1060_lit_string_α
                        .size            n1059_var_ref_bx, .-n1059_var_ref_bx
                        .type            n1060_lit_string_bx, @function
n1060_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1060_lit_string_α:     mov              r11, 453
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1161_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n1061_call_α
.Llit_string_α_1161_0:  .quad            .Llit_string_α_1161_0_s
.Llit_string_α_1161_0_s:
                        .string          "[]"
                        .size            n1060_lit_string_bx, .-n1060_lit_string_bx
                        .type            n1061_call_bx, @function
n1061_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1061_call_α:           mov              r11, 454
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1062_call_α
n1061_call_β:           mov              r11, 454;                            jmp   main$2F0_ω
                        .size            n1061_call_bx, .-n1061_call_bx
                        .type            n1062_call_bx, @function
n1062_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1062_call_α:           mov              r11, 455
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1063_call_α
n1062_call_β:           mov              r11, 455;                            jmp   main$2F0_ω
                        .size            n1062_call_bx, .-n1062_call_bx
                        .type            n1063_call_bx, @function
n1063_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1063_call_α:           mov              r11, 456
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1064_call_α
n1063_call_β:           mov              r11, 456;                            jmp   main$2F0_ω
                        .size            n1063_call_bx, .-n1063_call_bx
                        .type            n1064_call_bx, @function
n1064_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1064_call_α:           mov              r11, 457
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1065_call_α
n1064_call_β:           mov              r11, 457;                            jmp   main$2F0_ω
                        .size            n1064_call_bx, .-n1064_call_bx
                        .type            n1065_call_bx, @function
n1065_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1065_call_α:           mov              r11, 458
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1066_call_α
n1065_call_β:           mov              r11, 458;                            jmp   main$2F0_ω
                        .size            n1065_call_bx, .-n1065_call_bx
                        .type            n1066_call_bx, @function
n1066_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1066_call_α:           mov              r11, 459
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1067_call_α
n1066_call_β:           mov              r11, 459;                            jmp   main$2F0_ω
                        .size            n1066_call_bx, .-n1066_call_bx
                        .type            n1067_call_bx, @function
n1067_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1067_call_α:           mov              r11, 460
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1068_call_α
n1067_call_β:           mov              r11, 460;                            jmp   main$2F0_ω
                        .size            n1067_call_bx, .-n1067_call_bx
                        .type            n1068_call_bx, @function
n1068_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1068_call_α:           mov              r11, 461
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1069_call_α
n1068_call_β:           mov              r11, 461;                            jmp   main$2F0_ω
                        .size            n1068_call_bx, .-n1068_call_bx
                        .type            n1069_call_bx, @function
n1069_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1069_call_α:           mov              r11, 462
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1070_call_α
n1069_call_β:           mov              r11, 462;                            jmp   main$2F0_ω
                        .size            n1069_call_bx, .-n1069_call_bx
                        .type            n1070_call_bx, @function
n1070_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1070_call_α:           mov              r11, 463
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1071_call_α
n1070_call_β:           mov              r11, 463;                            jmp   main$2F0_ω
                        .size            n1070_call_bx, .-n1070_call_bx
                        .type            n1071_call_bx, @function
n1071_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1071_call_α:           mov              r11, 464
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1072_call_α
n1071_call_β:           mov              r11, 464;                            jmp   main$2F0_ω
                        .size            n1071_call_bx, .-n1071_call_bx
                        .type            n1072_call_bx, @function
n1072_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1072_call_α:           mov              r11, 465
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1073_call_α
n1072_call_β:           mov              r11, 465;                            jmp   main$2F0_ω
                        .size            n1072_call_bx, .-n1072_call_bx
                        .type            n1073_call_bx, @function
n1073_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1073_call_α:           mov              r11, 466
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1074_call_α
n1073_call_β:           mov              r11, 466;                            jmp   main$2F0_ω
                        .size            n1073_call_bx, .-n1073_call_bx
                        .type            n1074_call_bx, @function
n1074_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1074_call_α:           mov              r11, 467
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1560]
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
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1075_call_α
n1074_call_β:           mov              r11, 467;                            jmp   main$2F0_ω
                        .size            n1074_call_bx, .-n1074_call_bx
                        .type            n1075_call_bx, @function
n1075_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1075_call_α:           mov              r11, 468
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n1076_call_α
n1075_call_β:           mov              r11, 468;                            jmp   main$2F0_ω
                        .size            n1075_call_bx, .-n1075_call_bx
                        .type            n1076_call_bx, @function
n1076_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1076_call_α:           mov              r11, 469
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1077_call_α
n1076_call_β:           mov              r11, 469;                            jmp   main$2F0_step
                        .size            n1076_call_bx, .-n1076_call_bx
                        .type            n1077_call_bx, @function
n1077_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1077_call_α:           mov              r11, 470
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1800]
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
                        cmp              al, 104;                             je    n1027_call_proc_staged_β
                                                                              jmp   n1078_call_α
n1077_call_β:           mov              r11, 470;                            jmp   n1027_call_proc_staged_β
                        .size            n1077_call_bx, .-n1077_call_bx
                        .type            n1078_call_bx, @function
n1078_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1078_call_α:           mov              r11, 471
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
                        cmp              al, 104;                             je    n1027_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1078_call_β:           mov              r11, 471;                            jmp   n1027_call_proc_staged_β
                        .size            n1078_call_bx, .-n1078_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n1027_call_proc_staged_β]
                        mov              qword ptr [rbp + 2736], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              qword ptr [rbp + 2640], 0
                        mov              qword ptr [rbp + 2648], 0
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              qword ptr [rbp + 2608], 0
                        mov              qword ptr [rbp + 2616], 0
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2600], 0
                        mov              qword ptr [rbp + 2576], 0
                        mov              qword ptr [rbp + 2584], 0
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              qword ptr [rbp + 2480], 0
                        mov              qword ptr [rbp + 2488], 0
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0
                        mov              qword ptr [rbp + 2448], 0
                        mov              qword ptr [rbp + 2456], 0
                        mov              rax, qword ptr [rbp + 2728]
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
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2736], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rax, qword ptr [rbp + 2744]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2776];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2784]
                        mov              rbp, qword ptr [rbp + 2776];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 2768]
                        mov              r13, qword ptr [rbp + 2744]
                        lea              rsp, [rbp + 2784]
                        mov              rbp, qword ptr [rbp + 2776];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__lefteven$2F1:
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
                        lea              rax, [rip + lefteven$2F1_alt1]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
lefteven$2F1_α_body:
                        .type            n1180_var_ref_bx, @function
n1180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1180_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1181_lit_integer_α
                        .size            n1180_var_ref_bx, .-n1180_var_ref_bx
                        .type            n1181_lit_integer_bx, @function
n1181_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1181_lit_integer_α:    mov              r11, 473
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1194_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1182_call_α
.Llit_integer_α_1194_0: .quad            2
                        .size            n1181_lit_integer_bx, .-n1181_lit_integer_bx
                        .type            n1182_call_bx, @function
n1182_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1182_call_α:           mov              r11, 474
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    lefteven$2F1_step
                                                                              jmp   lefteven$2F1_γ
n1182_call_β:           mov              r11, 474;                            jmp   lefteven$2F1_step
                        .size            n1182_call_bx, .-n1182_call_bx
                        .type            n1183_var_ref_bx, @function
n1183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1183_var_ref_α:        mov              r11, 475
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1184_lit_integer_α
                        .size            n1183_var_ref_bx, .-n1183_var_ref_bx
                        .type            n1184_lit_integer_bx, @function
n1184_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1184_lit_integer_α:    mov              r11, 476
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1198_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n1185_call_α
.Llit_integer_α_1198_0: .quad            4
                        .size            n1184_lit_integer_bx, .-n1184_lit_integer_bx
                        .type            n1185_call_bx, @function
n1185_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1185_call_α:           mov              r11, 477
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    lefteven$2F1_step
                                                                              jmp   lefteven$2F1_γ
n1185_call_β:           mov              r11, 477;                            jmp   lefteven$2F1_step
                        .size            n1185_call_bx, .-n1185_call_bx
                        .type            n1186_var_ref_bx, @function
n1186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1186_var_ref_α:        mov              r11, 478
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1187_lit_integer_α
                        .size            n1186_var_ref_bx, .-n1186_var_ref_bx
                        .type            n1187_lit_integer_bx, @function
n1187_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1187_lit_integer_α:    mov              r11, 479
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1202_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1188_call_α
.Llit_integer_α_1202_0: .quad            6
                        .size            n1187_lit_integer_bx, .-n1187_lit_integer_bx
                        .type            n1188_call_bx, @function
n1188_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1188_call_α:           mov              r11, 480
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    lefteven$2F1_step
                                                                              jmp   lefteven$2F1_γ
n1188_call_β:           mov              r11, 480;                            jmp   lefteven$2F1_step
                        .size            n1188_call_bx, .-n1188_call_bx
                        .type            n1189_var_ref_bx, @function
n1189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1189_var_ref_α:        mov              r11, 481
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1190_lit_integer_α
                        .size            n1189_var_ref_bx, .-n1189_var_ref_bx
                        .type            n1190_lit_integer_bx, @function
n1190_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1190_lit_integer_α:    mov              r11, 482
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1206_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1191_call_α
.Llit_integer_α_1206_0: .quad            8
                        .size            n1190_lit_integer_bx, .-n1190_lit_integer_bx
                        .type            n1191_call_bx, @function
n1191_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1191_call_α:           mov              r11, 483
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    lefteven$2F1_step
                                                                              jmp   lefteven$2F1_γ
n1191_call_β:           mov              r11, 483;                            jmp   lefteven$2F1_step
                        .size            n1191_call_bx, .-n1191_call_bx
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_step:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], 0
                        mov              rax, qword ptr [rbp + 440]
                        test             rax, rax
                                                                              je    lefteven$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt1:
                        lea              rax, [rip + lefteven$2F1_alt2]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt2:
                        lea              rax, [rip + lefteven$2F1_alt3]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 440], rax
                        mov              r13, qword ptr [rbp + 456]
                                                                              jmp   n1189_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_β:
                        test             r15, r15
                                                                              jne   lefteven$2F1_ω
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 448], 0
                        test             rax, rax
                                                                              jne   lefteven$2F1_βres
                                                                              jmp   lefteven$2F1_step
lefteven$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rax, qword ptr [rbp + 456]
                        cmp              r13, rax;                            je    lefteven$2F1_altdet
                        lea              rdx, [rip + lefteven$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
lefteven$2F1_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_ω:
                        mov              rcx, qword ptr [rbp + 480]
                        mov              r13, qword ptr [rbp + 456]
                        lea              rsp, [rbp + 496]
                        mov              rbp, qword ptr [rbp + 488];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__zero$2F1:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 472], r13
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 448], r12
                        lea              rax, [rip + zero$2F1_alt1]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
zero$2F1_α_body:
                        .type            n1208_var_ref_bx, @function
n1208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1208_var_ref_α:        mov              r11, 484
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1209_lit_string_α
                        .size            n1208_var_ref_bx, .-n1208_var_ref_bx
                        .type            n1209_lit_string_bx, @function
n1209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1209_lit_string_α:     mov              r11, 485
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1221_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1210_call_α
.Llit_string_α_1221_0:  .quad            .Llit_string_α_1221_0_s
.Llit_string_α_1221_0_s:
                        .string          "[]"
                        .size            n1209_lit_string_bx, .-n1209_lit_string_bx
                        .type            n1210_call_bx, @function
n1210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1210_call_α:           mov              r11, 486
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1222_2]
                                                                              jmp   .Lcall_α_1222_3
.Lcall_α_1222_2:        .quad            .Lcall_α_1222_2_s
.Lcall_α_1222_2_s:      .string          "[]"
.Lcall_α_1222_3:        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_γ
n1210_call_β:           mov              r11, 486;                            jmp   zero$2F1_step
                        .size            n1210_call_bx, .-n1210_call_bx
                        .type            n1211_var_ref_bx, @function
n1211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1211_var_ref_α:        mov              r11, 487
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n1212_lit_string_α
                        .size            n1211_var_ref_bx, .-n1211_var_ref_bx
                        .type            n1212_lit_string_bx, @function
n1212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1212_lit_string_α:     mov              r11, 488
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1225_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1213_lit_integer_α
.Llit_string_α_1225_0:  .quad            .Llit_string_α_1225_0_s
.Llit_string_α_1225_0_s:
                        .string          "."
                        .size            n1212_lit_string_bx, .-n1212_lit_string_bx
                        .type            n1213_lit_integer_bx, @function
n1213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1213_lit_integer_α:    mov              r11, 489
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1226_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1214_var_ref_α
.Llit_integer_α_1226_0: .quad            0
                        .size            n1213_lit_integer_bx, .-n1213_lit_integer_bx
                        .type            n1214_var_ref_bx, @function
n1214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1214_var_ref_α:        mov              r11, 490
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1215_call_α
                        .size            n1214_var_ref_bx, .-n1214_var_ref_bx
                        .type            n1215_call_bx, @function
n1215_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1215_call_α:           mov              r11, 491
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
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   n1216_call_α
n1215_call_β:           mov              r11, 491;                            jmp   zero$2F1_step
                        .size            n1215_call_bx, .-n1215_call_bx
                        .type            n1216_call_bx, @function
n1216_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1216_call_α:           mov              r11, 492
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
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   n1217_var_ref_α
n1216_call_β:           mov              r11, 492;                            jmp   zero$2F1_step
                        .size            n1216_call_bx, .-n1216_call_bx
                        .type            n1217_var_ref_bx, @function
n1217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1217_var_ref_α:        mov              r11, 493
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1218_call_proc_staged_α
                        .size            n1217_var_ref_bx, .-n1217_var_ref_bx
                        .type            n1218_call_proc_staged_bx, @function
n1218_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1218_call_proc_staged_α:
                        mov              r11, 494
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1234_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1234_201
.Lcall_proc_staged_α_1234_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1234_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1234_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 9
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1234_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 1
                        mov              rsi, rbp
                        lea              rdx, [rbp + 512]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1234_99
                        mov              r10, qword ptr [rbp + 472]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1234_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1234_99
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rax
.Lcall_proc_staged_α_1234_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1234_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1234_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1234_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1234_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1234_21
                        add              rsp, 32
.Lcall_proc_staged_α_1234_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1234_2
.Lcall_proc_staged_α_1234_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1234_2
.Lcall_proc_staged_α_1234_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1234_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zero$2F1_step
.Lcall_proc_staged_α_1234_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1234_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
.Lcall_proc_staged_α_1234_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
n1218_call_proc_staged_β:
                        mov              r11, 494
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1234_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1234_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1234_22:
                                                                              jmp   zero$2F1_step
.Lcall_proc_staged_α_1234_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
.Lcall_proc_staged_α_1234_0:
                        .quad            .Lcall_proc_staged_α_1234_0_s
.Lcall_proc_staged_α_1234_0_s:
                        .string          "zero/1"
                        .size            n1218_call_proc_staged_bx, .-n1218_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ret1:
                        lea              rax, [rip + n1218_call_proc_staged_β]
                        mov              qword ptr [rbp + 464], rax
                                                                              jmp   zero$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_step:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              rax, qword ptr [rbp + 456]
                        test             rax, rax
                                                                              je    zero$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 456], rax
                        mov              r13, qword ptr [rbp + 472]
                                                                              jmp   n1211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_β:
                        test             r15, r15
                                                                              jne   zero$2F1_ω
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 464], 0
                        test             rax, rax
                                                                              jne   zero$2F1_βres
                                                                              jmp   zero$2F1_step
zero$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rax, qword ptr [rbp + 472]
                        cmp              r13, rax;                            je    zero$2F1_altdet
                        lea              rdx, [rip + zero$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
zero$2F1_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ω:
                        mov              rcx, qword ptr [rbp + 496]
                        mov              r13, qword ptr [rbp + 472]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
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
                        .type            n1235_call_proc_staged_bx, @function
n1235_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1235_call_proc_staged_α:
                        mov              r11, 495
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1237_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1237_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1237_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1237_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1237_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1237_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1237_21
                        add              rsp, 32
.Lcall_proc_staged_α_1237_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1237_2
.Lcall_proc_staged_α_1237_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1237_2
.Lcall_proc_staged_α_1237_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1237_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1237_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1237_29
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
.Lcall_proc_staged_α_1237_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1235_call_proc_staged_β:
                        mov              r11, 495
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1237_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1237_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1237_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1237_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1237_0:
                        .quad            .Lcall_proc_staged_α_1237_0_s
.Lcall_proc_staged_α_1237_0_s:
                        .string          "main/0"
                        .size            n1235_call_proc_staged_bx, .-n1235_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "mult/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__mult$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            576
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "mult/4"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__mult$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            3456
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "odd/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__odd$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "sum/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__sum$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            576
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "sum/4"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__sum$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            3168
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "even/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__even$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "top/16"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__top$2F16
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            16
                        .long            0
                        .long            6864
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "main/0"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2704
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "lefteven/1"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__lefteven$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "zero/1"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__zero$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
