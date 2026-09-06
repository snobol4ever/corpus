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
                        sub              rsp, 3200
                        mov              qword ptr [rsp + 3176], rcx
                        mov              qword ptr [rsp + 3184], rdx
                        mov              qword ptr [rsp + 3192], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3200]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3160], r13
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3136], r12
                        lea              rax, [rip + mult$2F4_alt1]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2992
                        mov              edx, 3136
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
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_121_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n40_var_ref_α
.Llit_string_α_121_0:   .quad            .Llit_string_α_121_0_s
.Llit_string_α_121_0_s: .string          "."
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n42_call_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1656]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n43_call_α
n42_call_β:             mov              r11, 19;                             jmp   mult$2F4_step
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
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
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n46_call_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
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
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n49_call_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
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
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n51_lit_string_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n52_var_ref_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "."
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n54_call_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 31
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n55_call_α
n54_call_β:             mov              r11, 31;                             jmp   mult$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n56_var_ref_α
n55_call_β:             mov              r11, 32;                             jmp   mult$2F4_step
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n58_var_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n59_call_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n60_var_α
n59_call_β:             mov              r11, 36;                             jmp   mult$2F4_step
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n61_call_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 38;                             jmp   mult$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n63_call_α
n62_call_β:             mov              r11, 39;                             jmp   mult$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 40
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n64_var_ref_α
n63_call_β:             mov              r11, 40;                             jmp   mult$2F4_step
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n65_var_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 712], rax;          jmp   n66_lit_integer_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n67_lit_string_α
.Llit_integer_α_163_0:  .quad            10
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_164_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n68_call_α
.Llit_string_α_164_0:   .quad            .Llit_string_α_164_0_s
.Llit_string_α_164_0_s: .string          "mod"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             mov              r11, 45
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n69_call_α
n68_call_β:             mov              r11, 45;                             jmp   mult$2F4_step
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n70_call_α
n69_call_β:             mov              r11, 46;                             jmp   mult$2F4_step
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_call_bx, @function
n70_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:             mov              r11, 47
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n71_call_α
n70_call_β:             mov              r11, 47;                             jmp   mult$2F4_step
                        .size            n70_call_bx, .-n70_call_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             mov              r11, 48
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n72_var_ref_α
n71_call_β:             mov              r11, 48;                             jmp   mult$2F4_step
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n73_var_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 50
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 408], rax;          jmp   n74_lit_integer_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              r11, 51
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n75_lit_string_α
.Llit_integer_α_173_0:  .quad            10
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_lit_string_bx, @function
n75_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_174_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n76_call_α
.Llit_string_α_174_0:   .quad            .Llit_string_α_174_0_s
.Llit_string_α_174_0_s: .string          "//"
                        .size            n75_lit_string_bx, .-n75_lit_string_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             mov              r11, 53
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n77_call_α
n76_call_β:             mov              r11, 53;                             jmp   mult$2F4_step
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             mov              r11, 54
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n78_call_α
n77_call_β:             mov              r11, 54;                             jmp   mult$2F4_step
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_call_bx, @function
n78_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_α:             mov              r11, 55
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n79_call_α
n78_call_β:             mov              r11, 55;                             jmp   mult$2F4_step
                        .size            n78_call_bx, .-n78_call_bx
                        .type            n79_call_bx, @function
n79_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             mov              r11, 56
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
                                                                              jmp   n80_var_ref_α
n79_call_β:             mov              r11, 56;                             jmp   mult$2F4_step
                        .size            n79_call_bx, .-n79_call_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n81_var_ref_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3008]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3024]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n84_call_proc_staged_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_proc_staged_bx, @function
n84_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α: mov              r11, 61
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_188_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_188_201
.Lcall_proc_staged_α_188_200:
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
.Lcall_proc_staged_α_188_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_188_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_188_203
.Lcall_proc_staged_α_188_202:
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
.Lcall_proc_staged_α_188_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_188_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_188_205
.Lcall_proc_staged_α_188_204:
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
.Lcall_proc_staged_α_188_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_188_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_188_207
.Lcall_proc_staged_α_188_206:
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
.Lcall_proc_staged_α_188_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_188_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_188_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3200]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_188_99
                        mov              r10, qword ptr [rbp + 3160]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_188_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_188_99
                        mov              rcx, qword ptr [rbp + 3176]
                        mov              rdx, qword ptr [rbp + 3184]
                        lea              rsp, [rbp + 3200]
                        mov              rbp, qword ptr [rbp + 3192];         jmp   rax
.Lcall_proc_staged_α_188_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_188_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_188_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_188_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_188_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_188_21
                        add              rsp, 32
.Lcall_proc_staged_α_188_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_188_2
.Lcall_proc_staged_α_188_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_188_2
.Lcall_proc_staged_α_188_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_188_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   mult$2F4_step
.Lcall_proc_staged_α_188_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_188_29
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
.Lcall_proc_staged_α_188_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
n84_call_proc_staged_β: mov              r11, 61
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_188_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_188_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_188_22:
                                                                              jmp   mult$2F4_step
.Lcall_proc_staged_α_188_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_ret0
.Lcall_proc_staged_α_188_0:
                        .quad            .Lcall_proc_staged_α_188_0_s
.Lcall_proc_staged_α_188_0_s:
                        .string          "mult/4"
                        .size            n84_call_proc_staged_bx, .-n84_call_proc_staged_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n86_lit_string_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 2976], 2            # result
                        mov              dword ptr [rbp + 2980], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n87_call_α
.Llit_string_α_191_0:   .quad            .Llit_string_α_191_0_s
.Llit_string_α_191_0_s: .string          "[]"
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             mov              r11, 64
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2920], rax
                        lea              rdi, [rbp + 2912]
                        mov              rsi, qword ptr [rip + .Lcall_α_192_2]
                                                                              jmp   .Lcall_α_192_3
.Lcall_α_192_2:         .quad            .Lcall_α_192_2_s
.Lcall_α_192_2_s:       .string          "[]"
.Lcall_α_192_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n88_var_ref_α
n87_call_β:             mov              r11, 64;                             jmp   mult$2F4_step
                        .size            n87_call_bx, .-n87_call_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx;         jmp   n89_var_ref_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx;         jmp   n90_call_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_call_bx, @function
n90_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             mov              r11, 67
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n91_var_ref_α
n90_call_β:             mov              r11, 67;                             jmp   mult$2F4_step
                        .size            n90_call_bx, .-n90_call_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n92_var_ref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n93_call_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             mov              r11, 70
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n94_var_ref_α
n93_call_β:             mov              r11, 70;                             jmp   mult$2F4_step
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_var_ref_bx, @function
n94_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n95_lit_string_α
                        .size            n94_var_ref_bx, .-n94_var_ref_bx
                        .type            n95_lit_string_bx, @function
n95_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_205_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n96_var_ref_α
.Llit_string_α_205_0:   .quad            .Llit_string_α_205_0_s
.Llit_string_α_205_0_s: .string          "."
                        .size            n95_lit_string_bx, .-n95_lit_string_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n97_lit_string_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_lit_string_bx, @function
n97_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n98_var_ref_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          "."
                        .size            n97_lit_string_bx, .-n97_lit_string_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n99_lit_string_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 76
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n100_call_α
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          "[]"
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            mov              r11, 77
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              al, 104;                             je    mult$2F4_ω
                                                                              jmp   n101_call_α
n100_call_β:            mov              r11, 77;                             jmp   mult$2F4_ω
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_call_bx, @function
n101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2504]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n102_call_α
n101_call_β:            mov              r11, 78;                             jmp   mult$2F4_step
                        .size            n101_call_bx, .-n101_call_bx
                        .type            n102_call_bx, @function
n102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            mov              r11, 79
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2616]
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
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n103_var_ref_α
n102_call_β:            mov              r11, 79;                             jmp   mult$2F4_step
                        .size            n102_call_bx, .-n102_call_bx
                        .type            n103_var_ref_bx, @function
n103_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n104_var_α
                        .size            n103_var_ref_bx, .-n103_var_ref_bx
                        .type            n104_var_bx, @function
n104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 81
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n105_lit_integer_α
                        .size            n104_var_bx, .-n104_var_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              r11, 82
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n106_lit_string_α
.Llit_integer_α_219_0:  .quad            10
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_lit_string_bx, @function
n106_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rbp + 2320], 2            # result
                        mov              dword ptr [rbp + 2324], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_220_0]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n107_call_α
.Llit_string_α_220_0:   .quad            .Llit_string_α_220_0_s
.Llit_string_α_220_0_s: .string          "mod"
                        .size            n106_lit_string_bx, .-n106_lit_string_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            mov              r11, 84
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n108_call_α
n107_call_β:            mov              r11, 84;                             jmp   mult$2F4_step
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n109_call_α
n108_call_β:            mov              r11, 85;                             jmp   mult$2F4_step
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 86
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2360], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n110_call_α
n109_call_β:            mov              r11, 86;                             jmp   mult$2F4_step
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n111_var_ref_α
n110_call_β:            mov              r11, 87;                             jmp   mult$2F4_step
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_var_ref_bx, @function
n111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n112_var_α
                        .size            n111_var_ref_bx, .-n111_var_ref_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n113_lit_integer_α
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_lit_integer_bx, @function
n113_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 90
                        mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n114_lit_string_α
.Llit_integer_α_229_0:  .quad            10
                        .size            n113_lit_integer_bx, .-n113_lit_integer_bx
                        .type            n114_lit_string_bx, @function
n114_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 2016], 2            # result
                        mov              dword ptr [rbp + 2020], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_230_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n115_call_α
.Llit_string_α_230_0:   .quad            .Llit_string_α_230_0_s
.Llit_string_α_230_0_s: .string          "//"
                        .size            n114_lit_string_bx, .-n114_lit_string_bx
                        .type            n115_call_bx, @function
n115_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_α:            mov              r11, 92
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n116_call_α
n115_call_β:            mov              r11, 92;                             jmp   mult$2F4_step
                        .size            n115_call_bx, .-n115_call_bx
                        .type            n116_call_bx, @function
n116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n117_call_α
n116_call_β:            mov              r11, 93;                             jmp   mult$2F4_step
                        .size            n116_call_bx, .-n116_call_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   n118_call_α
n117_call_β:            mov              r11, 94;                             jmp   mult$2F4_step
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_call_bx, @function
n118_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_α:            mov              r11, 95
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    mult$2F4_step
                                                                              jmp   mult$2F4_γ
n118_call_β:            mov              r11, 95;                             jmp   mult$2F4_step
                        .size            n118_call_bx, .-n118_call_bx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ret0:
                        lea              rax, [rip + n84_call_proc_staged_β]
                        mov              qword ptr [rbp + 3152], rax
                                                                              jmp   mult$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_step:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              qword ptr [rbp + 3104], 0
                        mov              qword ptr [rbp + 3112], 0
                        mov              qword ptr [rbp + 3088], 0
                        mov              qword ptr [rbp + 3096], 0
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              qword ptr [rbp + 3072], 0
                        mov              qword ptr [rbp + 3080], 0
                        mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0
                        mov              qword ptr [rbp + 3056], 0
                        mov              qword ptr [rbp + 3064], 0
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              rax, qword ptr [rbp + 3144]
                        test             rax, rax
                                                                              je    mult$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 3144], rax
                        mov              r13, qword ptr [rbp + 3160]
                                                                              jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_β:
                        test             r15, r15
                                                                              jne   mult$2F4_ω
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3152], 0
                        test             rax, rax
                                                                              jne   mult$2F4_βres
                                                                              jmp   mult$2F4_step
mult$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3176]
                        mov              rax, qword ptr [rbp + 3160]
                        cmp              r13, rax;                            je    mult$2F4_altdet
                        lea              rdx, [rip + mult$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3192];         jmp   rcx
mult$2F4_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 3200]
                        mov              rbp, qword ptr [rbp + 3192];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
mult$2F4_ω:
                        mov              rcx, qword ptr [rbp + 3184]
                        mov              r13, qword ptr [rbp + 3160]
                        lea              rsp, [rbp + 3200]
                        mov              rbp, qword ptr [rbp + 3192];         jmp   rcx
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
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n236_lit_integer_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     mov              r11, 97
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n237_call_α
.Llit_integer_α_252_0:  .quad            1
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            mov              r11, 98
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
n237_call_β:            mov              r11, 98;                             jmp   odd$2F1_step
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n239_lit_integer_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_lit_integer_bx, @function
n239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n240_call_α
.Llit_integer_α_256_0:  .quad            3
                        .size            n239_lit_integer_bx, .-n239_lit_integer_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            mov              r11, 101
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
n240_call_β:            mov              r11, 101;                            jmp   odd$2F1_step
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n242_lit_integer_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_260_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n243_call_α
.Llit_integer_α_260_0:  .quad            5
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 104
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
n243_call_β:            mov              r11, 104;                            jmp   odd$2F1_step
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n245_lit_integer_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_lit_integer_bx, @function
n245_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_264_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n246_call_α
.Llit_integer_α_264_0:  .quad            7
                        .size            n245_lit_integer_bx, .-n245_lit_integer_bx
                        .type            n246_call_bx, @function
n246_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_α:            mov              r11, 107
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
n246_call_β:            mov              r11, 107;                            jmp   odd$2F1_step
                        .size            n246_call_bx, .-n246_call_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n248_lit_integer_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_lit_integer_bx, @function
n248_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_268_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n249_call_α
.Llit_integer_α_268_0:  .quad            9
                        .size            n248_lit_integer_bx, .-n248_lit_integer_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 110
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
n249_call_β:            mov              r11, 110;                            jmp   odd$2F1_step
                        .size            n249_call_bx, .-n249_call_bx
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
                                                                              jmp   n238_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt2:
                        lea              rax, [rip + odd$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt3:
                        lea              rax, [rip + odd$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n244_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
odd$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n247_var_ref_α
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
                        .type            n270_var_ref_bx, @function
n270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n271_var_ref_α
                        .size            n270_var_ref_bx, .-n270_var_ref_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n272_call_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_call_bx, @function
n272_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            mov              r11, 113
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
                                                                              jmp   n273_var_ref_α
n272_call_β:            mov              r11, 113;                            jmp   sum$2F3_step
                        .size            n272_call_bx, .-n272_call_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n274_var_ref_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n275_call_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            mov              r11, 116
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
                                                                              jmp   n276_var_ref_α
n275_call_β:            mov              r11, 116;                            jmp   sum$2F3_step
                        .size            n275_call_bx, .-n275_call_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n277_var_ref_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n278_call_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_call_bx, @function
n278_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            mov              r11, 119
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
                                                                              jmp   n279_var_ref_α
n278_call_β:            mov              r11, 119;                            jmp   sum$2F3_step
                        .size            n278_call_bx, .-n278_call_bx
                        .type            n279_var_ref_bx, @function
n279_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n280_var_ref_α
                        .size            n279_var_ref_bx, .-n279_var_ref_bx
                        .type            n280_var_ref_bx, @function
n280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n281_lit_integer_α
                        .size            n280_var_ref_bx, .-n280_var_ref_bx
                        .type            n281_lit_integer_bx, @function
n281_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     mov              r11, 122
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_303_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n282_var_ref_α
.Llit_integer_α_303_0:  .quad            0
                        .size            n281_lit_integer_bx, .-n281_lit_integer_bx
                        .type            n282_var_ref_bx, @function
n282_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n283_call_proc_staged_α
                        .size            n282_var_ref_bx, .-n282_var_ref_bx
                        .type            n283_call_proc_staged_bx, @function
n283_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_proc_staged_α:
                        mov              r11, 124
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_200
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_307_201
.Lcall_proc_staged_α_307_200:
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
.Lcall_proc_staged_α_307_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_202
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_307_203
.Lcall_proc_staged_α_307_202:
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
.Lcall_proc_staged_α_307_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_204
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_307_205
.Lcall_proc_staged_α_307_204:
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
.Lcall_proc_staged_α_307_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_307_206
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_307_207
.Lcall_proc_staged_α_307_206:
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
.Lcall_proc_staged_α_307_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_307_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_307_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_307_99
                        mov              r10, qword ptr [rbp + 616]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_307_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_307_99
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, qword ptr [rbp + 648];          jmp   rax
.Lcall_proc_staged_α_307_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_307_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_307_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_307_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_307_3:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_307_21
                        add              rsp, 32
.Lcall_proc_staged_α_307_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_307_2
.Lcall_proc_staged_α_307_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 144], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_307_2
.Lcall_proc_staged_α_307_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_307_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F3_step
.Lcall_proc_staged_α_307_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_307_29
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
.Lcall_proc_staged_α_307_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
n283_call_proc_staged_β:
                        mov              r11, 124
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_307_22
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_307_22
                        mov              rcx, qword ptr [rbp + 152]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_307_22:
                                                                              jmp   sum$2F3_step
.Lcall_proc_staged_α_307_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sum$2F3_step
                                                                              jmp   sum$2F3_ret0
.Lcall_proc_staged_α_307_0:
                        .quad            .Lcall_proc_staged_α_307_0_s
.Lcall_proc_staged_α_307_0_s:
                        .string          "sum/4"
                        .size            n283_call_proc_staged_bx, .-n283_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F3_ret0:
                        lea              rax, [rip + n283_call_proc_staged_β]
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
                        sub              rsp, 3008
                        mov              qword ptr [rsp + 2984], rcx
                        mov              qword ptr [rsp + 2992], rdx
                        mov              qword ptr [rsp + 3000], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3008]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2968], r13
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2944], r12
                        lea              rax, [rip + sum$2F4_alt1]
                        mov              qword ptr [rsp + 2952], rax
                        lea              rdi, [rsp + 2944]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2768
                        mov              edx, 2944
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sum$2F4_α_body:
                        .type            n308_var_ref_bx, @function
n308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n309_lit_string_α
                        .size            n308_var_ref_bx, .-n308_var_ref_bx
                        .type            n309_lit_string_bx, @function
n309_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n310_var_ref_α
.Llit_string_α_389_0:   .quad            .Llit_string_α_389_0_s
.Llit_string_α_389_0_s: .string          "."
                        .size            n309_lit_string_bx, .-n309_lit_string_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n311_var_ref_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n312_call_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1768]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n313_call_α
n312_call_β:            mov              r11, 129;                            jmp   sum$2F4_step
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n314_var_ref_α
n313_call_β:            mov              r11, 130;                            jmp   sum$2F4_step
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n315_lit_string_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_lit_string_bx, @function
n315_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_398_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n316_var_ref_α
.Llit_string_α_398_0:   .quad            .Llit_string_α_398_0_s
.Llit_string_α_398_0_s: .string          "."
                        .size            n315_lit_string_bx, .-n315_lit_string_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n317_var_ref_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_var_ref_bx, @function
n317_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n318_call_α
                        .size            n317_var_ref_bx, .-n317_var_ref_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n319_call_α
n318_call_β:            mov              r11, 135;                            jmp   sum$2F4_step
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            mov              r11, 136
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n320_var_ref_α
n319_call_β:            mov              r11, 136;                            jmp   sum$2F4_step
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n321_var_ref_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n322_call_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_call_bx, @function
n322_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n323_var_ref_α
n322_call_β:            mov              r11, 139;                            jmp   sum$2F4_step
                        .size            n322_call_bx, .-n322_call_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n324_lit_string_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_lit_string_bx, @function
n324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_412_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n325_var_ref_α
.Llit_string_α_412_0:   .quad            .Llit_string_α_412_0_s
.Llit_string_α_412_0_s: .string          "."
                        .size            n324_lit_string_bx, .-n324_lit_string_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n326_var_ref_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n327_call_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n328_call_α
n327_call_β:            mov              r11, 144;                            jmp   sum$2F4_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_call_bx, @function
n328_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n329_cut_α
n328_call_β:            mov              r11, 145;                            jmp   sum$2F4_step
                        .size            n328_call_bx, .-n328_call_bx
                        .type            n329_cut_bx, @function
n329_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_cut_α:             mov              r11, 146
                        mov              qword ptr [rbp + 2952], 0
                        mov              qword ptr [rbp + 2960], 0
                        lea              rdi, [rbp + 2944]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n330_var_ref_α
                        .size            n329_cut_bx, .-n329_cut_bx
                        .type            n330_var_ref_bx, @function
n330_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n331_var_α
                        .size            n330_var_ref_bx, .-n330_var_ref_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n332_var_α
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_var_bx, @function
n332_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n333_call_α
                        .size            n332_var_bx, .-n332_var_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 150
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n334_var_α
n333_call_β:            mov              r11, 150;                            jmp   sum$2F4_step
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_bx, @function
n334_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             mov              r11, 151
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n335_call_α
                        .size            n334_var_bx, .-n334_var_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            mov              r11, 152
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n336_call_α
n335_call_β:            mov              r11, 152;                            jmp   sum$2F4_step
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_call_bx, @function
n336_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_call_α:            mov              r11, 153
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n337_call_α
n336_call_β:            mov              r11, 153;                            jmp   sum$2F4_step
                        .size            n336_call_bx, .-n336_call_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n338_var_ref_α
n337_call_β:            mov              r11, 154;                            jmp   sum$2F4_ω
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_var_ref_bx, @function
n338_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n339_var_α
                        .size            n338_var_ref_bx, .-n338_var_ref_bx
                        .type            n339_var_bx, @function
n339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 712], rax;          jmp   n340_lit_integer_α
                        .size            n339_var_bx, .-n339_var_bx
                        .type            n340_lit_integer_bx, @function
n340_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n341_lit_string_α
.Llit_integer_α_437_0:  .quad            10
                        .size            n340_lit_integer_bx, .-n340_lit_integer_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 3
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n342_call_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "mod"
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n343_call_α
n342_call_β:            mov              r11, 159;                            jmp   sum$2F4_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n344_call_α
n343_call_β:            mov              r11, 160;                            jmp   sum$2F4_step
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_call_bx, @function
n344_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_α:            mov              r11, 161
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n345_call_α
n344_call_β:            mov              r11, 161;                            jmp   sum$2F4_step
                        .size            n344_call_bx, .-n344_call_bx
                        .type            n345_call_bx, @function
n345_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            mov              r11, 162
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   n346_var_ref_α
n345_call_β:            mov              r11, 162;                            jmp   sum$2F4_ω
                        .size            n345_call_bx, .-n345_call_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n347_var_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_var_bx, @function
n347_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:             mov              r11, 164
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 408], rax;          jmp   n348_lit_integer_α
                        .size            n347_var_bx, .-n347_var_bx
                        .type            n348_lit_integer_bx, @function
n348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_447_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n349_lit_string_α
.Llit_integer_α_447_0:  .quad            10
                        .size            n348_lit_integer_bx, .-n348_lit_integer_bx
                        .type            n349_lit_string_bx, @function
n349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n350_call_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "//"
                        .size            n349_lit_string_bx, .-n349_lit_string_bx
                        .type            n350_call_bx, @function
n350_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_zguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n351_call_α
n350_call_β:            mov              r11, 167;                            jmp   sum$2F4_step
                        .size            n350_call_bx, .-n350_call_bx
                        .type            n351_call_bx, @function
n351_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_call_α:            mov              r11, 168
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
                        call             rt_pl_dop_ax_idiv@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n352_call_α
n351_call_β:            mov              r11, 168;                            jmp   sum$2F4_step
                        .size            n351_call_bx, .-n351_call_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 344]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n353_call_α
n352_call_β:            mov              r11, 169;                            jmp   sum$2F4_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_call_bx, @function
n353_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_α:            mov              r11, 170
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
                                                                              jmp   n354_var_ref_α
n353_call_β:            mov              r11, 170;                            jmp   sum$2F4_ω
                        .size            n353_call_bx, .-n353_call_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n355_var_ref_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n356_var_ref_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n357_var_ref_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_var_ref_bx, @function
n357_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n358_call_proc_staged_α
                        .size            n357_var_ref_bx, .-n357_var_ref_bx
                        .type            n358_call_proc_staged_bx, @function
n358_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        mov              r11, 175
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_462_201
.Lcall_proc_staged_α_462_200:
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
.Lcall_proc_staged_α_462_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_462_203
.Lcall_proc_staged_α_462_202:
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
.Lcall_proc_staged_α_462_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_462_205
.Lcall_proc_staged_α_462_204:
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
.Lcall_proc_staged_α_462_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_462_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_462_207
.Lcall_proc_staged_α_462_206:
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
.Lcall_proc_staged_α_462_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_462_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_462_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 3008]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_462_99
                        mov              r10, qword ptr [rbp + 2968]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_462_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_462_99
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              rdx, qword ptr [rbp + 2992]
                        lea              rsp, [rbp + 3008]
                        mov              rbp, qword ptr [rbp + 3000];         jmp   rax
.Lcall_proc_staged_α_462_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_462_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_462_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_462_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_462_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_462_21
                        add              rsp, 32
.Lcall_proc_staged_α_462_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_462_2
.Lcall_proc_staged_α_462_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_462_2
.Lcall_proc_staged_α_462_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_462_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sum$2F4_ω
.Lcall_proc_staged_α_462_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_462_29
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
.Lcall_proc_staged_α_462_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
n358_call_proc_staged_β:
                        mov              r11, 175
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_462_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_462_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_462_22:
                                                                              jmp   sum$2F4_ω
.Lcall_proc_staged_α_462_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    sum$2F4_ω
                                                                              jmp   sum$2F4_ret0
.Lcall_proc_staged_α_462_0:
                        .quad            .Lcall_proc_staged_α_462_0_s
.Lcall_proc_staged_α_462_0_s:
                        .string          "sum/4"
                        .size            n358_call_proc_staged_bx, .-n358_call_proc_staged_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n360_lit_string_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 2256], 2            # result
                        mov              dword ptr [rbp + 2260], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_465_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n361_call_α
.Llit_string_α_465_0:   .quad            .Llit_string_α_465_0_s
.Llit_string_α_465_0_s: .string          "[]"
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              rsi, qword ptr [rip + .Lcall_α_466_2]
                                                                              jmp   .Lcall_α_466_3
.Lcall_α_466_2:         .quad            .Lcall_α_466_2_s
.Lcall_α_466_2_s:       .string          "[]"
.Lcall_α_466_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n362_var_ref_α
n361_call_β:            mov              r11, 178;                            jmp   sum$2F4_step
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_var_ref_bx, @function
n362_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n363_var_ref_α
                        .size            n362_var_ref_bx, .-n362_var_ref_bx
                        .type            n363_var_ref_bx, @function
n363_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx;         jmp   n364_call_α
                        .size            n363_var_ref_bx, .-n363_var_ref_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n365_var_ref_α
n364_call_β:            mov              r11, 181;                            jmp   sum$2F4_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n366_lit_integer_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_lit_integer_bx, @function
n366_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n367_call_α
.Llit_integer_α_474_0:  .quad            0
                        .size            n366_lit_integer_bx, .-n366_lit_integer_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n368_var_ref_α
n367_call_β:            mov              r11, 184;                            jmp   sum$2F4_step
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n369_var_ref_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_var_ref_bx, @function
n369_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n370_call_α
                        .size            n369_var_ref_bx, .-n369_var_ref_bx
                        .type            n370_call_bx, @function
n370_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n371_cut_α
n370_call_β:            mov              r11, 187;                            jmp   sum$2F4_step
                        .size            n370_call_bx, .-n370_call_bx
                        .type            n371_cut_bx, @function
n371_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_cut_α:             mov              r11, 188
                        mov              qword ptr [rbp + 2952], 0
                        mov              qword ptr [rbp + 2960], 0
                        lea              rdi, [rbp + 2944]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   sum$2F4_γ
                        .size            n371_cut_bx, .-n371_cut_bx
                        .type            n372_var_ref_bx, @function
n372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx;         jmp   n373_lit_string_α
                        .size            n372_var_ref_bx, .-n372_var_ref_bx
                        .type            n373_lit_string_bx, @function
n373_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 2752], 2            # result
                        mov              dword ptr [rbp + 2756], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rbp + 2760], rax;         jmp   n374_call_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "[]"
                        .size            n373_lit_string_bx, .-n373_lit_string_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 191
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2688]
                        mov              rsi, qword ptr [rip + .Lcall_α_486_2]
                                                                              jmp   .Lcall_α_486_3
.Lcall_α_486_2:         .quad            .Lcall_α_486_2_s
.Lcall_α_486_2_s:       .string          "[]"
.Lcall_α_486_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n375_var_ref_α
n374_call_β:            mov              r11, 191;                            jmp   sum$2F4_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_var_ref_bx, @function
n375_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n376_lit_string_α
                        .size            n375_var_ref_bx, .-n375_var_ref_bx
                        .type            n376_lit_string_bx, @function
n376_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rbp + 2656], 2            # result
                        mov              dword ptr [rbp + 2660], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n377_call_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "[]"
                        .size            n376_lit_string_bx, .-n376_lit_string_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
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
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n378_var_ref_α
n377_call_β:            mov              r11, 194;                            jmp   sum$2F4_step
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n379_var_ref_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx;         jmp   n380_call_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 197
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
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
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n381_var_ref_α
n380_call_β:            mov              r11, 197;                            jmp   sum$2F4_step
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n382_lit_string_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_lit_string_bx, @function
n382_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_498_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n383_var_ref_α
.Llit_string_α_498_0:   .quad            .Llit_string_α_498_0_s
.Llit_string_α_498_0_s: .string          "."
                        .size            n382_lit_string_bx, .-n382_lit_string_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n384_lit_string_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_lit_string_bx, @function
n384_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rbp + 2352], 2            # result
                        mov              dword ptr [rbp + 2356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_501_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n385_call_α
.Llit_string_α_501_0:   .quad            .Llit_string_α_501_0_s
.Llit_string_α_501_0_s: .string          "[]"
                        .size            n384_lit_string_bx, .-n384_lit_string_bx
                        .type            n385_call_bx, @function
n385_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            mov              r11, 202
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   n386_call_α
n385_call_β:            mov              r11, 202;                            jmp   sum$2F4_step
                        .size            n385_call_bx, .-n385_call_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    sum$2F4_step
                                                                              jmp   sum$2F4_γ
n386_call_β:            mov              r11, 203;                            jmp   sum$2F4_step
                        .size            n386_call_bx, .-n386_call_bx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ret0:
                        lea              rax, [rip + n358_call_proc_staged_β]
                        mov              qword ptr [rbp + 2960], rax
                                                                              jmp   sum$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_step:
                        mov              rdi, qword ptr [rbp + 2944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2912], 0
                        mov              qword ptr [rbp + 2920], 0
                        mov              qword ptr [rbp + 2896], 0
                        mov              qword ptr [rbp + 2904], 0
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2880], 0
                        mov              qword ptr [rbp + 2888], 0
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              rax, qword ptr [rbp + 2952]
                        test             rax, rax
                                                                              je    sum$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt1:
                        lea              rax, [rip + sum$2F4_alt2]
                        mov              qword ptr [rbp + 2952], rax
                                                                              jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2952], rax
                        mov              r13, qword ptr [rbp + 2968]
                                                                              jmp   n372_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_β:
                        test             r15, r15
                                                                              jne   sum$2F4_ω
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2960], 0
                        test             rax, rax
                                                                              jne   sum$2F4_βres
                                                                              jmp   sum$2F4_step
sum$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2984]
                        mov              rax, qword ptr [rbp + 2968]
                        cmp              r13, rax;                            je    sum$2F4_altdet
                        lea              rdx, [rip + sum$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3000];         jmp   rcx
sum$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 3008]
                        mov              rbp, qword ptr [rbp + 3000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sum$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2992]
                        mov              r13, qword ptr [rbp + 2968]
                        lea              rsp, [rbp + 3008]
                        mov              rbp, qword ptr [rbp + 3000];         jmp   rcx
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
                        .type            n504_var_ref_bx, @function
n504_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n505_lit_integer_α
                        .size            n504_var_ref_bx, .-n504_var_ref_bx
                        .type            n505_lit_integer_bx, @function
n505_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n506_call_α
.Llit_integer_α_521_0:  .quad            0
                        .size            n505_lit_integer_bx, .-n505_lit_integer_bx
                        .type            n506_call_bx, @function
n506_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            mov              r11, 206
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
n506_call_β:            mov              r11, 206;                            jmp   even$2F1_step
                        .size            n506_call_bx, .-n506_call_bx
                        .type            n507_var_ref_bx, @function
n507_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 207
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n508_lit_integer_α
                        .size            n507_var_ref_bx, .-n507_var_ref_bx
                        .type            n508_lit_integer_bx, @function
n508_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_525_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n509_call_α
.Llit_integer_α_525_0:  .quad            2
                        .size            n508_lit_integer_bx, .-n508_lit_integer_bx
                        .type            n509_call_bx, @function
n509_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_call_α:            mov              r11, 209
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
n509_call_β:            mov              r11, 209;                            jmp   even$2F1_step
                        .size            n509_call_bx, .-n509_call_bx
                        .type            n510_var_ref_bx, @function
n510_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n511_lit_integer_α
                        .size            n510_var_ref_bx, .-n510_var_ref_bx
                        .type            n511_lit_integer_bx, @function
n511_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_integer_α:     mov              r11, 211
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_529_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n512_call_α
.Llit_integer_α_529_0:  .quad            4
                        .size            n511_lit_integer_bx, .-n511_lit_integer_bx
                        .type            n512_call_bx, @function
n512_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_call_α:            mov              r11, 212
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
n512_call_β:            mov              r11, 212;                            jmp   even$2F1_step
                        .size            n512_call_bx, .-n512_call_bx
                        .type            n513_var_ref_bx, @function
n513_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n514_lit_integer_α
                        .size            n513_var_ref_bx, .-n513_var_ref_bx
                        .type            n514_lit_integer_bx, @function
n514_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n515_call_α
.Llit_integer_α_533_0:  .quad            6
                        .size            n514_lit_integer_bx, .-n514_lit_integer_bx
                        .type            n515_call_bx, @function
n515_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_call_α:            mov              r11, 215
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
n515_call_β:            mov              r11, 215;                            jmp   even$2F1_step
                        .size            n515_call_bx, .-n515_call_bx
                        .type            n516_var_ref_bx, @function
n516_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n517_lit_integer_α
                        .size            n516_var_ref_bx, .-n516_var_ref_bx
                        .type            n517_lit_integer_bx, @function
n517_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n518_call_α
.Llit_integer_α_537_0:  .quad            8
                        .size            n517_lit_integer_bx, .-n517_lit_integer_bx
                        .type            n518_call_bx, @function
n518_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_call_α:            mov              r11, 218
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
n518_call_β:            mov              r11, 218;                            jmp   even$2F1_step
                        .size            n518_call_bx, .-n518_call_bx
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
                                                                              jmp   n507_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt2:
                        lea              rax, [rip + even$2F1_alt3]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n510_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt3:
                        lea              rax, [rip + even$2F1_alt4]
                        mov              qword ptr [rbp + 536], rax
                                                                              jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
even$2F1_alt4:
                        xor              eax, eax
                        mov              qword ptr [rbp + 536], rax
                        mov              r13, qword ptr [rbp + 552]
                                                                              jmp   n516_var_ref_α
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
                        .type            n539_var_ref_bx, @function
n539_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx;         jmp   n540_var_ref_α
                        .size            n539_var_ref_bx, .-n539_var_ref_bx
                        .type            n540_var_ref_bx, @function
n540_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 6544], rax
                        mov              qword ptr [rbp + 6552], rdx;         jmp   n541_call_α
                        .size            n540_var_ref_bx, .-n540_var_ref_bx
                        .type            n541_call_bx, @function
n541_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n541_call_α:            mov              r11, 221
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
                                                                              jmp   n542_var_ref_α
n541_call_β:            mov              r11, 221;                            jmp   top$2F16_step
                        .size            n541_call_bx, .-n541_call_bx
                        .type            n542_var_ref_bx, @function
n542_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n543_var_ref_α
                        .size            n542_var_ref_bx, .-n542_var_ref_bx
                        .type            n543_var_ref_bx, @function
n543_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n544_call_α
                        .size            n543_var_ref_bx, .-n543_var_ref_bx
                        .type            n544_call_bx, @function
n544_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n544_call_α:            mov              r11, 224
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
                                                                              jmp   n545_var_ref_α
n544_call_β:            mov              r11, 224;                            jmp   top$2F16_step
                        .size            n544_call_bx, .-n544_call_bx
                        .type            n545_var_ref_bx, @function
n545_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6336], rax
                        mov              qword ptr [rbp + 6344], rdx;         jmp   n546_var_ref_α
                        .size            n545_var_ref_bx, .-n545_var_ref_bx
                        .type            n546_var_ref_bx, @function
n546_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n547_call_α
                        .size            n546_var_ref_bx, .-n546_var_ref_bx
                        .type            n547_call_bx, @function
n547_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n547_call_α:            mov              r11, 227
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
                                                                              jmp   n548_var_ref_α
n547_call_β:            mov              r11, 227;                            jmp   top$2F16_step
                        .size            n547_call_bx, .-n547_call_bx
                        .type            n548_var_ref_bx, @function
n548_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6240], rax
                        mov              qword ptr [rbp + 6248], rdx;         jmp   n549_var_ref_α
                        .size            n548_var_ref_bx, .-n548_var_ref_bx
                        .type            n549_var_ref_bx, @function
n549_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx;         jmp   n550_call_α
                        .size            n549_var_ref_bx, .-n549_var_ref_bx
                        .type            n550_call_bx, @function
n550_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_call_α:            mov              r11, 230
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
                                                                              jmp   n551_var_ref_α
n550_call_β:            mov              r11, 230;                            jmp   top$2F16_step
                        .size            n550_call_bx, .-n550_call_bx
                        .type            n551_var_ref_bx, @function
n551_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n552_var_ref_α
                        .size            n551_var_ref_bx, .-n551_var_ref_bx
                        .type            n552_var_ref_bx, @function
n552_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n553_call_α
                        .size            n552_var_ref_bx, .-n552_var_ref_bx
                        .type            n553_call_bx, @function
n553_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            mov              r11, 233
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
                                                                              jmp   n554_var_ref_α
n553_call_β:            mov              r11, 233;                            jmp   top$2F16_step
                        .size            n553_call_bx, .-n553_call_bx
                        .type            n554_var_ref_bx, @function
n554_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n554_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6048], rax
                        mov              qword ptr [rbp + 6056], rdx;         jmp   n555_var_ref_α
                        .size            n554_var_ref_bx, .-n554_var_ref_bx
                        .type            n555_var_ref_bx, @function
n555_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx;         jmp   n556_call_α
                        .size            n555_var_ref_bx, .-n555_var_ref_bx
                        .type            n556_call_bx, @function
n556_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n556_call_α:            mov              r11, 236
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
                                                                              jmp   n557_var_ref_α
n556_call_β:            mov              r11, 236;                            jmp   top$2F16_step
                        .size            n556_call_bx, .-n556_call_bx
                        .type            n557_var_ref_bx, @function
n557_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n558_var_ref_α
                        .size            n557_var_ref_bx, .-n557_var_ref_bx
                        .type            n558_var_ref_bx, @function
n558_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx;         jmp   n559_call_α
                        .size            n558_var_ref_bx, .-n558_var_ref_bx
                        .type            n559_call_bx, @function
n559_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n559_call_α:            mov              r11, 239
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
                                                                              jmp   n560_var_ref_α
n559_call_β:            mov              r11, 239;                            jmp   top$2F16_step
                        .size            n559_call_bx, .-n559_call_bx
                        .type            n560_var_ref_bx, @function
n560_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n560_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx;         jmp   n561_var_ref_α
                        .size            n560_var_ref_bx, .-n560_var_ref_bx
                        .type            n561_var_ref_bx, @function
n561_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 5872], rax
                        mov              qword ptr [rbp + 5880], rdx;         jmp   n562_call_α
                        .size            n561_var_ref_bx, .-n561_var_ref_bx
                        .type            n562_call_bx, @function
n562_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_call_α:            mov              r11, 242
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
                                                                              jmp   n563_var_ref_α
n562_call_β:            mov              r11, 242;                            jmp   top$2F16_step
                        .size            n562_call_bx, .-n562_call_bx
                        .type            n563_var_ref_bx, @function
n563_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 144]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx;         jmp   n564_var_ref_α
                        .size            n563_var_ref_bx, .-n563_var_ref_bx
                        .type            n564_var_ref_bx, @function
n564_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n564_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 5776], rax
                        mov              qword ptr [rbp + 5784], rdx;         jmp   n565_call_α
                        .size            n564_var_ref_bx, .-n564_var_ref_bx
                        .type            n565_call_bx, @function
n565_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n565_call_α:            mov              r11, 245
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
                                                                              jmp   n566_var_ref_α
n565_call_β:            mov              r11, 245;                            jmp   top$2F16_step
                        .size            n565_call_bx, .-n565_call_bx
                        .type            n566_var_ref_bx, @function
n566_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 160]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx;         jmp   n567_var_ref_α
                        .size            n566_var_ref_bx, .-n566_var_ref_bx
                        .type            n567_var_ref_bx, @function
n567_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx;         jmp   n568_call_α
                        .size            n567_var_ref_bx, .-n567_var_ref_bx
                        .type            n568_call_bx, @function
n568_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n568_call_α:            mov              r11, 248
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
                                                                              jmp   n569_var_ref_α
n568_call_β:            mov              r11, 248;                            jmp   top$2F16_step
                        .size            n568_call_bx, .-n568_call_bx
                        .type            n569_var_ref_bx, @function
n569_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx;         jmp   n570_var_ref_α
                        .size            n569_var_ref_bx, .-n569_var_ref_bx
                        .type            n570_var_ref_bx, @function
n570_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:         mov              r11, 250
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx;         jmp   n571_call_α
                        .size            n570_var_ref_bx, .-n570_var_ref_bx
                        .type            n571_call_bx, @function
n571_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n571_call_α:            mov              r11, 251
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
                                                                              jmp   n572_var_ref_α
n571_call_β:            mov              r11, 251;                            jmp   top$2F16_step
                        .size            n571_call_bx, .-n571_call_bx
                        .type            n572_var_ref_bx, @function
n572_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 192]
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx;         jmp   n573_var_ref_α
                        .size            n572_var_ref_bx, .-n572_var_ref_bx
                        .type            n573_var_ref_bx, @function
n573_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx;         jmp   n574_call_α
                        .size            n573_var_ref_bx, .-n573_var_ref_bx
                        .type            n574_call_bx, @function
n574_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            mov              r11, 254
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
                                                                              jmp   n575_var_ref_α
n574_call_β:            mov              r11, 254;                            jmp   top$2F16_step
                        .size            n574_call_bx, .-n574_call_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx;         jmp   n576_var_ref_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_var_ref_bx, @function
n576_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n577_call_α
                        .size            n576_var_ref_bx, .-n576_var_ref_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 257
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
                                                                              jmp   n578_var_ref_α
n577_call_β:            mov              r11, 257;                            jmp   top$2F16_step
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 258
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 224]
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx;         jmp   n579_var_ref_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_var_ref_bx, @function
n579_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_var_ref_α:         mov              r11, 259
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n580_call_α
                        .size            n579_var_ref_bx, .-n579_var_ref_bx
                        .type            n580_call_bx, @function
n580_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            mov              r11, 260
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
                                                                              jmp   n581_var_ref_α
n580_call_β:            mov              r11, 260;                            jmp   top$2F16_step
                        .size            n580_call_bx, .-n580_call_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 261
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 240]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx;         jmp   n582_var_ref_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_var_ref_bx, @function
n582_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx;         jmp   n583_call_α
                        .size            n582_var_ref_bx, .-n582_var_ref_bx
                        .type            n583_call_bx, @function
n583_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            mov              r11, 263
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
                                                                              jmp   n584_var_ref_α
n583_call_β:            mov              r11, 263;                            jmp   top$2F16_step
                        .size            n583_call_bx, .-n583_call_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 264
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx;         jmp   n585_var_ref_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_var_ref_bx, @function
n585_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx;         jmp   n586_call_α
                        .size            n585_var_ref_bx, .-n585_var_ref_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 266
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
                                                                              jmp   n587_var_ref_α
n586_call_β:            mov              r11, 266;                            jmp   top$2F16_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_var_ref_bx, @function
n587_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx;         jmp   n588_call_proc_staged_α
                        .size            n587_var_ref_bx, .-n587_var_ref_bx
                        .type            n588_call_proc_staged_bx, @function
n588_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_call_proc_staged_α:
                        mov              r11, 268
                        mov              qword ptr [rbp + 4976], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_795_200
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_795_201
.Lcall_proc_staged_α_795_200:
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
.Lcall_proc_staged_α_795_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_795_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_795_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_795_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_795_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_795_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_795_3:
                        mov              qword ptr [rbp + 4976], rax
                        mov              qword ptr [rbp + 4984], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_795_21
                        add              rsp, 32
.Lcall_proc_staged_α_795_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_795_2
.Lcall_proc_staged_α_795_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4976], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_795_2
.Lcall_proc_staged_α_795_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_795_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   top$2F16_step
.Lcall_proc_staged_α_795_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_795_29
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
.Lcall_proc_staged_α_795_29:
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n589_var_ref_α
n588_call_proc_staged_β:
                        mov              r11, 268
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_795_22
                        mov              rax, qword ptr [rbp + 4976]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_795_22
                        mov              rcx, qword ptr [rbp + 4984]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_795_22:
                                                                              jmp   top$2F16_step
.Lcall_proc_staged_α_795_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    top$2F16_step
                                                                              jmp   n589_var_ref_α
.Lcall_proc_staged_α_795_0:
                        .quad            .Lcall_proc_staged_α_795_0_s
.Lcall_proc_staged_α_795_0_s:
                        .string          "odd/1"
                        .size            n588_call_proc_staged_bx, .-n588_call_proc_staged_bx
                        .type            n589_var_ref_bx, @function
n589_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx;         jmp   n590_call_proc_staged_α
                        .size            n589_var_ref_bx, .-n589_var_ref_bx
                        .type            n590_call_proc_staged_bx, @function
n590_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_call_proc_staged_α:
                        mov              r11, 270
                        mov              qword ptr [rbp + 4896], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_799_200
                        mov              rax, qword ptr [rbp + 4928]
                        mov              rdx, qword ptr [rbp + 4936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_799_201
.Lcall_proc_staged_α_799_200:
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
.Lcall_proc_staged_α_799_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_799_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_799_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_799_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_799_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_799_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_799_3:
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_799_21
                        add              rsp, 32
.Lcall_proc_staged_α_799_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_799_2
.Lcall_proc_staged_α_799_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4896], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_799_2
.Lcall_proc_staged_α_799_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_799_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n588_call_proc_staged_β
.Lcall_proc_staged_α_799_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_799_29
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
.Lcall_proc_staged_α_799_29:
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n588_call_proc_staged_β
                                                                              jmp   n591_var_ref_α
n590_call_proc_staged_β:
                        mov              r11, 270
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_799_22
                        mov              rax, qword ptr [rbp + 4896]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_799_22
                        mov              rcx, qword ptr [rbp + 4904]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_799_22:
                                                                              jmp   n588_call_proc_staged_β
.Lcall_proc_staged_α_799_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx
                        cmp              al, 104;                             je    n588_call_proc_staged_β
                                                                              jmp   n591_var_ref_α
.Lcall_proc_staged_α_799_0:
                        .quad            .Lcall_proc_staged_α_799_0_s
.Lcall_proc_staged_α_799_0_s:
                        .string          "even/1"
                        .size            n590_call_proc_staged_bx, .-n590_call_proc_staged_bx
                        .type            n591_var_ref_bx, @function
n591_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:         mov              r11, 271
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx;         jmp   n592_call_proc_staged_α
                        .size            n591_var_ref_bx, .-n591_var_ref_bx
                        .type            n592_call_proc_staged_bx, @function
n592_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_call_proc_staged_α:
                        mov              r11, 272
                        mov              qword ptr [rbp + 4816], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_803_200
                        mov              rax, qword ptr [rbp + 4848]
                        mov              rdx, qword ptr [rbp + 4856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_803_201
.Lcall_proc_staged_α_803_200:
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
.Lcall_proc_staged_α_803_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_803_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_803_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_803_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_803_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_803_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_803_3:
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_803_21
                        add              rsp, 32
.Lcall_proc_staged_α_803_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_803_2
.Lcall_proc_staged_α_803_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4816], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_803_2
.Lcall_proc_staged_α_803_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_803_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n590_call_proc_staged_β
.Lcall_proc_staged_α_803_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_803_29
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
.Lcall_proc_staged_α_803_29:
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n590_call_proc_staged_β
                                                                              jmp   n593_var_ref_α
n592_call_proc_staged_β:
                        mov              r11, 272
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_803_22
                        mov              rax, qword ptr [rbp + 4816]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_803_22
                        mov              rcx, qword ptr [rbp + 4824]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_803_22:
                                                                              jmp   n590_call_proc_staged_β
.Lcall_proc_staged_α_803_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    n590_call_proc_staged_β
                                                                              jmp   n593_var_ref_α
.Lcall_proc_staged_α_803_0:
                        .quad            .Lcall_proc_staged_α_803_0_s
.Lcall_proc_staged_α_803_0_s:
                        .string          "even/1"
                        .size            n592_call_proc_staged_bx, .-n592_call_proc_staged_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n594_call_proc_staged_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_call_proc_staged_bx, @function
n594_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_proc_staged_α:
                        mov              r11, 274
                        mov              qword ptr [rbp + 4736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_807_200
                        mov              rax, qword ptr [rbp + 4768]
                        mov              rdx, qword ptr [rbp + 4776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_807_201
.Lcall_proc_staged_α_807_200:
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
.Lcall_proc_staged_α_807_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_807_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_807_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_807_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_807_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_807_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_807_3:
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_807_21
                        add              rsp, 32
.Lcall_proc_staged_α_807_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_807_2
.Lcall_proc_staged_α_807_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_807_2
.Lcall_proc_staged_α_807_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_807_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n592_call_proc_staged_β
.Lcall_proc_staged_α_807_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_807_29
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
.Lcall_proc_staged_α_807_29:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n592_call_proc_staged_β
                                                                              jmp   n595_lit_string_α
n594_call_proc_staged_β:
                        mov              r11, 274
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_807_22
                        mov              rax, qword ptr [rbp + 4736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_807_22
                        mov              rcx, qword ptr [rbp + 4744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_807_22:
                                                                              jmp   n592_call_proc_staged_β
.Lcall_proc_staged_α_807_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    n592_call_proc_staged_β
                                                                              jmp   n595_lit_string_α
.Lcall_proc_staged_α_807_0:
                        .quad            .Lcall_proc_staged_α_807_0_s
.Lcall_proc_staged_α_807_0_s:
                        .string          "even/1"
                        .size            n594_call_proc_staged_bx, .-n594_call_proc_staged_bx
                        .type            n595_lit_string_bx, @function
n595_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rbp + 4208], 2            # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_808_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n596_var_ref_α
.Llit_string_α_808_0:   .quad            .Llit_string_α_808_0_s
.Llit_string_α_808_0_s: .string          "."
                        .size            n595_lit_string_bx, .-n595_lit_string_bx
                        .type            n596_var_ref_bx, @function
n596_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n597_lit_string_α
                        .size            n596_var_ref_bx, .-n596_var_ref_bx
                        .type            n597_lit_string_bx, @function
n597_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:      mov              r11, 277
                        mov              qword ptr [rbp + 4096], 2            # result
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_811_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n598_var_ref_α
.Llit_string_α_811_0:   .quad            .Llit_string_α_811_0_s
.Llit_string_α_811_0_s: .string          "."
                        .size            n597_lit_string_bx, .-n597_lit_string_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx;         jmp   n599_lit_string_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_lit_string_bx, @function
n599_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rbp + 3984], 2            # result
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_814_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n600_var_ref_α
.Llit_string_α_814_0:   .quad            .Llit_string_α_814_0_s
.Llit_string_α_814_0_s: .string          "."
                        .size            n599_lit_string_bx, .-n599_lit_string_bx
                        .type            n600_var_ref_bx, @function
n600_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 280
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx;         jmp   n601_lit_string_α
                        .size            n600_var_ref_bx, .-n600_var_ref_bx
                        .type            n601_lit_string_bx, @function
n601_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rbp + 3872], 2            # result
                        mov              dword ptr [rbp + 3876], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_817_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n602_call_α
.Llit_string_α_817_0:   .quad            .Llit_string_α_817_0_s
.Llit_string_α_817_0_s: .string          "[]"
                        .size            n601_lit_string_bx, .-n601_lit_string_bx
                        .type            n602_call_bx, @function
n602_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_call_α:            mov              r11, 282
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
                                                                              jmp   n603_call_α
n602_call_β:            mov              r11, 282;                            jmp   top$2F16_ω
                        .size            n602_call_bx, .-n602_call_bx
                        .type            n603_call_bx, @function
n603_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_call_α:            mov              r11, 283
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
                                                                              jmp   n604_call_α
n603_call_β:            mov              r11, 283;                            jmp   top$2F16_ω
                        .size            n603_call_bx, .-n603_call_bx
                        .type            n604_call_bx, @function
n604_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_call_α:            mov              r11, 284
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
                                                                              jmp   n605_var_ref_α
n604_call_β:            mov              r11, 284;                            jmp   top$2F16_step
                        .size            n604_call_bx, .-n604_call_bx
                        .type            n605_var_ref_bx, @function
n605_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 285
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6848]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx;         jmp   n606_lit_string_α
                        .size            n605_var_ref_bx, .-n605_var_ref_bx
                        .type            n606_lit_string_bx, @function
n606_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_823_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n607_var_ref_α
.Llit_string_α_823_0:   .quad            .Llit_string_α_823_0_s
.Llit_string_α_823_0_s: .string          "."
                        .size            n606_lit_string_bx, .-n606_lit_string_bx
                        .type            n607_var_ref_bx, @function
n607_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n608_lit_string_α
                        .size            n607_var_ref_bx, .-n607_var_ref_bx
                        .type            n608_lit_string_bx, @function
n608_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:      mov              r11, 288
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_826_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n609_var_ref_α
.Llit_string_α_826_0:   .quad            .Llit_string_α_826_0_s
.Llit_string_α_826_0_s: .string          "."
                        .size            n608_lit_string_bx, .-n608_lit_string_bx
                        .type            n609_var_ref_bx, @function
n609_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:         mov              r11, 289
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n610_lit_string_α
                        .size            n609_var_ref_bx, .-n609_var_ref_bx
                        .type            n610_lit_string_bx, @function
n610_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n610_lit_string_α:      mov              r11, 290
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_829_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n611_var_ref_α
.Llit_string_α_829_0:   .quad            .Llit_string_α_829_0_s
.Llit_string_α_829_0_s: .string          "."
                        .size            n610_lit_string_bx, .-n610_lit_string_bx
                        .type            n611_var_ref_bx, @function
n611_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx;         jmp   n612_lit_string_α
                        .size            n611_var_ref_bx, .-n611_var_ref_bx
                        .type            n612_lit_string_bx, @function
n612_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n613_var_ref_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "."
                        .size            n612_lit_string_bx, .-n612_lit_string_bx
                        .type            n613_var_ref_bx, @function
n613_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx;         jmp   n614_var_ref_α
                        .size            n613_var_ref_bx, .-n613_var_ref_bx
                        .type            n614_var_ref_bx, @function
n614_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:         mov              r11, 294
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n615_call_α
                        .size            n614_var_ref_bx, .-n614_var_ref_bx
                        .type            n615_call_bx, @function
n615_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n615_call_α:            mov              r11, 295
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
                                                                              jmp   n616_call_α
n615_call_β:            mov              r11, 295;                            jmp   top$2F16_ω
                        .size            n615_call_bx, .-n615_call_bx
                        .type            n616_call_bx, @function
n616_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n616_call_α:            mov              r11, 296
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
                                                                              jmp   n617_call_α
n616_call_β:            mov              r11, 296;                            jmp   top$2F16_ω
                        .size            n616_call_bx, .-n616_call_bx
                        .type            n617_call_bx, @function
n617_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n617_call_α:            mov              r11, 297
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
                                                                              jmp   n618_call_α
n617_call_β:            mov              r11, 297;                            jmp   top$2F16_ω
                        .size            n617_call_bx, .-n617_call_bx
                        .type            n618_call_bx, @function
n618_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n618_call_α:            mov              r11, 298
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
                                                                              jmp   n619_call_proc_staged_α
n618_call_β:            mov              r11, 298;                            jmp   top$2F16_step
                        .size            n618_call_bx, .-n618_call_bx
                        .type            n619_call_proc_staged_bx, @function
n619_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n619_call_proc_staged_α:
                        mov              r11, 299
                        mov              qword ptr [rbp + 3840], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_842_200
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_842_201
.Lcall_proc_staged_α_842_200:
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
.Lcall_proc_staged_α_842_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_842_202
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_842_203
.Lcall_proc_staged_α_842_202:
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
.Lcall_proc_staged_α_842_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_842_204
                        mov              rax, qword ptr [rbp + 4608]
                        mov              rdx, qword ptr [rbp + 4616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_842_205
.Lcall_proc_staged_α_842_204:
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
.Lcall_proc_staged_α_842_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_842_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_842_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_842_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_842_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_842_3:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_842_21
                        add              rsp, 32
.Lcall_proc_staged_α_842_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3840], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_842_2
.Lcall_proc_staged_α_842_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_842_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_call_proc_staged_β
.Lcall_proc_staged_α_842_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_842_29
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
.Lcall_proc_staged_α_842_29:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n594_call_proc_staged_β
                                                                              jmp   n620_var_ref_α
n619_call_proc_staged_β:
                        mov              r11, 299
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_842_22
                        mov              rax, qword ptr [rbp + 3840]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_842_22
                        mov              rcx, qword ptr [rbp + 3848]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_842_22:
                                                                              jmp   n594_call_proc_staged_β
.Lcall_proc_staged_α_842_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n594_call_proc_staged_β
                                                                              jmp   n620_var_ref_α
.Lcall_proc_staged_α_842_0:
                        .quad            .Lcall_proc_staged_α_842_0_s
.Lcall_proc_staged_α_842_0_s:
                        .string          "mult/3"
                        .size            n619_call_proc_staged_bx, .-n619_call_proc_staged_bx
                        .type            n620_var_ref_bx, @function
n620_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:         mov              r11, 300
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n621_call_proc_staged_α
                        .size            n620_var_ref_bx, .-n620_var_ref_bx
                        .type            n621_call_proc_staged_bx, @function
n621_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n621_call_proc_staged_α:
                        mov              r11, 301
                        mov              qword ptr [rbp + 3728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_846_200
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_846_201
.Lcall_proc_staged_α_846_200:
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
.Lcall_proc_staged_α_846_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_846_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_846_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_846_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_846_3:
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_846_21
                        add              rsp, 32
.Lcall_proc_staged_α_846_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_846_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n619_call_proc_staged_β
.Lcall_proc_staged_α_846_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_846_29
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
.Lcall_proc_staged_α_846_29:
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n619_call_proc_staged_β
                                                                              jmp   n622_var_ref_α
n621_call_proc_staged_β:
                        mov              r11, 301
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_846_22
                        mov              rax, qword ptr [rbp + 3728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_846_22
                        mov              rcx, qword ptr [rbp + 3736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_846_22:
                                                                              jmp   n619_call_proc_staged_β
.Lcall_proc_staged_α_846_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    n619_call_proc_staged_β
                                                                              jmp   n622_var_ref_α
.Lcall_proc_staged_α_846_0:
                        .quad            .Lcall_proc_staged_α_846_0_s
.Lcall_proc_staged_α_846_0_s:
                        .string          "lefteven/1"
                        .size            n621_call_proc_staged_bx, .-n621_call_proc_staged_bx
                        .type            n622_var_ref_bx, @function
n622_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n623_call_proc_staged_α
                        .size            n622_var_ref_bx, .-n622_var_ref_bx
                        .type            n623_call_proc_staged_bx, @function
n623_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n623_call_proc_staged_α:
                        mov              r11, 303
                        mov              qword ptr [rbp + 3648], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_850_200
                        mov              rax, qword ptr [rbp + 3680]
                        mov              rdx, qword ptr [rbp + 3688]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_850_201
.Lcall_proc_staged_α_850_200:
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
.Lcall_proc_staged_α_850_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_850_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_850_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_850_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_850_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_850_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_850_3:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_850_21
                        add              rsp, 32
.Lcall_proc_staged_α_850_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_850_2
.Lcall_proc_staged_α_850_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3648], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_850_2
.Lcall_proc_staged_α_850_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_850_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n621_call_proc_staged_β
.Lcall_proc_staged_α_850_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_850_29
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
.Lcall_proc_staged_α_850_29:
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n624_var_ref_α
n623_call_proc_staged_β:
                        mov              r11, 303
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_850_22
                        mov              rax, qword ptr [rbp + 3648]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_850_22
                        mov              rcx, qword ptr [rbp + 3656]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_850_22:
                                                                              jmp   n621_call_proc_staged_β
.Lcall_proc_staged_α_850_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              al, 104;                             je    n621_call_proc_staged_β
                                                                              jmp   n624_var_ref_α
.Lcall_proc_staged_α_850_0:
                        .quad            .Lcall_proc_staged_α_850_0_s
.Lcall_proc_staged_α_850_0_s:
                        .string          "odd/1"
                        .size            n623_call_proc_staged_bx, .-n623_call_proc_staged_bx
                        .type            n624_var_ref_bx, @function
n624_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 304
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n625_call_proc_staged_α
                        .size            n624_var_ref_bx, .-n624_var_ref_bx
                        .type            n625_call_proc_staged_bx, @function
n625_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n625_call_proc_staged_α:
                        mov              r11, 305
                        mov              qword ptr [rbp + 3568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_854_200
                        mov              rax, qword ptr [rbp + 3600]
                        mov              rdx, qword ptr [rbp + 3608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_854_201
.Lcall_proc_staged_α_854_200:
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
.Lcall_proc_staged_α_854_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_854_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_854_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_854_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_854_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_854_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_854_3:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_854_21
                        add              rsp, 32
.Lcall_proc_staged_α_854_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_854_2
.Lcall_proc_staged_α_854_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3568], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_854_2
.Lcall_proc_staged_α_854_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_854_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n623_call_proc_staged_β
.Lcall_proc_staged_α_854_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_854_29
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
.Lcall_proc_staged_α_854_29:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n623_call_proc_staged_β
                                                                              jmp   n626_var_ref_α
n625_call_proc_staged_β:
                        mov              r11, 305
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_854_22
                        mov              rax, qword ptr [rbp + 3568]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_854_22
                        mov              rcx, qword ptr [rbp + 3576]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_854_22:
                                                                              jmp   n623_call_proc_staged_β
.Lcall_proc_staged_α_854_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              al, 104;                             je    n623_call_proc_staged_β
                                                                              jmp   n626_var_ref_α
.Lcall_proc_staged_α_854_0:
                        .quad            .Lcall_proc_staged_α_854_0_s
.Lcall_proc_staged_α_854_0_s:
                        .string          "even/1"
                        .size            n625_call_proc_staged_bx, .-n625_call_proc_staged_bx
                        .type            n626_var_ref_bx, @function
n626_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n627_call_proc_staged_α
                        .size            n626_var_ref_bx, .-n626_var_ref_bx
                        .type            n627_call_proc_staged_bx, @function
n627_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        mov              r11, 307
                        mov              qword ptr [rbp + 3488], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_858_200
                        mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_858_201
.Lcall_proc_staged_α_858_200:
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
.Lcall_proc_staged_α_858_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_858_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_858_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_858_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_858_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_858_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_858_3:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_858_21
                        add              rsp, 32
.Lcall_proc_staged_α_858_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_858_2
.Lcall_proc_staged_α_858_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3488], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_858_2
.Lcall_proc_staged_α_858_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_858_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_call_proc_staged_β
.Lcall_proc_staged_α_858_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_858_29
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
.Lcall_proc_staged_α_858_29:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n625_call_proc_staged_β
                                                                              jmp   n628_var_ref_α
n627_call_proc_staged_β:
                        mov              r11, 307
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_858_22
                        mov              rax, qword ptr [rbp + 3488]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_858_22
                        mov              rcx, qword ptr [rbp + 3496]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_858_22:
                                                                              jmp   n625_call_proc_staged_β
.Lcall_proc_staged_α_858_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              al, 104;                             je    n625_call_proc_staged_β
                                                                              jmp   n628_var_ref_α
.Lcall_proc_staged_α_858_0:
                        .quad            .Lcall_proc_staged_α_858_0_s
.Lcall_proc_staged_α_858_0_s:
                        .string          "even/1"
                        .size            n627_call_proc_staged_bx, .-n627_call_proc_staged_bx
                        .type            n628_var_ref_bx, @function
n628_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6832]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n629_call_proc_staged_α
                        .size            n628_var_ref_bx, .-n628_var_ref_bx
                        .type            n629_call_proc_staged_bx, @function
n629_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n629_call_proc_staged_α:
                        mov              r11, 309
                        mov              qword ptr [rbp + 3408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_862_200
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_862_201
.Lcall_proc_staged_α_862_200:
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
.Lcall_proc_staged_α_862_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_862_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_862_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_862_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_862_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_862_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_862_3:
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_862_21
                        add              rsp, 32
.Lcall_proc_staged_α_862_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_862_2
.Lcall_proc_staged_α_862_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3408], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_862_2
.Lcall_proc_staged_α_862_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_862_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n627_call_proc_staged_β
.Lcall_proc_staged_α_862_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_862_29
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
.Lcall_proc_staged_α_862_29:
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n627_call_proc_staged_β
                                                                              jmp   n630_var_ref_α
n629_call_proc_staged_β:
                        mov              r11, 309
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_862_22
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_862_22
                        mov              rcx, qword ptr [rbp + 3416]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_862_22:
                                                                              jmp   n627_call_proc_staged_β
.Lcall_proc_staged_α_862_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              al, 104;                             je    n627_call_proc_staged_β
                                                                              jmp   n630_var_ref_α
.Lcall_proc_staged_α_862_0:
                        .quad            .Lcall_proc_staged_α_862_0_s
.Lcall_proc_staged_α_862_0_s:
                        .string          "zero/1"
                        .size            n629_call_proc_staged_bx, .-n629_call_proc_staged_bx
                        .type            n630_var_ref_bx, @function
n630_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:         mov              r11, 310
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n631_call_proc_staged_α
                        .size            n630_var_ref_bx, .-n630_var_ref_bx
                        .type            n631_call_proc_staged_bx, @function
n631_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n631_call_proc_staged_α:
                        mov              r11, 311
                        mov              qword ptr [rbp + 3328], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_866_200
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_866_201
.Lcall_proc_staged_α_866_200:
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
.Lcall_proc_staged_α_866_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_866_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_866_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_866_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_866_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_866_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_866_3:
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_866_21
                        add              rsp, 32
.Lcall_proc_staged_α_866_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_866_2
.Lcall_proc_staged_α_866_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3328], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_866_2
.Lcall_proc_staged_α_866_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_866_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_call_proc_staged_β
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
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
.Lcall_proc_staged_α_866_29:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n629_call_proc_staged_β
                                                                              jmp   n632_lit_string_α
n631_call_proc_staged_β:
                        mov              r11, 311
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_866_22
                        mov              rax, qword ptr [rbp + 3328]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_866_22
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_866_22:
                                                                              jmp   n629_call_proc_staged_β
.Lcall_proc_staged_α_866_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n629_call_proc_staged_β
                                                                              jmp   n632_lit_string_α
.Lcall_proc_staged_α_866_0:
                        .quad            .Lcall_proc_staged_α_866_0_s
.Lcall_proc_staged_α_866_0_s:
                        .string          "lefteven/1"
                        .size            n631_call_proc_staged_bx, .-n631_call_proc_staged_bx
                        .type            n632_lit_string_bx, @function
n632_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_867_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n633_var_ref_α
.Llit_string_α_867_0:   .quad            .Llit_string_α_867_0_s
.Llit_string_α_867_0_s: .string          "."
                        .size            n632_lit_string_bx, .-n632_lit_string_bx
                        .type            n633_var_ref_bx, @function
n633_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n633_var_ref_α:         mov              r11, 313
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n634_lit_string_α
                        .size            n633_var_ref_bx, .-n633_var_ref_bx
                        .type            n634_lit_string_bx, @function
n634_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rbp + 2800], 2            # result
                        mov              dword ptr [rbp + 2804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_870_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n635_var_ref_α
.Llit_string_α_870_0:   .quad            .Llit_string_α_870_0_s
.Llit_string_α_870_0_s: .string          "."
                        .size            n634_lit_string_bx, .-n634_lit_string_bx
                        .type            n635_var_ref_bx, @function
n635_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_var_ref_α:         mov              r11, 315
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6784]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n636_lit_string_α
                        .size            n635_var_ref_bx, .-n635_var_ref_bx
                        .type            n636_lit_string_bx, @function
n636_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rbp + 2688], 2            # result
                        mov              dword ptr [rbp + 2692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n637_var_ref_α
.Llit_string_α_873_0:   .quad            .Llit_string_α_873_0_s
.Llit_string_α_873_0_s: .string          "."
                        .size            n636_lit_string_bx, .-n636_lit_string_bx
                        .type            n637_var_ref_bx, @function
n637_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6768]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n638_lit_string_α
                        .size            n637_var_ref_bx, .-n637_var_ref_bx
                        .type            n638_lit_string_bx, @function
n638_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_876_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n639_call_α
.Llit_string_α_876_0:   .quad            .Llit_string_α_876_0_s
.Llit_string_α_876_0_s: .string          "[]"
                        .size            n638_lit_string_bx, .-n638_lit_string_bx
                        .type            n639_call_bx, @function
n639_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_α:            mov              r11, 319
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
                                                                              jmp   n640_call_α
n639_call_β:            mov              r11, 319;                            jmp   top$2F16_ω
                        .size            n639_call_bx, .-n639_call_bx
                        .type            n640_call_bx, @function
n640_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n640_call_α:            mov              r11, 320
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
                                                                              jmp   n641_call_α
n640_call_β:            mov              r11, 320;                            jmp   top$2F16_ω
                        .size            n640_call_bx, .-n640_call_bx
                        .type            n641_call_bx, @function
n641_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n641_call_α:            mov              r11, 321
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
                                                                              jmp   n642_var_ref_α
n641_call_β:            mov              r11, 321;                            jmp   top$2F16_step
                        .size            n641_call_bx, .-n641_call_bx
                        .type            n642_var_ref_bx, @function
n642_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n642_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6816]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n643_lit_string_α
                        .size            n642_var_ref_bx, .-n642_var_ref_bx
                        .type            n643_lit_string_bx, @function
n643_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_882_0]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n644_var_ref_α
.Llit_string_α_882_0:   .quad            .Llit_string_α_882_0_s
.Llit_string_α_882_0_s: .string          "."
                        .size            n643_lit_string_bx, .-n643_lit_string_bx
                        .type            n644_var_ref_bx, @function
n644_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:         mov              r11, 324
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n645_lit_string_α
                        .size            n644_var_ref_bx, .-n644_var_ref_bx
                        .type            n645_lit_string_bx, @function
n645_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_885_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n646_var_ref_α
.Llit_string_α_885_0:   .quad            .Llit_string_α_885_0_s
.Llit_string_α_885_0_s: .string          "."
                        .size            n645_lit_string_bx, .-n645_lit_string_bx
                        .type            n646_var_ref_bx, @function
n646_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx;         jmp   n647_lit_string_α
                        .size            n646_var_ref_bx, .-n646_var_ref_bx
                        .type            n647_lit_string_bx, @function
n647_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_888_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n648_var_ref_α
.Llit_string_α_888_0:   .quad            .Llit_string_α_888_0_s
.Llit_string_α_888_0_s: .string          "."
                        .size            n647_lit_string_bx, .-n647_lit_string_bx
                        .type            n648_var_ref_bx, @function
n648_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n649_var_ref_α
                        .size            n648_var_ref_bx, .-n648_var_ref_bx
                        .type            n649_var_ref_bx, @function
n649_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_var_ref_α:         mov              r11, 329
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n650_call_α
                        .size            n649_var_ref_bx, .-n649_var_ref_bx
                        .type            n650_call_bx, @function
n650_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_call_α:            mov              r11, 330
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
                                                                              jmp   n651_call_α
n650_call_β:            mov              r11, 330;                            jmp   top$2F16_ω
                        .size            n650_call_bx, .-n650_call_bx
                        .type            n651_call_bx, @function
n651_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_α:            mov              r11, 331
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
                                                                              jmp   n652_call_α
n651_call_β:            mov              r11, 331;                            jmp   top$2F16_ω
                        .size            n651_call_bx, .-n651_call_bx
                        .type            n652_call_bx, @function
n652_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n652_call_α:            mov              r11, 332
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
                                                                              jmp   n653_call_proc_staged_α
n652_call_β:            mov              r11, 332;                            jmp   top$2F16_step
                        .size            n652_call_bx, .-n652_call_bx
                        .type            n653_call_proc_staged_bx, @function
n653_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n653_call_proc_staged_α:
                        mov              r11, 333
                        mov              qword ptr [rbp + 2544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_897_200
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_897_201
.Lcall_proc_staged_α_897_200:
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
.Lcall_proc_staged_α_897_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_897_202
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_897_203
.Lcall_proc_staged_α_897_202:
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
.Lcall_proc_staged_α_897_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_897_204
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_897_205
.Lcall_proc_staged_α_897_204:
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
.Lcall_proc_staged_α_897_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_897_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_897_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_897_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_897_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_897_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_897_3:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_897_21
                        add              rsp, 32
.Lcall_proc_staged_α_897_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_897_2
.Lcall_proc_staged_α_897_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_897_2
.Lcall_proc_staged_α_897_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_897_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n631_call_proc_staged_β
.Lcall_proc_staged_α_897_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_897_29
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
.Lcall_proc_staged_α_897_29:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n631_call_proc_staged_β
                                                                              jmp   n654_var_ref_α
n653_call_proc_staged_β:
                        mov              r11, 333
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_897_22
                        mov              rax, qword ptr [rbp + 2544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_897_22
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_897_22:
                                                                              jmp   n631_call_proc_staged_β
.Lcall_proc_staged_α_897_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    n631_call_proc_staged_β
                                                                              jmp   n654_var_ref_α
.Lcall_proc_staged_α_897_0:
                        .quad            .Lcall_proc_staged_α_897_0_s
.Lcall_proc_staged_α_897_0_s:
                        .string          "mult/3"
                        .size            n653_call_proc_staged_bx, .-n653_call_proc_staged_bx
                        .type            n654_var_ref_bx, @function
n654_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:         mov              r11, 334
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n655_call_proc_staged_α
                        .size            n654_var_ref_bx, .-n654_var_ref_bx
                        .type            n655_call_proc_staged_bx, @function
n655_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n655_call_proc_staged_α:
                        mov              r11, 335
                        mov              qword ptr [rbp + 2432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_901_200
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_901_201
.Lcall_proc_staged_α_901_200:
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
.Lcall_proc_staged_α_901_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_901_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_901_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_901_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_901_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_901_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_901_3:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_901_21
                        add              rsp, 32
.Lcall_proc_staged_α_901_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_901_2
.Lcall_proc_staged_α_901_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2432], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_901_2
.Lcall_proc_staged_α_901_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_901_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n653_call_proc_staged_β
.Lcall_proc_staged_α_901_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_901_29
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
.Lcall_proc_staged_α_901_29:
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n653_call_proc_staged_β
                                                                              jmp   n656_var_ref_α
n655_call_proc_staged_β:
                        mov              r11, 335
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_901_22
                        mov              rax, qword ptr [rbp + 2432]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_901_22
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_901_22:
                                                                              jmp   n653_call_proc_staged_β
.Lcall_proc_staged_α_901_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              al, 104;                             je    n653_call_proc_staged_β
                                                                              jmp   n656_var_ref_α
.Lcall_proc_staged_α_901_0:
                        .quad            .Lcall_proc_staged_α_901_0_s
.Lcall_proc_staged_α_901_0_s:
                        .string          "lefteven/1"
                        .size            n655_call_proc_staged_bx, .-n655_call_proc_staged_bx
                        .type            n656_var_ref_bx, @function
n656_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n656_var_ref_α:         mov              r11, 336
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n657_call_proc_staged_α
                        .size            n656_var_ref_bx, .-n656_var_ref_bx
                        .type            n657_call_proc_staged_bx, @function
n657_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n657_call_proc_staged_α:
                        mov              r11, 337
                        mov              qword ptr [rbp + 2352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_905_200
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_905_201
.Lcall_proc_staged_α_905_200:
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
.Lcall_proc_staged_α_905_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_905_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_905_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_905_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_905_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_905_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_905_3:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_905_21
                        add              rsp, 32
.Lcall_proc_staged_α_905_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_905_2
.Lcall_proc_staged_α_905_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_905_2
.Lcall_proc_staged_α_905_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_905_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n655_call_proc_staged_β
.Lcall_proc_staged_α_905_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_905_29
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
.Lcall_proc_staged_α_905_29:
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n655_call_proc_staged_β
                                                                              jmp   n658_var_ref_α
n657_call_proc_staged_β:
                        mov              r11, 337
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_905_22
                        mov              rax, qword ptr [rbp + 2352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_905_22
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_905_22:
                                                                              jmp   n655_call_proc_staged_β
.Lcall_proc_staged_α_905_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    n655_call_proc_staged_β
                                                                              jmp   n658_var_ref_α
.Lcall_proc_staged_α_905_0:
                        .quad            .Lcall_proc_staged_α_905_0_s
.Lcall_proc_staged_α_905_0_s:
                        .string          "odd/1"
                        .size            n657_call_proc_staged_bx, .-n657_call_proc_staged_bx
                        .type            n658_var_ref_bx, @function
n658_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n658_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n659_call_proc_staged_α
                        .size            n658_var_ref_bx, .-n658_var_ref_bx
                        .type            n659_call_proc_staged_bx, @function
n659_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n659_call_proc_staged_α:
                        mov              r11, 339
                        mov              qword ptr [rbp + 2272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_909_200
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_909_201
.Lcall_proc_staged_α_909_200:
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
.Lcall_proc_staged_α_909_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_909_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_909_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_909_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_909_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_909_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_909_3:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_909_21
                        add              rsp, 32
.Lcall_proc_staged_α_909_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_909_2
.Lcall_proc_staged_α_909_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2272], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_909_2
.Lcall_proc_staged_α_909_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_909_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n657_call_proc_staged_β
.Lcall_proc_staged_α_909_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_909_29
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
.Lcall_proc_staged_α_909_29:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n657_call_proc_staged_β
                                                                              jmp   n660_var_ref_α
n659_call_proc_staged_β:
                        mov              r11, 339
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_909_22
                        mov              rax, qword ptr [rbp + 2272]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_909_22
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_909_22:
                                                                              jmp   n657_call_proc_staged_β
.Lcall_proc_staged_α_909_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    n657_call_proc_staged_β
                                                                              jmp   n660_var_ref_α
.Lcall_proc_staged_α_909_0:
                        .quad            .Lcall_proc_staged_α_909_0_s
.Lcall_proc_staged_α_909_0_s:
                        .string          "even/1"
                        .size            n659_call_proc_staged_bx, .-n659_call_proc_staged_bx
                        .type            n660_var_ref_bx, @function
n660_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n660_var_ref_α:         mov              r11, 340
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6752]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n661_call_proc_staged_α
                        .size            n660_var_ref_bx, .-n660_var_ref_bx
                        .type            n661_call_proc_staged_bx, @function
n661_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n661_call_proc_staged_α:
                        mov              r11, 341
                        mov              qword ptr [rbp + 2192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_913_200
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_913_201
.Lcall_proc_staged_α_913_200:
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
.Lcall_proc_staged_α_913_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_913_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_913_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_913_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_913_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_913_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_913_3:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_913_21
                        add              rsp, 32
.Lcall_proc_staged_α_913_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_913_2
.Lcall_proc_staged_α_913_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2192], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_913_2
.Lcall_proc_staged_α_913_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_913_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n659_call_proc_staged_β
.Lcall_proc_staged_α_913_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_913_29
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
.Lcall_proc_staged_α_913_29:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n659_call_proc_staged_β
                                                                              jmp   n662_lit_string_α
n661_call_proc_staged_β:
                        mov              r11, 341
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_913_22
                        mov              rax, qword ptr [rbp + 2192]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_913_22
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_913_22:
                                                                              jmp   n659_call_proc_staged_β
.Lcall_proc_staged_α_913_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n659_call_proc_staged_β
                                                                              jmp   n662_lit_string_α
.Lcall_proc_staged_α_913_0:
                        .quad            .Lcall_proc_staged_α_913_0_s
.Lcall_proc_staged_α_913_0_s:
                        .string          "zero/1"
                        .size            n661_call_proc_staged_bx, .-n661_call_proc_staged_bx
                        .type            n662_lit_string_bx, @function
n662_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n663_var_ref_α
.Llit_string_α_914_0:   .quad            .Llit_string_α_914_0_s
.Llit_string_α_914_0_s: .string          "."
                        .size            n662_lit_string_bx, .-n662_lit_string_bx
                        .type            n663_var_ref_bx, @function
n663_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n663_var_ref_α:         mov              r11, 343
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6688]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n664_lit_string_α
                        .size            n663_var_ref_bx, .-n663_var_ref_bx
                        .type            n664_lit_string_bx, @function
n664_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n664_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_917_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n665_var_ref_α
.Llit_string_α_917_0:   .quad            .Llit_string_α_917_0_s
.Llit_string_α_917_0_s: .string          "."
                        .size            n664_lit_string_bx, .-n664_lit_string_bx
                        .type            n665_var_ref_bx, @function
n665_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n665_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6672]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n666_lit_string_α
                        .size            n665_var_ref_bx, .-n665_var_ref_bx
                        .type            n666_lit_string_bx, @function
n666_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n667_var_ref_α
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          "."
                        .size            n666_lit_string_bx, .-n666_lit_string_bx
                        .type            n667_var_ref_bx, @function
n667_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n667_var_ref_α:         mov              r11, 347
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6656]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n668_lit_string_α
                        .size            n667_var_ref_bx, .-n667_var_ref_bx
                        .type            n668_lit_string_bx, @function
n668_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n669_var_ref_α
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "."
                        .size            n668_lit_string_bx, .-n668_lit_string_bx
                        .type            n669_var_ref_bx, @function
n669_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:         mov              r11, 349
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6640]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n670_lit_string_α
                        .size            n669_var_ref_bx, .-n669_var_ref_bx
                        .type            n670_lit_string_bx, @function
n670_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n670_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_926_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n671_call_α
.Llit_string_α_926_0:   .quad            .Llit_string_α_926_0_s
.Llit_string_α_926_0_s: .string          "[]"
                        .size            n670_lit_string_bx, .-n670_lit_string_bx
                        .type            n671_call_bx, @function
n671_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n671_call_α:            mov              r11, 351
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
                                                                              jmp   n672_call_α
n671_call_β:            mov              r11, 351;                            jmp   top$2F16_ω
                        .size            n671_call_bx, .-n671_call_bx
                        .type            n672_call_bx, @function
n672_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n672_call_α:            mov              r11, 352
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
                                                                              jmp   n673_call_α
n672_call_β:            mov              r11, 352;                            jmp   top$2F16_ω
                        .size            n672_call_bx, .-n672_call_bx
                        .type            n673_call_bx, @function
n673_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n673_call_α:            mov              r11, 353
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
                                                                              jmp   n674_call_α
n673_call_β:            mov              r11, 353;                            jmp   top$2F16_ω
                        .size            n673_call_bx, .-n673_call_bx
                        .type            n674_call_bx, @function
n674_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n674_call_α:            mov              r11, 354
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
                                                                              jmp   n675_lit_string_α
n674_call_β:            mov              r11, 354;                            jmp   top$2F16_step
                        .size            n674_call_bx, .-n674_call_bx
                        .type            n675_lit_string_bx, @function
n675_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:      mov              r11, 355
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n676_lit_integer_α
.Llit_string_α_931_0:   .quad            .Llit_string_α_931_0_s
.Llit_string_α_931_0_s: .string          "."
                        .size            n675_lit_string_bx, .-n675_lit_string_bx
                        .type            n676_lit_integer_bx, @function
n676_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_integer_α:     mov              r11, 356
                        mov              qword ptr [rbp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_932_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n677_lit_string_α
.Llit_integer_α_932_0:  .quad            0
                        .size            n676_lit_integer_bx, .-n676_lit_integer_bx
                        .type            n677_lit_string_bx, @function
n677_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n678_var_ref_α
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "."
                        .size            n677_lit_string_bx, .-n677_lit_string_bx
                        .type            n678_var_ref_bx, @function
n678_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n678_var_ref_α:         mov              r11, 358
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6736]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n679_lit_string_α
                        .size            n678_var_ref_bx, .-n678_var_ref_bx
                        .type            n679_lit_string_bx, @function
n679_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_string_α:      mov              r11, 359
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_936_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n680_var_ref_α
.Llit_string_α_936_0:   .quad            .Llit_string_α_936_0_s
.Llit_string_α_936_0_s: .string          "."
                        .size            n679_lit_string_bx, .-n679_lit_string_bx
                        .type            n680_var_ref_bx, @function
n680_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n680_var_ref_α:         mov              r11, 360
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6720]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n681_lit_string_α
                        .size            n680_var_ref_bx, .-n680_var_ref_bx
                        .type            n681_lit_string_bx, @function
n681_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:      mov              r11, 361
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_939_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n682_var_ref_α
.Llit_string_α_939_0:   .quad            .Llit_string_α_939_0_s
.Llit_string_α_939_0_s: .string          "."
                        .size            n681_lit_string_bx, .-n681_lit_string_bx
                        .type            n682_var_ref_bx, @function
n682_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n682_var_ref_α:         mov              r11, 362
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6704]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n683_lit_string_α
                        .size            n682_var_ref_bx, .-n682_var_ref_bx
                        .type            n683_lit_string_bx, @function
n683_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:      mov              r11, 363
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_942_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n684_call_α
.Llit_string_α_942_0:   .quad            .Llit_string_α_942_0_s
.Llit_string_α_942_0_s: .string          "[]"
                        .size            n683_lit_string_bx, .-n683_lit_string_bx
                        .type            n684_call_bx, @function
n684_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_call_α:            mov              r11, 364
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
                                                                              jmp   n685_call_α
n684_call_β:            mov              r11, 364;                            jmp   top$2F16_ω
                        .size            n684_call_bx, .-n684_call_bx
                        .type            n685_call_bx, @function
n685_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_call_α:            mov              r11, 365
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
                                                                              jmp   n686_call_α
n685_call_β:            mov              r11, 365;                            jmp   top$2F16_ω
                        .size            n685_call_bx, .-n685_call_bx
                        .type            n686_call_bx, @function
n686_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_call_α:            mov              r11, 366
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
                                                                              jmp   n687_call_α
n686_call_β:            mov              r11, 366;                            jmp   top$2F16_ω
                        .size            n686_call_bx, .-n686_call_bx
                        .type            n687_call_bx, @function
n687_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_call_α:            mov              r11, 367
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
                                                                              jmp   n688_lit_string_α
n687_call_β:            mov              r11, 367;                            jmp   top$2F16_step
                        .size            n687_call_bx, .-n687_call_bx
                        .type            n688_lit_string_bx, @function
n688_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n689_var_ref_α
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "."
                        .size            n688_lit_string_bx, .-n688_lit_string_bx
                        .type            n689_var_ref_bx, @function
n689_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n690_lit_string_α
                        .size            n689_var_ref_bx, .-n689_var_ref_bx
                        .type            n690_lit_string_bx, @function
n690_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:      mov              r11, 370
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_950_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n691_var_ref_α
.Llit_string_α_950_0:   .quad            .Llit_string_α_950_0_s
.Llit_string_α_950_0_s: .string          "."
                        .size            n690_lit_string_bx, .-n690_lit_string_bx
                        .type            n691_var_ref_bx, @function
n691_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_var_ref_α:         mov              r11, 371
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n692_lit_string_α
                        .size            n691_var_ref_bx, .-n691_var_ref_bx
                        .type            n692_lit_string_bx, @function
n692_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_953_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n693_var_ref_α
.Llit_string_α_953_0:   .quad            .Llit_string_α_953_0_s
.Llit_string_α_953_0_s: .string          "."
                        .size            n692_lit_string_bx, .-n692_lit_string_bx
                        .type            n693_var_ref_bx, @function
n693_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:         mov              r11, 373
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n694_lit_string_α
                        .size            n693_var_ref_bx, .-n693_var_ref_bx
                        .type            n694_lit_string_bx, @function
n694_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:      mov              r11, 374
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_956_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n695_var_ref_α
.Llit_string_α_956_0:   .quad            .Llit_string_α_956_0_s
.Llit_string_α_956_0_s: .string          "."
                        .size            n694_lit_string_bx, .-n694_lit_string_bx
                        .type            n695_var_ref_bx, @function
n695_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n696_var_ref_α
                        .size            n695_var_ref_bx, .-n695_var_ref_bx
                        .type            n696_var_ref_bx, @function
n696_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:         mov              r11, 376
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n697_call_α
                        .size            n696_var_ref_bx, .-n696_var_ref_bx
                        .type            n697_call_bx, @function
n697_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:            mov              r11, 377
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
                                                                              jmp   n698_call_α
n697_call_β:            mov              r11, 377;                            jmp   top$2F16_ω
                        .size            n697_call_bx, .-n697_call_bx
                        .type            n698_call_bx, @function
n698_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            mov              r11, 378
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
                                                                              jmp   n699_call_α
n698_call_β:            mov              r11, 378;                            jmp   top$2F16_ω
                        .size            n698_call_bx, .-n698_call_bx
                        .type            n699_call_bx, @function
n699_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_call_α:            mov              r11, 379
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
                                                                              jmp   n700_call_α
n699_call_β:            mov              r11, 379;                            jmp   top$2F16_ω
                        .size            n699_call_bx, .-n699_call_bx
                        .type            n700_call_bx, @function
n700_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_call_α:            mov              r11, 380
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
                                                                              jmp   n701_call_proc_staged_α
n700_call_β:            mov              r11, 380;                            jmp   top$2F16_step
                        .size            n700_call_bx, .-n700_call_bx
                        .type            n701_call_proc_staged_bx, @function
n701_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_call_proc_staged_α:
                        mov              r11, 381
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_966_200
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_966_201
.Lcall_proc_staged_α_966_200:
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
.Lcall_proc_staged_α_966_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_966_202
                        mov              rax, qword ptr [rbp + 1600]
                        mov              rdx, qword ptr [rbp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_966_203
.Lcall_proc_staged_α_966_202:
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
.Lcall_proc_staged_α_966_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_966_204
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_966_205
.Lcall_proc_staged_α_966_204:
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
.Lcall_proc_staged_α_966_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_966_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_966_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_966_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_966_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_966_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_966_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_966_21
                        add              rsp, 32
.Lcall_proc_staged_α_966_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_966_2
.Lcall_proc_staged_α_966_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_966_2
.Lcall_proc_staged_α_966_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_966_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n661_call_proc_staged_β
.Lcall_proc_staged_α_966_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_966_29
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
.Lcall_proc_staged_α_966_29:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n702_var_ref_α
n701_call_proc_staged_β:
                        mov              r11, 381
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_966_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_966_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_966_22:
                                                                              jmp   n661_call_proc_staged_β
.Lcall_proc_staged_α_966_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n661_call_proc_staged_β
                                                                              jmp   n702_var_ref_α
.Lcall_proc_staged_α_966_0:
                        .quad            .Lcall_proc_staged_α_966_0_s
.Lcall_proc_staged_α_966_0_s:
                        .string          "sum/3"
                        .size            n701_call_proc_staged_bx, .-n701_call_proc_staged_bx
                        .type            n702_var_ref_bx, @function
n702_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6624]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n703_call_proc_staged_α
                        .size            n702_var_ref_bx, .-n702_var_ref_bx
                        .type            n703_call_proc_staged_bx, @function
n703_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        mov              r11, 383
                        mov              qword ptr [rbp + 624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_970_200
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_970_201
.Lcall_proc_staged_α_970_200:
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
.Lcall_proc_staged_α_970_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_970_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_970_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_970_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_970_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_970_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_970_3:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_970_21
                        add              rsp, 32
.Lcall_proc_staged_α_970_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_970_2
.Lcall_proc_staged_α_970_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_970_2
.Lcall_proc_staged_α_970_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_970_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n701_call_proc_staged_β
.Lcall_proc_staged_α_970_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_970_29
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
.Lcall_proc_staged_α_970_29:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n701_call_proc_staged_β
                                                                              jmp   n704_var_ref_α
n703_call_proc_staged_β:
                        mov              r11, 383
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_970_22
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_970_22
                        mov              rcx, qword ptr [rbp + 632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_970_22:
                                                                              jmp   n701_call_proc_staged_β
.Lcall_proc_staged_α_970_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    n701_call_proc_staged_β
                                                                              jmp   n704_var_ref_α
.Lcall_proc_staged_α_970_0:
                        .quad            .Lcall_proc_staged_α_970_0_s
.Lcall_proc_staged_α_970_0_s:
                        .string          "odd/1"
                        .size            n703_call_proc_staged_bx, .-n703_call_proc_staged_bx
                        .type            n704_var_ref_bx, @function
n704_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_var_ref_α:         mov              r11, 384
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6608]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n705_call_proc_staged_α
                        .size            n704_var_ref_bx, .-n704_var_ref_bx
                        .type            n705_call_proc_staged_bx, @function
n705_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_call_proc_staged_α:
                        mov              r11, 385
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_974_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_974_201
.Lcall_proc_staged_α_974_200:
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
.Lcall_proc_staged_α_974_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_974_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_974_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_974_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_974_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_974_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_974_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_974_21
                        add              rsp, 32
.Lcall_proc_staged_α_974_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_974_2
.Lcall_proc_staged_α_974_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_974_2
.Lcall_proc_staged_α_974_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_974_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n703_call_proc_staged_β
.Lcall_proc_staged_α_974_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_974_29
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
.Lcall_proc_staged_α_974_29:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n703_call_proc_staged_β
                                                                              jmp   n706_var_ref_α
n705_call_proc_staged_β:
                        mov              r11, 385
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_974_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_974_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_974_22:
                                                                              jmp   n703_call_proc_staged_β
.Lcall_proc_staged_α_974_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n703_call_proc_staged_β
                                                                              jmp   n706_var_ref_α
.Lcall_proc_staged_α_974_0:
                        .quad            .Lcall_proc_staged_α_974_0_s
.Lcall_proc_staged_α_974_0_s:
                        .string          "odd/1"
                        .size            n705_call_proc_staged_bx, .-n705_call_proc_staged_bx
                        .type            n706_var_ref_bx, @function
n706_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6592]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n707_call_proc_staged_α
                        .size            n706_var_ref_bx, .-n706_var_ref_bx
                        .type            n707_call_proc_staged_bx, @function
n707_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_call_proc_staged_α:
                        mov              r11, 387
                        mov              qword ptr [rbp + 464], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_978_200
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_978_201
.Lcall_proc_staged_α_978_200:
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
.Lcall_proc_staged_α_978_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_978_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_978_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_978_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_978_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_978_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_978_3:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_978_21
                        add              rsp, 32
.Lcall_proc_staged_α_978_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_978_2
.Lcall_proc_staged_α_978_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 464], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_978_2
.Lcall_proc_staged_α_978_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_978_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n705_call_proc_staged_β
.Lcall_proc_staged_α_978_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_978_29
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
.Lcall_proc_staged_α_978_29:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n705_call_proc_staged_β
                                                                              jmp   n708_var_ref_α
n707_call_proc_staged_β:
                        mov              r11, 387
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_978_22
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_978_22
                        mov              rcx, qword ptr [rbp + 472]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_978_22:
                                                                              jmp   n705_call_proc_staged_β
.Lcall_proc_staged_α_978_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n705_call_proc_staged_β
                                                                              jmp   n708_var_ref_α
.Lcall_proc_staged_α_978_0:
                        .quad            .Lcall_proc_staged_α_978_0_s
.Lcall_proc_staged_α_978_0_s:
                        .string          "even/1"
                        .size            n707_call_proc_staged_bx, .-n707_call_proc_staged_bx
                        .type            n708_var_ref_bx, @function
n708_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_var_ref_α:         mov              r11, 388
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6576]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n709_call_proc_staged_α
                        .size            n708_var_ref_bx, .-n708_var_ref_bx
                        .type            n709_call_proc_staged_bx, @function
n709_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_call_proc_staged_α:
                        mov              r11, 389
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_982_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_982_201
.Lcall_proc_staged_α_982_200:
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
.Lcall_proc_staged_α_982_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_982_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_982_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_982_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_982_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_982_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_982_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_982_21
                        add              rsp, 32
.Lcall_proc_staged_α_982_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_982_2
.Lcall_proc_staged_α_982_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_982_2
.Lcall_proc_staged_α_982_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_982_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n707_call_proc_staged_β
.Lcall_proc_staged_α_982_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_982_29
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
.Lcall_proc_staged_α_982_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n707_call_proc_staged_β
                                                                              jmp   n710_var_ref_α
n709_call_proc_staged_β:
                        mov              r11, 389
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_982_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_982_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_982_22:
                                                                              jmp   n707_call_proc_staged_β
.Lcall_proc_staged_α_982_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n707_call_proc_staged_β
                                                                              jmp   n710_var_ref_α
.Lcall_proc_staged_α_982_0:
                        .quad            .Lcall_proc_staged_α_982_0_s
.Lcall_proc_staged_α_982_0_s:
                        .string          "even/1"
                        .size            n709_call_proc_staged_bx, .-n709_call_proc_staged_bx
                        .type            n710_var_ref_bx, @function
n710_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_var_ref_α:         mov              r11, 390
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6560]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n711_call_proc_staged_α
                        .size            n710_var_ref_bx, .-n710_var_ref_bx
                        .type            n711_call_proc_staged_bx, @function
n711_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_call_proc_staged_α:
                        mov              r11, 391
                        mov              qword ptr [rbp + 304], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_986_200
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_986_201
.Lcall_proc_staged_α_986_200:
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
.Lcall_proc_staged_α_986_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_986_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_986_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_986_99
                        mov              r10, qword ptr [rbp + 6904]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_986_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_986_99
                        mov              rcx, qword ptr [rbp + 6920]
                        mov              rdx, qword ptr [rbp + 6928]
                        lea              rsp, [rbp + 6944]
                        mov              rbp, qword ptr [rbp + 6936];         jmp   rax
.Lcall_proc_staged_α_986_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_986_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_986_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_986_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_986_3:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_986_21
                        add              rsp, 32
.Lcall_proc_staged_α_986_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_986_2
.Lcall_proc_staged_α_986_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 304], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_986_2
.Lcall_proc_staged_α_986_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_986_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n709_call_proc_staged_β
.Lcall_proc_staged_α_986_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_986_29
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
.Lcall_proc_staged_α_986_29:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n709_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
n711_call_proc_staged_β:
                        mov              r11, 391
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_986_22
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_986_22
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_986_22:
                                                                              jmp   n709_call_proc_staged_β
.Lcall_proc_staged_α_986_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n709_call_proc_staged_β
                                                                              jmp   top$2F16_ret0
.Lcall_proc_staged_α_986_0:
                        .quad            .Lcall_proc_staged_α_986_0_s
.Lcall_proc_staged_α_986_0_s:
                        .string          "zero/1"
                        .size            n711_call_proc_staged_bx, .-n711_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
top$2F16_ret0:
                        lea              rax, [rip + n711_call_proc_staged_β]
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
                        .type            n987_var_ref_bx, @function
n987_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_var_ref_α:         mov              r11, 392
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n988_var_ref_α
                        .size            n987_var_ref_bx, .-n987_var_ref_bx
                        .type            n988_var_ref_bx, @function
n988_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_var_ref_α:         mov              r11, 393
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n989_var_ref_α
                        .size            n988_var_ref_bx, .-n988_var_ref_bx
                        .type            n989_var_ref_bx, @function
n989_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_var_ref_α:         mov              r11, 394
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n990_var_ref_α
                        .size            n989_var_ref_bx, .-n989_var_ref_bx
                        .type            n990_var_ref_bx, @function
n990_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_var_ref_α:         mov              r11, 395
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n991_var_ref_α
                        .size            n990_var_ref_bx, .-n990_var_ref_bx
                        .type            n991_var_ref_bx, @function
n991_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_var_ref_α:         mov              r11, 396
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n992_var_ref_α
                        .size            n991_var_ref_bx, .-n991_var_ref_bx
                        .type            n992_var_ref_bx, @function
n992_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_var_ref_α:         mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n993_var_ref_α
                        .size            n992_var_ref_bx, .-n992_var_ref_bx
                        .type            n993_var_ref_bx, @function
n993_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_var_ref_α:         mov              r11, 398
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx;         jmp   n994_var_ref_α
                        .size            n993_var_ref_bx, .-n993_var_ref_bx
                        .type            n994_var_ref_bx, @function
n994_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_var_ref_α:         mov              r11, 399
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n995_var_ref_α
                        .size            n994_var_ref_bx, .-n994_var_ref_bx
                        .type            n995_var_ref_bx, @function
n995_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_var_ref_α:         mov              r11, 400
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n996_var_ref_α
                        .size            n995_var_ref_bx, .-n995_var_ref_bx
                        .type            n996_var_ref_bx, @function
n996_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_var_ref_α:         mov              r11, 401
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n997_var_ref_α
                        .size            n996_var_ref_bx, .-n996_var_ref_bx
                        .type            n997_var_ref_bx, @function
n997_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_var_ref_α:         mov              r11, 402
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n998_var_ref_α
                        .size            n997_var_ref_bx, .-n997_var_ref_bx
                        .type            n998_var_ref_bx, @function
n998_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_var_ref_α:         mov              r11, 403
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n999_var_ref_α
                        .size            n998_var_ref_bx, .-n998_var_ref_bx
                        .type            n999_var_ref_bx, @function
n999_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_var_ref_α:         mov              r11, 404
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx;         jmp   n1000_var_ref_α
                        .size            n999_var_ref_bx, .-n999_var_ref_bx
                        .type            n1000_var_ref_bx, @function
n1000_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_ref_α:        mov              r11, 405
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n1001_var_ref_α
                        .size            n1000_var_ref_bx, .-n1000_var_ref_bx
                        .type            n1001_var_ref_bx, @function
n1001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_ref_α:        mov              r11, 406
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n1002_var_ref_α
                        .size            n1001_var_ref_bx, .-n1001_var_ref_bx
                        .type            n1002_var_ref_bx, @function
n1002_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_var_ref_α:        mov              r11, 407
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n1003_call_proc_staged_α
                        .size            n1002_var_ref_bx, .-n1002_var_ref_bx
                        .type            n1003_call_proc_staged_bx, @function
n1003_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_proc_staged_α:
                        mov              r11, 408
                        mov              qword ptr [rbp + 2160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_200
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1088_201
.Lcall_proc_staged_α_1088_200:
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
.Lcall_proc_staged_α_1088_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_202
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1088_203
.Lcall_proc_staged_α_1088_202:
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
.Lcall_proc_staged_α_1088_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_204
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1088_205
.Lcall_proc_staged_α_1088_204:
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
.Lcall_proc_staged_α_1088_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_206
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_1088_207
.Lcall_proc_staged_α_1088_206:
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
.Lcall_proc_staged_α_1088_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_208
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_1088_209
.Lcall_proc_staged_α_1088_208:
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
.Lcall_proc_staged_α_1088_209:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_210
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lcall_proc_staged_α_1088_211
.Lcall_proc_staged_α_1088_210:
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
.Lcall_proc_staged_α_1088_211:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_212
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lcall_proc_staged_α_1088_213
.Lcall_proc_staged_α_1088_212:
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
.Lcall_proc_staged_α_1088_213:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1088_214
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lcall_proc_staged_α_1088_215
.Lcall_proc_staged_α_1088_214:
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
.Lcall_proc_staged_α_1088_215:
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
                        lea              rax, [rip + .Lcall_proc_staged_α_1088_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1088_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1088_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1088_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1088_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1088_3:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1088_21
                        add              rsp, 32
.Lcall_proc_staged_α_1088_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1088_2
.Lcall_proc_staged_α_1088_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1088_2
.Lcall_proc_staged_α_1088_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1088_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1088_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1088_29
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
.Lcall_proc_staged_α_1088_29:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1004_lit_string_α
n1003_call_proc_staged_β:
                        mov              r11, 408
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1088_22
                        mov              rax, qword ptr [rbp + 2160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1088_22
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1088_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1088_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1004_lit_string_α
.Lcall_proc_staged_α_1088_0:
                        .quad            .Lcall_proc_staged_α_1088_0_s
.Lcall_proc_staged_α_1088_0_s:
                        .string          "top/16"
                        .size            n1003_call_proc_staged_bx, .-n1003_call_proc_staged_bx
                        .type            n1004_lit_string_bx, @function
n1004_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_lit_string_α:     mov              r11, 409
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1089_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n1005_var_ref_α
.Llit_string_α_1089_0:  .quad            .Llit_string_α_1089_0_s
.Llit_string_α_1089_0_s:
                        .string          "."
                        .size            n1004_lit_string_bx, .-n1004_lit_string_bx
                        .type            n1005_var_ref_bx, @function
n1005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_ref_α:        mov              r11, 410
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n1006_lit_string_α
                        .size            n1005_var_ref_bx, .-n1005_var_ref_bx
                        .type            n1006_lit_string_bx, @function
n1006_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_lit_string_α:     mov              r11, 411
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1092_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n1007_var_ref_α
.Llit_string_α_1092_0:  .quad            .Llit_string_α_1092_0_s
.Llit_string_α_1092_0_s:
                        .string          "."
                        .size            n1006_lit_string_bx, .-n1006_lit_string_bx
                        .type            n1007_var_ref_bx, @function
n1007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_ref_α:        mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n1008_lit_string_α
                        .size            n1007_var_ref_bx, .-n1007_var_ref_bx
                        .type            n1008_lit_string_bx, @function
n1008_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_lit_string_α:     mov              r11, 413
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1095_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n1009_var_ref_α
.Llit_string_α_1095_0:  .quad            .Llit_string_α_1095_0_s
.Llit_string_α_1095_0_s:
                        .string          "."
                        .size            n1008_lit_string_bx, .-n1008_lit_string_bx
                        .type            n1009_var_ref_bx, @function
n1009_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_var_ref_α:        mov              r11, 414
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n1010_lit_string_α
                        .size            n1009_var_ref_bx, .-n1009_var_ref_bx
                        .type            n1010_lit_string_bx, @function
n1010_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_lit_string_α:     mov              r11, 415
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1098_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n1011_var_ref_α
.Llit_string_α_1098_0:  .quad            .Llit_string_α_1098_0_s
.Llit_string_α_1098_0_s:
                        .string          "."
                        .size            n1010_lit_string_bx, .-n1010_lit_string_bx
                        .type            n1011_var_ref_bx, @function
n1011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_ref_α:        mov              r11, 416
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2640]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n1012_lit_string_α
                        .size            n1011_var_ref_bx, .-n1011_var_ref_bx
                        .type            n1012_lit_string_bx, @function
n1012_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_lit_string_α:     mov              r11, 417
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1101_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n1013_var_ref_α
.Llit_string_α_1101_0:  .quad            .Llit_string_α_1101_0_s
.Llit_string_α_1101_0_s:
                        .string          "."
                        .size            n1012_lit_string_bx, .-n1012_lit_string_bx
                        .type            n1013_var_ref_bx, @function
n1013_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_var_ref_α:        mov              r11, 418
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2624]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n1014_lit_string_α
                        .size            n1013_var_ref_bx, .-n1013_var_ref_bx
                        .type            n1014_lit_string_bx, @function
n1014_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_lit_string_α:     mov              r11, 419
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1104_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n1015_var_ref_α
.Llit_string_α_1104_0:  .quad            .Llit_string_α_1104_0_s
.Llit_string_α_1104_0_s:
                        .string          "."
                        .size            n1014_lit_string_bx, .-n1014_lit_string_bx
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 420
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n1016_lit_string_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_lit_string_bx, @function
n1016_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_lit_string_α:     mov              r11, 421
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1107_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n1017_var_ref_α
.Llit_string_α_1107_0:  .quad            .Llit_string_α_1107_0_s
.Llit_string_α_1107_0_s:
                        .string          "."
                        .size            n1016_lit_string_bx, .-n1016_lit_string_bx
                        .type            n1017_var_ref_bx, @function
n1017_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_var_ref_α:        mov              r11, 422
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2592]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n1018_lit_string_α
                        .size            n1017_var_ref_bx, .-n1017_var_ref_bx
                        .type            n1018_lit_string_bx, @function
n1018_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_lit_string_α:     mov              r11, 423
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1110_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n1019_var_ref_α
.Llit_string_α_1110_0:  .quad            .Llit_string_α_1110_0_s
.Llit_string_α_1110_0_s:
                        .string          "."
                        .size            n1018_lit_string_bx, .-n1018_lit_string_bx
                        .type            n1019_var_ref_bx, @function
n1019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_ref_α:        mov              r11, 424
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2576]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n1020_lit_string_α
                        .size            n1019_var_ref_bx, .-n1019_var_ref_bx
                        .type            n1020_lit_string_bx, @function
n1020_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1113_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n1021_var_ref_α
.Llit_string_α_1113_0:  .quad            .Llit_string_α_1113_0_s
.Llit_string_α_1113_0_s:
                        .string          "."
                        .size            n1020_lit_string_bx, .-n1020_lit_string_bx
                        .type            n1021_var_ref_bx, @function
n1021_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_ref_α:        mov              r11, 426
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2560]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n1022_lit_string_α
                        .size            n1021_var_ref_bx, .-n1021_var_ref_bx
                        .type            n1022_lit_string_bx, @function
n1022_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1116_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n1023_var_ref_α
.Llit_string_α_1116_0:  .quad            .Llit_string_α_1116_0_s
.Llit_string_α_1116_0_s:
                        .string          "."
                        .size            n1022_lit_string_bx, .-n1022_lit_string_bx
                        .type            n1023_var_ref_bx, @function
n1023_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_ref_α:        mov              r11, 428
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n1024_lit_string_α
                        .size            n1023_var_ref_bx, .-n1023_var_ref_bx
                        .type            n1024_lit_string_bx, @function
n1024_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_lit_string_α:     mov              r11, 429
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1119_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n1025_var_ref_α
.Llit_string_α_1119_0:  .quad            .Llit_string_α_1119_0_s
.Llit_string_α_1119_0_s:
                        .string          "."
                        .size            n1024_lit_string_bx, .-n1024_lit_string_bx
                        .type            n1025_var_ref_bx, @function
n1025_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_ref_α:        mov              r11, 430
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n1026_lit_string_α
                        .size            n1025_var_ref_bx, .-n1025_var_ref_bx
                        .type            n1026_lit_string_bx, @function
n1026_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_lit_string_α:     mov              r11, 431
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1122_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n1027_var_ref_α
.Llit_string_α_1122_0:  .quad            .Llit_string_α_1122_0_s
.Llit_string_α_1122_0_s:
                        .string          "."
                        .size            n1026_lit_string_bx, .-n1026_lit_string_bx
                        .type            n1027_var_ref_bx, @function
n1027_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1027_var_ref_α:        mov              r11, 432
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n1028_lit_string_α
                        .size            n1027_var_ref_bx, .-n1027_var_ref_bx
                        .type            n1028_lit_string_bx, @function
n1028_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1028_lit_string_α:     mov              r11, 433
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1125_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n1029_var_ref_α
.Llit_string_α_1125_0:  .quad            .Llit_string_α_1125_0_s
.Llit_string_α_1125_0_s:
                        .string          "."
                        .size            n1028_lit_string_bx, .-n1028_lit_string_bx
                        .type            n1029_var_ref_bx, @function
n1029_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1029_var_ref_α:        mov              r11, 434
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1030_lit_string_α
                        .size            n1029_var_ref_bx, .-n1029_var_ref_bx
                        .type            n1030_lit_string_bx, @function
n1030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1030_lit_string_α:     mov              r11, 435
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1128_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n1031_var_ref_α
.Llit_string_α_1128_0:  .quad            .Llit_string_α_1128_0_s
.Llit_string_α_1128_0_s:
                        .string          "."
                        .size            n1030_lit_string_bx, .-n1030_lit_string_bx
                        .type            n1031_var_ref_bx, @function
n1031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1031_var_ref_α:        mov              r11, 436
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n1032_lit_string_α
                        .size            n1031_var_ref_bx, .-n1031_var_ref_bx
                        .type            n1032_lit_string_bx, @function
n1032_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1032_lit_string_α:     mov              r11, 437
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1131_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1033_var_ref_α
.Llit_string_α_1131_0:  .quad            .Llit_string_α_1131_0_s
.Llit_string_α_1131_0_s:
                        .string          "."
                        .size            n1032_lit_string_bx, .-n1032_lit_string_bx
                        .type            n1033_var_ref_bx, @function
n1033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_ref_α:        mov              r11, 438
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1034_lit_string_α
                        .size            n1033_var_ref_bx, .-n1033_var_ref_bx
                        .type            n1034_lit_string_bx, @function
n1034_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:     mov              r11, 439
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1134_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n1035_var_ref_α
.Llit_string_α_1134_0:  .quad            .Llit_string_α_1134_0_s
.Llit_string_α_1134_0_s:
                        .string          "."
                        .size            n1034_lit_string_bx, .-n1034_lit_string_bx
                        .type            n1035_var_ref_bx, @function
n1035_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_ref_α:        mov              r11, 440
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2448]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1036_lit_string_α
                        .size            n1035_var_ref_bx, .-n1035_var_ref_bx
                        .type            n1036_lit_string_bx, @function
n1036_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1036_lit_string_α:     mov              r11, 441
                        mov              qword ptr [rbp + 80], 2              # result
                        mov              dword ptr [rbp + 84], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1137_0]
                        mov              qword ptr [rbp + 88], rax;           jmp   n1037_call_α
.Llit_string_α_1137_0:  .quad            .Llit_string_α_1137_0_s
.Llit_string_α_1137_0_s:
                        .string          "[]"
                        .size            n1036_lit_string_bx, .-n1036_lit_string_bx
                        .type            n1037_call_bx, @function
n1037_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1037_call_α:           mov              r11, 442
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
                                                                              jmp   n1038_call_α
n1037_call_β:           mov              r11, 442;                            jmp   main$2F0_ω
                        .size            n1037_call_bx, .-n1037_call_bx
                        .type            n1038_call_bx, @function
n1038_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1038_call_α:           mov              r11, 443
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
                                                                              jmp   n1039_call_α
n1038_call_β:           mov              r11, 443;                            jmp   main$2F0_ω
                        .size            n1038_call_bx, .-n1038_call_bx
                        .type            n1039_call_bx, @function
n1039_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1039_call_α:           mov              r11, 444
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
                                                                              jmp   n1040_call_α
n1039_call_β:           mov              r11, 444;                            jmp   main$2F0_ω
                        .size            n1039_call_bx, .-n1039_call_bx
                        .type            n1040_call_bx, @function
n1040_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1040_call_α:           mov              r11, 445
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
                                                                              jmp   n1041_call_α
n1040_call_β:           mov              r11, 445;                            jmp   main$2F0_ω
                        .size            n1040_call_bx, .-n1040_call_bx
                        .type            n1041_call_bx, @function
n1041_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1041_call_α:           mov              r11, 446
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
                                                                              jmp   n1042_call_α
n1041_call_β:           mov              r11, 446;                            jmp   main$2F0_ω
                        .size            n1041_call_bx, .-n1041_call_bx
                        .type            n1042_call_bx, @function
n1042_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_α:           mov              r11, 447
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
                                                                              jmp   n1043_call_α
n1042_call_β:           mov              r11, 447;                            jmp   main$2F0_ω
                        .size            n1042_call_bx, .-n1042_call_bx
                        .type            n1043_call_bx, @function
n1043_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1043_call_α:           mov              r11, 448
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
                                                                              jmp   n1044_call_α
n1043_call_β:           mov              r11, 448;                            jmp   main$2F0_ω
                        .size            n1043_call_bx, .-n1043_call_bx
                        .type            n1044_call_bx, @function
n1044_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1044_call_α:           mov              r11, 449
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
                                                                              jmp   n1045_call_α
n1044_call_β:           mov              r11, 449;                            jmp   main$2F0_ω
                        .size            n1044_call_bx, .-n1044_call_bx
                        .type            n1045_call_bx, @function
n1045_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1045_call_α:           mov              r11, 450
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
                                                                              jmp   n1046_call_α
n1045_call_β:           mov              r11, 450;                            jmp   main$2F0_ω
                        .size            n1045_call_bx, .-n1045_call_bx
                        .type            n1046_call_bx, @function
n1046_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1046_call_α:           mov              r11, 451
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
                                                                              jmp   n1047_call_α
n1046_call_β:           mov              r11, 451;                            jmp   main$2F0_ω
                        .size            n1046_call_bx, .-n1046_call_bx
                        .type            n1047_call_bx, @function
n1047_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1047_call_α:           mov              r11, 452
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
                                                                              jmp   n1048_call_α
n1047_call_β:           mov              r11, 452;                            jmp   main$2F0_ω
                        .size            n1047_call_bx, .-n1047_call_bx
                        .type            n1048_call_bx, @function
n1048_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1048_call_α:           mov              r11, 453
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
                                                                              jmp   n1049_call_α
n1048_call_β:           mov              r11, 453;                            jmp   main$2F0_ω
                        .size            n1048_call_bx, .-n1048_call_bx
                        .type            n1049_call_bx, @function
n1049_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1049_call_α:           mov              r11, 454
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
                                                                              jmp   n1050_call_α
n1049_call_β:           mov              r11, 454;                            jmp   main$2F0_ω
                        .size            n1049_call_bx, .-n1049_call_bx
                        .type            n1050_call_bx, @function
n1050_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1050_call_α:           mov              r11, 455
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
                                                                              jmp   n1051_call_α
n1050_call_β:           mov              r11, 455;                            jmp   main$2F0_ω
                        .size            n1050_call_bx, .-n1050_call_bx
                        .type            n1051_call_bx, @function
n1051_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1051_call_α:           mov              r11, 456
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
                                                                              jmp   n1052_call_α
n1051_call_β:           mov              r11, 456;                            jmp   main$2F0_ω
                        .size            n1051_call_bx, .-n1051_call_bx
                        .type            n1052_call_bx, @function
n1052_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1052_call_α:           mov              r11, 457
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
                                                                              jmp   n1053_call_α
n1052_call_β:           mov              r11, 457;                            jmp   main$2F0_step
                        .size            n1052_call_bx, .-n1052_call_bx
                        .type            n1053_call_bx, @function
n1053_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1053_call_α:           mov              r11, 458
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
                        cmp              al, 104;                             je    n1003_call_proc_staged_β
                                                                              jmp   n1054_call_α
n1053_call_β:           mov              r11, 458;                            jmp   n1003_call_proc_staged_β
                        .size            n1053_call_bx, .-n1053_call_bx
                        .type            n1054_call_bx, @function
n1054_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_α:           mov              r11, 459
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
                        cmp              al, 104;                             je    n1003_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1054_call_β:           mov              r11, 459;                            jmp   n1003_call_proc_staged_β
                        .size            n1054_call_bx, .-n1054_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n1003_call_proc_staged_β]
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
                        .type            n1156_var_ref_bx, @function
n1156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1156_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1157_lit_integer_α
                        .size            n1156_var_ref_bx, .-n1156_var_ref_bx
                        .type            n1157_lit_integer_bx, @function
n1157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1157_lit_integer_α:    mov              r11, 461
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1170_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1158_call_α
.Llit_integer_α_1170_0: .quad            2
                        .size            n1157_lit_integer_bx, .-n1157_lit_integer_bx
                        .type            n1158_call_bx, @function
n1158_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1158_call_α:           mov              r11, 462
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
n1158_call_β:           mov              r11, 462;                            jmp   lefteven$2F1_step
                        .size            n1158_call_bx, .-n1158_call_bx
                        .type            n1159_var_ref_bx, @function
n1159_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1159_var_ref_α:        mov              r11, 463
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1160_lit_integer_α
                        .size            n1159_var_ref_bx, .-n1159_var_ref_bx
                        .type            n1160_lit_integer_bx, @function
n1160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1160_lit_integer_α:    mov              r11, 464
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1174_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n1161_call_α
.Llit_integer_α_1174_0: .quad            4
                        .size            n1160_lit_integer_bx, .-n1160_lit_integer_bx
                        .type            n1161_call_bx, @function
n1161_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1161_call_α:           mov              r11, 465
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
n1161_call_β:           mov              r11, 465;                            jmp   lefteven$2F1_step
                        .size            n1161_call_bx, .-n1161_call_bx
                        .type            n1162_var_ref_bx, @function
n1162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1162_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1163_lit_integer_α
                        .size            n1162_var_ref_bx, .-n1162_var_ref_bx
                        .type            n1163_lit_integer_bx, @function
n1163_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1163_lit_integer_α:    mov              r11, 467
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1178_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1164_call_α
.Llit_integer_α_1178_0: .quad            6
                        .size            n1163_lit_integer_bx, .-n1163_lit_integer_bx
                        .type            n1164_call_bx, @function
n1164_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1164_call_α:           mov              r11, 468
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
n1164_call_β:           mov              r11, 468;                            jmp   lefteven$2F1_step
                        .size            n1164_call_bx, .-n1164_call_bx
                        .type            n1165_var_ref_bx, @function
n1165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1165_var_ref_α:        mov              r11, 469
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n1166_lit_integer_α
                        .size            n1165_var_ref_bx, .-n1165_var_ref_bx
                        .type            n1166_lit_integer_bx, @function
n1166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1166_lit_integer_α:    mov              r11, 470
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1182_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1167_call_α
.Llit_integer_α_1182_0: .quad            8
                        .size            n1166_lit_integer_bx, .-n1166_lit_integer_bx
                        .type            n1167_call_bx, @function
n1167_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1167_call_α:           mov              r11, 471
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
n1167_call_β:           mov              r11, 471;                            jmp   lefteven$2F1_step
                        .size            n1167_call_bx, .-n1167_call_bx
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
                                                                              jmp   n1159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt2:
                        lea              rax, [rip + lefteven$2F1_alt3]
                        mov              qword ptr [rbp + 440], rax
                                                                              jmp   n1162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
lefteven$2F1_alt3:
                        xor              eax, eax
                        mov              qword ptr [rbp + 440], rax
                        mov              r13, qword ptr [rbp + 456]
                                                                              jmp   n1165_var_ref_α
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
                        .type            n1184_var_ref_bx, @function
n1184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1184_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n1185_lit_string_α
                        .size            n1184_var_ref_bx, .-n1184_var_ref_bx
                        .type            n1185_lit_string_bx, @function
n1185_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1185_lit_string_α:     mov              r11, 473
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1197_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n1186_call_α
.Llit_string_α_1197_0:  .quad            .Llit_string_α_1197_0_s
.Llit_string_α_1197_0_s:
                        .string          "[]"
                        .size            n1185_lit_string_bx, .-n1185_lit_string_bx
                        .type            n1186_call_bx, @function
n1186_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1186_call_α:           mov              r11, 474
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              rsi, qword ptr [rip + .Lcall_α_1198_2]
                                                                              jmp   .Lcall_α_1198_3
.Lcall_α_1198_2:        .quad            .Lcall_α_1198_2_s
.Lcall_α_1198_2_s:      .string          "[]"
.Lcall_α_1198_3:        mov              qword ptr [rip + rtccb+40], r8
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
n1186_call_β:           mov              r11, 474;                            jmp   zero$2F1_step
                        .size            n1186_call_bx, .-n1186_call_bx
                        .type            n1187_var_ref_bx, @function
n1187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1187_var_ref_α:        mov              r11, 475
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n1188_lit_string_α
                        .size            n1187_var_ref_bx, .-n1187_var_ref_bx
                        .type            n1188_lit_string_bx, @function
n1188_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1188_lit_string_α:     mov              r11, 476
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1201_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n1189_lit_integer_α
.Llit_string_α_1201_0:  .quad            .Llit_string_α_1201_0_s
.Llit_string_α_1201_0_s:
                        .string          "."
                        .size            n1188_lit_string_bx, .-n1188_lit_string_bx
                        .type            n1189_lit_integer_bx, @function
n1189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1189_lit_integer_α:    mov              r11, 477
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1202_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n1190_var_ref_α
.Llit_integer_α_1202_0: .quad            0
                        .size            n1189_lit_integer_bx, .-n1189_lit_integer_bx
                        .type            n1190_var_ref_bx, @function
n1190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1190_var_ref_α:        mov              r11, 478
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n1191_call_α
                        .size            n1190_var_ref_bx, .-n1190_var_ref_bx
                        .type            n1191_call_bx, @function
n1191_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1191_call_α:           mov              r11, 479
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
                                                                              jmp   n1192_call_α
n1191_call_β:           mov              r11, 479;                            jmp   zero$2F1_step
                        .size            n1191_call_bx, .-n1191_call_bx
                        .type            n1192_call_bx, @function
n1192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1192_call_α:           mov              r11, 480
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
                                                                              jmp   n1193_var_ref_α
n1192_call_β:           mov              r11, 480;                            jmp   zero$2F1_step
                        .size            n1192_call_bx, .-n1192_call_bx
                        .type            n1193_var_ref_bx, @function
n1193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1193_var_ref_α:        mov              r11, 481
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n1194_call_proc_staged_α
                        .size            n1193_var_ref_bx, .-n1193_var_ref_bx
                        .type            n1194_call_proc_staged_bx, @function
n1194_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1194_call_proc_staged_α:
                        mov              r11, 482
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1210_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1210_201
.Lcall_proc_staged_α_1210_200:
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
.Lcall_proc_staged_α_1210_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1210_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1210_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_1210_99
                        mov              r10, qword ptr [rbp + 472]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_1210_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_1210_99
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rax
.Lcall_proc_staged_α_1210_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1210_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1210_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1210_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1210_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1210_21
                        add              rsp, 32
.Lcall_proc_staged_α_1210_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1210_2
.Lcall_proc_staged_α_1210_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1210_2
.Lcall_proc_staged_α_1210_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1210_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   zero$2F1_step
.Lcall_proc_staged_α_1210_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1210_29
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
.Lcall_proc_staged_α_1210_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
n1194_call_proc_staged_β:
                        mov              r11, 482
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1210_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1210_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1210_22:
                                                                              jmp   zero$2F1_step
.Lcall_proc_staged_α_1210_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    zero$2F1_step
                                                                              jmp   zero$2F1_ret1
.Lcall_proc_staged_α_1210_0:
                        .quad            .Lcall_proc_staged_α_1210_0_s
.Lcall_proc_staged_α_1210_0_s:
                        .string          "zero/1"
                        .size            n1194_call_proc_staged_bx, .-n1194_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
zero$2F1_ret1:
                        lea              rax, [rip + n1194_call_proc_staged_β]
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
                                                                              jmp   n1187_var_ref_α
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
                        .type            n1211_call_proc_staged_bx, @function
n1211_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1211_call_proc_staged_α:
                        mov              r11, 483
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1213_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1213_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1213_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1213_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1213_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1213_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1213_21
                        add              rsp, 32
.Lcall_proc_staged_α_1213_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1213_2
.Lcall_proc_staged_α_1213_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1213_2
.Lcall_proc_staged_α_1213_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1213_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1213_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1213_29
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
.Lcall_proc_staged_α_1213_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1211_call_proc_staged_β:
                        mov              r11, 483
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1213_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1213_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1213_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1213_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1213_0:
                        .quad            .Lcall_proc_staged_α_1213_0_s
.Lcall_proc_staged_α_1213_0_s:
                        .string          "main/0"
                        .size            n1211_call_proc_staged_bx, .-n1211_call_proc_staged_bx
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
                        .long            3120
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
                        .long            2928
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
